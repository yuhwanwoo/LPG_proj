<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@page import="java.util.List"%>
<%@page import="game.LPG.ground.GroundDTO"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@page import="game.LPG.sportsMatch.MatchDetailDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

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
<link href="/LPG/css/radio.css" rel="stylesheet">
<!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
	<!-- *****************************************************************************************************************
	 TITLE & CONTENT
	 ***************************************************************************************************************** -->
	<% 
		UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
	    UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");
	    TeamMemberDTO teamMember = (TeamMemberDTO)request.getAttribute("teamMember");
		if((MatchDetailDTO)request.getAttribute("mchTeamDetail")!=null){
  			MatchDetailDTO dto = (MatchDetailDTO)request.getAttribute("mchTeamDetail"); 
  			SportsMatchDTO sm = dto.getSportsMatch();
  			GroundDTO grd = dto.getGround(); 
  			List<TeamDTO> teamlist = dto.getTeam();
  	%>
	<div class="container mt">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 centered">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- 구장사진 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="/LPG/img/<%= grd.getGrdImg() %>" alt="구장사진 1">
						</div>
						<div class="item">
							<img src="/LPG/img/<%= grd.getGrdImg() %>" alt="구장사진 2">
						</div>
						<div class="item">
							<img src="/LPG/img/<%= grd.getGrdImg() %>" alt="구장사진 3">
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-10 col-lg-offset-1">
				<div class="col-lg-6">
					<h4>
						경기일자 :
						<%= sm.getMchDate()%>
						<%= sm.getMchDateStart() %></h4>
					<h3>
						<a>구장명 :  <%= grd.getGrdName() %></a>
					</h3>
					<p>
						구장주소 :
						 <%= grd.getGrdAddr() %> 
					</p>
					<h4>
						참가비 :
						<%= sm.getMchPrice() %>원
					</h4>
				</div>
				<div class="col-lg-6">
					<h4>
						경기타입 :
						<%= sm.getMchPlay() %></h4>
					<h4>
						매치성별 :
						<%= sm.getMchGender() %></h4>
					<h4>
						요구실력 :
						<%= sm.getMchAbil() %></h4>
					<p>
						<b>내용 : </b><%= sm.getMchContent() %>
					</p>
				</div>
			</div>

			<% for(int i=0;i<teamlist.size();i++){
	  			TeamDTO team = teamlist.get(i); %>

			<div class="col-lg-4 col-lg-offset-1">
				<div class="spacing"></div>
				<% if(team.getHomeaway().equals("0")){ %>
				<h3>HOME TEAM</h3>
				<% }else{ %>
				<h3>AWAY TEAM</h3>
				<% } %>
				<div class="hline"></div>
				<img alt="팀앰블럼" src="">
				<h4><%= team.getTeamName() %></h4>
				<p>
					<b>팀 연령대 : <%= team.getTeamAge() %></b>
				</p>
				<p>
					<b>팀 실력 : <%= team.getTeamAbility() %></b>
				</p>
				<p>
					<b>유니폼 색상 : <%= team.getTeamUniform() %></b>
				</p>
				<% if(team.getTeamNo().equals(teamMember.getTeamNo())&teamMember.getTmGrade().equals("매니저")){ %>
				<div style="float: right;">
					<input type="radio" id="backupOk" name="backUp" value="0">
					<label for="backupOk">용병필요</label> <input type="radio"
						id="backupNoK" name="backUp" value="1" checked> <label
						for="backupNoK">용병불필요</label>
					<div id="backup<%= i+1 %>"></div>
				</div>
				<% } else if(team.getBackupNum().equals("0")){%>
				<div></div>
				<% } else {%>
				<div class="text-right">
					<a href="/LPG/match/mchTeamYong.do" class="btn btn-theme">용병신청</a>
				</div>
				<% } %>
			</div>
			<input type="hidden" id="teamNo" name="teamNo" value="<%= team.getTeamNo() %>">
			<% } %>
			<input type="hidden" id="mchNo" name="mchNo" value="<%= sm.getMchNo() %>">
			<input type="hidden" id="myTeamNo" name="myTeamNo" value="<%= teamMember.getTeamNo() %>">
		</div>
	</div>
	<div id="myfix">
		<% 	TeamDTO team = teamlist.get(0);
			if(team.getTeamNo().equals(teamMember.getTeamNo())&teamMember.getTmGrade().equals("매니저")){ %>
		<a id="matchChange" class="btn btn-block btn-theme2">매치수정</a>
		<% 	} else if(teamlist.size()==2){%>
		<div></div>
		<% 	} else{%>
		<form action="">
			<input type="button" id="matchjoin" value="매치신청" class="btn btn-block btn-theme2">
		</form>
	</div>
	<% 		}
		} %>
	
	<script type="text/javascript">
  	teamNo = $("#teamNo").val();
  	myTeamNo = $("#myTeamNo").val();
  	mchNo = $("#mchNo").val();
  	mydata = "<form action=''>"
  				+ "<input type='number' id='backupNum' name='backupNum' placeholder='용병필요인원 수'>"
  				+ "<input type='button' id='backUpAdd' value='확인'>"
  			 +"</form>";
  
  	$(document).ready(function(){
  		$("#backupOk").on("click", function(){
  			$("#backup1").empty();
  			$("#backup1").append(mydata);
  			$("#backUpAdd").on("click", function(){
  	  			backUpNum = $("#backupNum").val();
  	  			alert("용병인원 업데이터");
  	  			$.ajax({
  	  				url:"/LPG/match/backUpNumAdd.do",
  	  				type: "get",
  	  				data: {"backupNum":backUpNum,
  	  					   "mchNo":mchNo,
  	  					   "teamNo":teamNo},
  	  				success:function(data){
  	  					alert(data);
  	  				}
  	  			});
  			});
  		});
  		$("#backupNoK").on("click", function(){
  			$("#backup1").empty();
  		});
  		$("#backupOk").on("click", function(){
  			$("#backup2").empty();
  			$("#backup2").append(mydata);
  			$("#backUpAdd").on("click", function(){
  	  			backUpNum = $("#backupNum").val();
  	  			alert("용병인원 업데이터");
  	  			$.ajax({
  	  				url:"/LPG/match/backUpNumAdd.do",
  	  				type: "get",
  	  				data: {"backupNum":backUpNum,
  	  					   "mchNo":mchNo,
  	  					   "teamNo":teamNo},
  	  				success:function(data){
  	  					alert(data);
  	  				}
  	  			});
  			});
  		});
  		$("#backupNoK").on("click", function(){
  			$("#backup2").empty();
  		});
  		
  		$("#matchjoin").on("click", function() {
			location.href="/LPG/match/joinTeam.do?mchNo="+mchNo+"&teamNo="+myTeamNo;
		})
		$("#matchChange").on("click", function() {
			location.href="/LPG/match/change.do?mchNo="+mchNo;
		})
  	});
  </script>
</body>
</html>