<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link href="/LPG/css/radio.css" rel="stylesheet">
</head>
 <body>
  <% UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
	   UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");
	   TeamMemberDTO teamNoSearch = (TeamMemberDTO)request.getAttribute("teamNoSearch");
	   %>
  <div class="container mtb">
    <div class="row">
      <div class="col-sm-8">
        <h4>청산별곡 Ver.2</h4>
        <div class="hline"></div>
        <p>살어리 살어리랐다 청산에 살어리랐다</p>
        <form class="form-horizontal style-from" action="/LPG/match/matchResist.do" method="POST">
			<input type="hidden" name="sportsNo" value="<%= userSprots.getSportsNo() %>">
			<% if( !teamNoSearch.getTeamNo().equals("0")){ %>
			<input type="hidden" id="teamNo" name="teamNo" value="<%= teamNoSearch.getTeamNo() %>">
			<% }%>
            <div class="form-group">
            	<div class="row">
            	<div class="col-sm-2" ><h4>매치제목:</h4></div>
               <div class="col-sm-7">
              		<input style="width:100%" type="text" name="mchName" class="form-control" placeholder="매치 제목"  >
              		                       
             	</div>
             		<div class="row">
			              <div class="col-sm-2">
			              	<input type="radio" style="width: 10px" class="radio" id="mchUrgent0" name="mchUrgent" value="0"> 
								<label for="mchUrgent0">긴급</label>
							<input type="radio"	style="width: 10px" class="radio" id="mchUrgent1" name="mchUrgent" value="1">
								<label for="mchUrgent1">일반</label>
			              </div>
	              </div>		           
              	</div>
            </div>
            
            <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>매치타입:</h4></div>
					<input type="radio" class="radio" name="mchType" id="mchType0" value="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<label for="mchType0">팀매치</label>
					<input type="radio" class="radio" name="mchType" id="mchType1" value="1">
						<label for="mchType1">개인매치</label>
				</div>
			</div>
             <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>경기일시</h4></div>
					<div class="col-sm-7">
						<input style="width:100%" type="date" name="mchDate" class="form-control"  placeholder="경기일시"  >
					</div>
					 <div class="col-sm-1">
						<select name="mchDateStart" style="margin-top: 10px">
							<option value="0">0시</option>
							<option value="1">1시</option>
							<option value="2">2시</option>
							<option value="3">3시</option>
							<option value="4">4시</option>
							<option value="5">5시</option>
							<option value="6">6시</option>
							<option value="7">7시</option>
							<option value="8">8시</option>
							<option value="9">9시</option>
							<option value="10">10시</option>
							<option value="11">11시</option>
							<option value="12">12시</option>
							<option value="13">13시</option>
							<option value="14">14시</option>
							<option value="15">15시</option>
							<option value="16">16시</option>
							<option value="17">17시</option>
							<option value="18">18시</option>
							<option value="19">19시</option>
							<option value="20">20시</option>
							<option value="21">21시</option>
							<option value="22">22시</option>
							<option value="23">23시</option>
							<option value="24">24시</option>
						</select>
					</div>
					<div class="col-sm-1">
						<select name="mchDateEnd" style="margin-top: 10px">
							<option value="0">0분</option>
							<option value="10">10분</option>
							<option value="20">20분</option>
							<option value="30">30분</option>
							<option value="40">40분</option>
							<option value="50">50분</option>
						</select>
					</div>
				</div> 
			</div>
			
			 <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>경기타입:</h4></div>
					<select style="margin-top: 10px" name="mchPlay">
					<option value="4vs4 풋살">4vs4 풋살
					<option value="5vs5 풋살">5vs5 풋살
					<option value="6vs6 풋살">6vs6 풋살
					<option value="7vs7 풋살">7vs7 풋살
					<option value="8vs8 풋살">8vs8 풋살
					<option value="9vs9 축구">9vs9 축구
					<option value="11vs11 축구">11vs11 축구
				</select>
				</div>
			</div>
			
			<div class="form-group">
            	<div class="row">
            	<div class="col-sm-2" ><h4>구장:</h4></div>
               <div class="col-sm-7">
              		<input type="text" class="form-control" disabled="disabled">
             	</div>
	              <div class="col-sm-2">
	              	<button type="button" id="search" class="btn btn-theme">구장 검색</button>
	              </div>
	              <div class="col-sm-1">
	              	<button type="button" id="reserve" class="btn btn-theme">예약하기</button>
	              </div>		           
              	</div>
            </div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2"><h4>참가비</h4></div>
				<div class="col-sm-7"><input type="number" name="mchPrice" class="form-control" placeholder="참가비"></div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>매치성별:</h4></div>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchGender0" name="mchGender" value="0"> &nbsp;&nbsp;&nbsp;&nbsp;
						<label for="mchGender0">남성매치</label>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchGender1" name="mchGender" value="1">
						<label for="mchGender1">여성매치</label> 
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchGender2" name="mchGender" value="2">
						<label for="mchGender2">혼성매치</label>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>실력:</h4></div>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchAbil0" name="mchAbil" value="상"> 
						<label for="mchAbil0">상</label>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchAbil1" name="mchAbil" value="중">
						<label for="mchAbil1">중</label> 
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchAbil2" name="mchAbil" value="하">
						<label for="mchAbil2">하</label>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>슈즈:</h4></div>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchShoes0" name="mchShoes" value="1">
						<label for="mchShoes0">풋살화</label>
					<input style="margin-top: 10px" type="radio" class="radiodiv" id="mchShoes1" name="mchShoes" value="2">
						<label for="mchShoes1">축구화</label>
				</div>
			</div>
           

            <div class="form-group">
            <h4>내용</h4>
              <textarea  class="form-control" name="mchContent"  placeholder="Your Message" rows="5" ></textarea>
              <div class="validate"></div>
            </div>

            
			 <div class="form-group">
	            <div class="col-sm-2">
				<button type="submit" class="btn btn-theme">정보입력</button>
				</div>
				<div class="col-sm-7">
					<button type="reset" id="matchGo" class="btn btn-theme" >입력취소</button>
				</div>
				
			</div>
          </form>
      </div>

	      <div class="col-sm-4">
	        
	                                
	      </div>
    </div>
  </div>
  <script type="text/javascript">
  	$(document).ready(function() {
		$("#search").on("click", function() {
			location.href="/LPG/ground/map/main.do?pageNo=1";
		})
		$("#reserve").on("click", function() {
			location.href="/LPG/ground/map/main.do?pageNo=2";
		})
	});
  	
  	
  </script>

 </body>
</html>
