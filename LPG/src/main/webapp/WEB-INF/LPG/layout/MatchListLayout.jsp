<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LPG - Let's Play Game</title>
	
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
		<!-- content(컨텐츠 위치) -->
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<div>
		<tiles:insertAttribute name="list"></tiles:insertAttribute>
	</div>
	<!-- *****************************************************************************************************************
	 footer
	 ***************************************************************************************************************** -->
	<!-- footer 넣는 위치 -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	
</body>
</html>