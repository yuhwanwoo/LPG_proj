<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	  	.tbutton{
	  		width: 100%;
	  		height: 50px;
	  		background-color: #FC8104;
	  		color: white;
	  		font-size: 20pt;
	  	}
	  </style>
	  
	  <script>
    
	    // 입력을 제한 할 특수문자의 정규식
	    var replaceId  = /[<>(){}\[\]!@#$%^&*]/gi;
	    
	    $(document).ready(function(){
	        
	       setInterval(function() {
    		   	<%System.out.println("work");%>
	    	   <% if(session.getAttribute("grdName")!=null){ 
					String grdName = (String)session.getAttribute("grdName");
	    		   	System.out.println("grdName"+grdName);
					%>
					$("#grdName").text(<%=grdName%>);
				<%
				session.removeAttribute("grdName");
				}%>
	       }, 1000);
	    	
	    	$("#teamname").on("focusout", function() {
	            var x = $(this).val();
	            if (x.length > 0) {
	                if (x.match(replaceId)) {
	                   x = x.replace(replaceId, "");
	                }
	                $(this).val(x);
	            }
	        }).on("keyup", function() {
	            $(this).val($(this).val().replace(replaceId, ""));
	
	        });
	        
	
	    });
	 
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#teamName").on("keyup",function(){
				$.get("/LPG/team/idCheck.do",
						{"teamName":$("#teamName").val()},
						function(data){
							$("#checkVal").text(data);
						},
						"text")
			})
		})
	</script>
	
	
</head>
<body>
	<% UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
	   UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");   %>
	<div class="container mtb">
	    <div class="row">
	      <div class="col-lg-12">
	        <form class="form-horizontal style-form"  action="/LPG/team/create.do" method="POST">
	        	 <input type="hidden" id="sportsNo" name="sportsNo" value="<%= userSprots.getSportsNo() %>">
		         <div class="form-group">
		            <div class="row">
		            	<div class="col-sm-2" ></div>
		            	<div class="col-lg-6">
		            		<span style="color: red; font-size: 7pt; position: relative; top: 14px;" id="specban">특수문자 입력 불가</span>
		            	</div>
		            </div>
	           	</div>
	            <div class="form-group">
	            	<div class="row">
	            	<div class="col-sm-2" ><h4>팀명</h4></div>
	               <div class="col-lg-4">
	              		<input type="text" name="teamName" class="form-control" id="teamName" placeholder="팀명을 입력해주세요" minlength="2" maxlength="5">
	             	</div>
	             	<div class="col-lg-4">
	             	<span id="checkVal" style="color: red; position: relative;top: 5px"></span>
	             	</div>
	              	</div>
	            </div>
	            <div class="form-group">
					<div class="row">
					<div class="col-sm-2" ><h4>팀 지역</h4></div>
					<div class="col-lg-7">
						<select class="form-control" name="teamLocation">
		            			<option value="지역선택">지역선택</option>
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
	              		     <select class="form-control" name="teamAge">
		              				<option value="100">연령대선택</option>
					              	<option value="0">제한 없음</option>
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
							<select class="form-control" name="teamGender">
		              			<option value="3">성별선택</option>
					            <option value="0">남성</option>
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
							<select class="form-control" name="teamPre">
						        <option value="축구">축구</option>
								<option value="풋살">풋살</option>
					        </select>
				        </div>
					</div>
				</div>
				
				<div class="form-group">
	            	<div class="row">
		            	<div class="col-sm-2" ><h4>팀 실력</h4></div>
		               	<div class="col-lg-7" style="position: relative; top: 8px">
			              	<input type="checkbox" name="teamAbility" value="상" id="checkbox-1-1"><label for="checkbox-1-1">상</label>
				            <input type="checkbox" name="teamAbility" value="중" style="margin-left: 15%" id="checkbox-1-2"><label for="checkbox-1-2">중</label>
				            <input type="checkbox" name="teamAbility" value="하" style="margin-left: 15%" id="checkbox-1-3"><label for="checkbox-1-3">하</label>
		             	</div>		           
	              	</div>
	            </div>
				<div class="form-group">
					<div class="row">
					<div class="col-sm-2"><h4>활동구장</h4></div>
					<div class="col-lg-7">
						<span id = "grdName"></span>
						<a href="/LPG/ground/map/main.do?page=1" target="_blank" class="btn btn-theme">구장 검색</a>
					</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<div class="col-sm-2" ><h4>팀원 정보 공개여부</h4></div>
						<div class="col-lg-7" style="position: relative; top: 8px">
							<input type="radio" name="memberPrivate" id="checkbox-info-1" value="0">
					 		<label for="checkbox-info-1">공개</label>
					 		<input type="radio" name="memberPrivate" id="checkbox-info-2" value="1" style="margin-left: 10%">
					 		<label for="checkbox-info-2">비공개</label>
				 		</div>
					</div>
				</div>
	            <div class="form-group">
		            <div class="row">
			            <div class="col-lg-9">
			            	<input type="submit" class="tbutton" value="팀 생성하기">
		            	</div>
		            </div>
	            </div>
				
	          </form>
	      </div>
	    </div>
  	</div>
  	<script type="text/javascript">
  	
  	
  </script>
</body>
</html>