<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body>

 <%
  	UserDTO user = (UserDTO) session.getAttribute("loginUserInfo"); 
  	System.out.println(user.toString());
  	%>


  <!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

  <div class="container mtb">
    <div class="row">
      <div class="col-sm-8">
        <h4>청산별곡 Ver.2</h4>
        <div class="hline"></div>
        <p>살어리 살어리랐다 청산에 살어리랐다</p>
        <form class="form-horizontal style-from" action="/LPG/match/userSports.do" method="post">

	      <div class="form-group">
					<div class="row">
					<div class="col-sm-2" ><h4>주포지션</h4></div>
						
						<div class="col-sm-1">
							<select name="sportsPosition" style="margin-top: 10px">
								<option value="GK">골키퍼(GK)</option>
								<option value="DF">수비수(DF)</option>
								<option value="CB">센터백(CB)</option>
								<option value="SW">스위퍼/리베로(SW)</option>
								<option value="FB">풀백(FB)</option>
								<option value="WB">윙백(WB)</option>
								<option value="MF">미드필더(MF)</option>
								<option value="CM">중앙미드필더(CM)</option>
								<option value="DM">수비형 미드필더(DM)</option>
								<option value="AM">공격형 미드필더(AM)</option>
								<option value="WM">윙어(LM/RM)</option>
								<option value="FW">공격수(FW)</option>
								<option value="CF">중앙 공격수(CF)</option>
								<option value="SS">세컨 스트라이커(SS)</option>
								<option value="WF">윙어(LW/RW)</option>
							</select>
						</div>
						<div class="col-sm-1">
						
						</div>
					</div>
				</div>
            									
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2"><h4>성향</h4></div>
				<div class="col-sm-7"><input type="text" name="sportsTend" class="form-control" placeholder="공격형/수비형"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-2"><h4>주발</h4></div>
				<input style="margin-top: 10px" type="radio" class="radiodiv" name="sportsFoot" value="양발">양발
			 	<input style="margin-top: 10px" type="radio" class="radiodiv" name="sportsFoot" value="오른발">오른발
				<input style="margin-top: 10px" type="radio" class="radiodiv" name="sportsFoot" value="왼발">왼발
				</div>
			</div>
		
          <div class="form-group">
					
					<div class="col-sm-2">
					<button type="submit" class="btn btn-theme">정보입력</button>
					</div>
					<div class="col-sm-7">
					<button type="button" id="matchGo" class="btn btn-theme" >입력취소</button>
					</div>
			</div>			
  					<input type="hidden" class="" name="userId" value="<%=user.getUserId()%>"> 

          </form>
      </div>

	      <div class="col-sm-4">
	                           
	      </div>
    </div>
  </div>
  <script type="text/javascript">
  	$(document).ready(function() {
		$("#matchGo").on("click", function() {
			location.href="/LPG/match.do"
		})
	});
  </script>

  

</body>
</html>
