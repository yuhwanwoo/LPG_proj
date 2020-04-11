<%@page import="game.LPG.ground.GroundDTO"%>
<%@page import="game.LPG.sportsMatch.MatchDetailDTO"%>
<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>


<style type="text/css">
#myfix {
	position: fixed;
	bottom: 0px;
	left: 0px;
	width: 100%
}

.btn-theme2 {
	color: #fff;
	background-color: #00b3fe;
	border-color: #00b3fe;
	margin: 4px;
}

.btn-theme2:hover, .btn-theme2:focus, .btn-theme2:active, .btn-theme2.active,
	.open .dropdown-toggle.btn-theme {
	color: #fff;
	background-color: orange;
	border-color: orange;
}
</style>
</head>


<body>
<% 
UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");
MatchDetailDTO dto= (MatchDetailDTO)request.getAttribute("mchIndivDetail");
SportsMatchDTO sm = dto.getSportsMatch();
GroundDTO grd = dto.getGround();
%>
<div class="container mtb">
    <div class="row">
      <div class="col-sm-8">
        <h4>경기일자</h4>
        <div class="hline"></div>
        <form class="form-horizontal style-from"  >
          		
			<div class="form-group">
				<div class="row">
				<div class="col-sm-7">경기시간<input type="text" class="form-control"  disabled="disabled" value="<%=sm.getMchDate()%>,<%=sm.getMchDateStart() %>,<%=sm.getMchDateEnd()%>" ></div>     
				<div class="col-sm-7">구장명<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchGrd() %>></div>
				<div class="col-sm-7">구장주소<input type="text" class="form-control"  disabled="disabled" value=<%= grd.getGrdAddr() %>></div>
				<div class="col-sm-7">참가비(구장비)<input type="text" class="form-control" disabled="disabled" value=<%= sm.getMchPrice() %>></div>
				<div class="col-sm-7">필요인원<input type="text" class="form-control" disabled="disabled" value=<%= sm.getMchPlay() %>></div>
				<div class="col-sm-7">내용<input type="text" class="form-control" disabled="disabled" value=<%= sm.getMchContent() %>></div>
				</div>
			</div>
			
			 <div class="hline"></div>
				<div class="form-group">
				<div class="row">
				<div class="col-sm-7">인원(경기타입)<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchType() %>></div>
				<div class="col-sm-7">매치성별<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchGender() %>></div>
				<div class="col-sm-7">요구실력<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchAbil() %>></div>
				<div class="col-sm-7">착용가능한 슈즈<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchShoes() %>></div>
				<div class="col-sm-7">내용<input type="text" class="form-control"  disabled="disabled" value=<%= sm.getMchContent() %>></div>
				</div>
			</div>
			<input type="hidden" id="mchNo" value="<%= sm.getMchNo() %>">
			<input type="hidden" id="sportsNo" value="<%= userSprots.getSportsNo() %>">
          </form>
      </div>
	      <div class="col-sm-4">
	      </div>
    </div>
  </div>
 <div id="myfix">
		<form action="">
			<input type="button" id="matchJoin" value="매치신청" class="btn btn-block btn-theme2">
		</form>
  </div>
  <script type="text/javascript">
  	$(document).ready(function() {
  		mchNo = $("#mchNo").val();
  		sportsNo = $("#sportsNo").val();
		$("#matchJoin").on("click", function(){
			location.href="/LPG/match/joinTeam.do?mchNo="+mchNo+"&sportsno="+sportsNo;
		});
	});
  </script>
</body>
</html>
