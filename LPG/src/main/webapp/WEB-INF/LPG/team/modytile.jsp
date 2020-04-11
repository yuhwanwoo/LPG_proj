<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Solid - Bootstrap Business Template</title>
  <style type="text/css">
  	.tbutton{
  		width: 100%;
  		height: 50px;
  		background-color: #FC8104;
  		color: white;
  		font-size: 20pt;
  	}
  </style>

</head>
<body>
<% TeamDTO list = (TeamDTO)request.getAttribute("teaminfo");%>
<script type="text/javascript">
	$(document).ready(function() {
		
		
		teamLocation = "<%= list.getTeamLocation()%>"
		teamAge = "<%= list.getTeamAge()%>"
		teamPre = "<%= list.getTeamPre()%>"
		teamGender = "<%= list.getTeamGender()%>"
		teamStrategy = "<%= list.getTeamStrategy()%>"
		teamAbility = "<%= list.getTeamAbility()%>"
		memberPrivate = "<%= list.getMemberPrivate()%>"
			$("#teamLocation").val(teamLocation).attr("selected","selected") 
			$("#teamAge").val(teamAge).attr("selected","selected") 
			$("#teamPre").val(teamPre).attr("selected","selected") 
			$("#teamGender").val(teamGender).attr("selected","selected") 
			$("#teamStrategy").val(teamStrategy).attr("selected","selected")
			$("input:checkbox[name='teamAbility']:input[value='"+teamAbility+"']").attr("checked",true);
			$("input:radio[name='memberPrivate']:input[value='"+memberPrivate+"']").attr("checked",true);

			
	})
