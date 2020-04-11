<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LPG - Let's Play Game</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="" name="keywords">
	<meta content="" name="description">

</head>
<body>
	<!-- *****************************************************************************************************************
	 NAVBAR
	 ***************************************************************************************************************** -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<!-- top(navbar 위치) -->
		<tiles:insertAttribute name="nav"></tiles:insertAttribute>
	</div>
	
	<!-- *****************************************************************************************************************
	 HEADERWRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<!-- *****************************************************************************************************************
	 content
	 ***************************************************************************************************************** -->
	<div>
		<div class="col-1">
			<!-- 여백 col -->
			<tiles:insertAttribute name="empty"></tiles:insertAttribute>
		</div>
		<div class="col-7">
			<!-- content(컨텐츠 위치) -->
			<tiles:insertAttribute name="content"></tiles:insertAttribute>
		</div>
		<div class="col-4">
			<!-- chat(채팅 위치) -->
			<tiles:insertAttribute name="chat"></tiles:insertAttribute>
		</div>
	</div>
	<!-- *****************************************************************************************************************
	 footer
	 ***************************************************************************************************************** -->
	<div>
		<!-- footer 넣는 위치 -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>

	
</body>
</html>