<%@page import="java.security.spec.MGF1ParameterSpec"%>
<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LPG - Let's Play Game</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="" name="keywords">
	<meta content="" name="description">
	
	<!-- Favicons -->
	<link href="/LPG/img/favicon.png" rel="icon">
	<link href="/LPG/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900" rel="stylesheet">
	
	<!-- Bootstrap CSS File -->
	<link href="/LPG/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Libraries CSS Files -->
	<link href="/LPG/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="/LPG/lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
	<link href="/LPG/lib/hover/hoverex-all.css" rel="stylesheet">
	
	<!-- Main Stylesheet File -->
	<link href="/LPG/css/style.css" rel="stylesheet">
	
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
</head>
<body>
	<% UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
	   UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");%>
	  
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/LPG/match.do">LPG.</a>
		</div>
		<div class="navbar-collapse collapse navbar-right">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/LPG/match.do">HOME</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown">Ground<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/LPG/ground/add.do">구장등록</a></li>
						<li><a href="/LPG/ground/map/main.do">구장검색</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown">Match<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/LPG/match/matchResist.do">매치등록</a></li>
						<li><a href="/LPG/match.do">매치검색</a></li>
						<li><a href="/LPG/match/mgrMatchList.do?pagenum=1&contentnum=10">매치신청현황</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown">Team<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/LPG/team/create.do">팀 등록</a></li>
						<li><a href="/LPG/team/search.do">팀 검색</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown">Mypage<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/LPG/user/myinfoPWCheck.do">개인정보조회수정</a></li>
						<li><a href="/LPG/point/mypoint.do">내포인트조회</a></li>
					</ul>
				</li>				
				<li><a href="#">QA</a></li>
				
				<% //처음 접속하는 사용자에게 보여줄 컨텐츠
					if(user==null){ %>
				<li class="icon-bar" style="border: 1px solid white; height: 48px;"><a href="/LPG/user/login.do" class="icon-bar">로그인</a></li>
			</ul>
				<%//로그인 성공한 사용자에게 보여줄 컨텐츠
					}else{ %>
				<li class="icon-bar" style="border: 1px solid white; height: 48px;"><a href="/LPG/user/logout.do" class="icon-bar">로그아웃</a></li>
				</ul>
				<%} %>
		</div>
		<!--/.nav-collapse -->
	</div>
	
	<!-- JavaScript Libraries -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- <script src="/LPG/lib/jquery/jquery.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="/LPG/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="/LPG/lib/php-mail-form/validate.js"></script>
	<script src="/LPG/lib/prettyphoto/js/prettyphoto.js"></script>
	<script src="/LPG/lib/isotope/isotope.min.js"></script>
	<script src="/LPG/lib/hover/hoverdir.js"></script>
	<script src="/LPG/lib/hover/hoverex.min.js"></script>
	
	<!-- Template Main Javascript File -->
	<script src="/LPG/js/main.js"></script>
</body>
</html>