</script>

  <div class="container mtb">
    <div class="row">
      <div class="col-lg-12">
        <form class="form-horizontal style-form" action="/LPG/team/teammody.do" method="post" enctype="multipart/form-data">
        	<input type="hidden" name="teamNo" value="<%=list.getTeamNo()  %>">
            <div class="form-group">
	            <div class="row">
	            	<div class="col-sm-2" ><h4>팀명</h4></div>
		            <div class="col-lg-7">
		            	<input type="text" name="teamName" class="form-control" id="teamName" disabled="disabled" placeholder="<%= list.getTeamName() %>">
		            </div>
	            </div>
            </div>
            <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>팀 지역</h4></div>
				<div class="col-lg-7">
					<select class="form-control" name="teamLocation" id="teamLocation">
								<option value="강서구">강서구</option>
								<option value="강동구">강동구</option>
								<option value="강남구">강남구</option>
								<option value="성북구">성북구</option>
								<option value="중구">중구</option>
								<option value="은평구">은평구</option>
								<option value="금천구">금천구</option>
								<option value="광친구">광친구</option>
								<option value="서대문구">서대문구</option>
								<option value="중랑구">중랑구</option>
								<option value="강북구">강북구</option>
								<option value="관악구">관악구</option>
								<option value="구로구">구로구</option>
								<option value="영등포구">영등포구</option>
								<option value="마포구">마포구</option>
								<option value="종로구">종로구</option>
								<option value="도봉구">도봉구</option>
								<option value="용산구">용산구</option>
								<option value="동작구">동작구</option>
								<option value="서초구">서초구</option>
								<option value="송파구">송파구</option>
								<option value="노원구">노원구</option>
								<option value="성동구">성동구</option>
								<option value="양천구">양천구</option>
								<option value="동대문구">동대문구</option>
							</select>
					</div>
				</div>
			</div>
            <div class="form-group">
            	<div class="row">
            	<div class="col-sm-2" ><h4>연령 제한</h4></div>
               		<div class="col-lg-7">
              		     <select class="form-control" name="teamAge" id="teamAge">
					              	<option value="0" selected="selected">제한 없음</option>
									<option value="10">10대</option>
									<option value="20">20대</option>
									<option value="30">30대</option>
									<option value="40">40대</option>
									<option value="50">50대이상</option>
				              </select>               
             		</div>		           
              	</div>
            </div>
             <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>소속 유형</h4></div>
					<div class="col-lg-7">
						<select class="form-control" name="teamGender" id="teamGender">
					        <option value="0" selected="selected">남성</option>
							<option value="1">혼성</option>
							<option value="2">여성</option>
				        </select>
					</div>
				</div>
			</div>
			
			 <div class="form-group">
				<div class="row">
					<div class="col-sm-2" ><h4>주 경기 유형</h4></div>
					<div class="col-lg-7">
						<select class="form-control" name="teamPre" id="teamPre">
						        <option value="축구" selected="selected">축구</option>
								<option value="풋살">풋살</option>
					        </select>
			        </div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col-sm-2" ><h4>주 전술</h4></div>
					<div class="col-lg-7">
						<select class="form-control" name="teamStrategy" id="teamStrategy">
							<option value="000" selected="selected">선택하기</option>
							<option value="541">5-4-1</option>
							<option value="532">5-3-2</option>
							<option value="451">4-5-1</option>
							<option value="442">4-4-2</option>
							<option value="433">4-3-3</option>
							<option value="361">3-6-1</option>
							<option value="352">3-5-2</option>
							<option value="343">3-4-3</option>
				        </select>
			        </div>
				</div>
			</div>
			<div class="form-group">
            	<div class="row">
	            	<div class="col-sm-2" ><h4>팀 실력</h4></div>
	               	<div class="col-lg-7" style="position: relative; top: 8px" id="teamAbility">
		              	<input type="checkbox" name="teamAbility" value="상" style="margin-left: 2%" id="checkbox-1-1"><label for="checkbox-1-1">상</label>
			            <input type="checkbox" name="teamAbility" value="중" style="margin-left: 15%" id="checkbox-1-2"><label for="checkbox-1-2">중</label>
			            <input type="checkbox" name="teamAbility" value="하" style="margin-left: 15%" id="checkbox-1-3"><label for="checkbox-1-3">하</label>
	             	</div>		           
              	</div>
            </div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2"><h4>활동구장</h4></div>
				<div class="col-lg-7">
					<a href="/LPG/ground/map/main.do" class="btn btn-theme">구장 검색</a>
				</div>
				</div>
			</div>
			<div class="form-group">
	            <div class="row">
	            	<div class="col-sm-2" ><h4>유니폼 색상</h4></div>
		            <div class="col-lg-7">
		            	<input type="text" name="teamUniform" class="form-control" id="teamUniform" placeholder="유니폼 색상을 입력해주세요" value="<%= list.getTeamUniform()%>">
		            </div>
	            </div>
            </div>
            
            <div class="form-group">
           	  <div class="row">
				<div class="col-sm-2"><h4>팀 소개글</h4></div>
				<div class="col-lg-7">
              <textarea class="form-control" name="teamIntroduce" id="teamIntroduce" placeholder="팀 소개글을 입력해주세요" rows="3"><%= list.getTeamIntroduce()%></textarea>
              </div>
            </div>
            </div>
            
            <div class="form-group">
           	  <div class="row">
				<div class="col-sm-2"><h4>팀 매너</h4></div>
				<div class="col-lg-7">
		            <input type="text" name=teamManner class="form-control" id="teamManner" placeholder="팀 매너를 입력해주세요" value="<%= list.getTeamManner()%>">
		        </div>
            </div>
            </div>
            
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2"><h4>팀 앰블럼</h4></div>
				<div class="col-lg-7">
					<input type="file" name="upFile" id="upFile" >
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col-sm-2" ><h4>팀원 정보 공개여부</h4></div>
					<div class="col-lg-7" style="position: relative; top: 8px" id="memberPrivate">
						<input type="radio" name="memberPrivate" id="checkbox-info-1" value="0" style="margin-left: 2%">
				 		<label for="checkbox-info-1">공개</label>
				 		<input type="radio" name="memberPrivate" id="checkbox-info-2" value="1" style="margin-left: 10%">
				 		<label for="checkbox-info-2">비공개</label>
			 		</div>
				</div>
			</div>
            <div class="form-group">
	            <div class="row">
		            <div class="col-lg-9">
		            	<button type="submit" class="tbutton">수정하기</button>
	            	</div>
	            </div>
            </div>

          </form>
      </div>
    </div>
  </div>

</body>
</html>