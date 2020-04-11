<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- JQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style type="text/css">

::-webkit-scrollbar {
	width: 7px;
	background-color: #F5F5F5;
	visibility: hidden;
}
::-webkit-scrollbar:hover {
	visibility: visible;
}
::-webkit-scrollbar-thumb {
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
	background-color: #BDBDBD;
	visibility: hidden;
}
::-webkit-scrollbar-thumb:hover {
	visibility: visible;
}

::-webkit-scrollbar-track {
  margin: 0 30px;
  visibility: hidden;
}
::-webkit-scrollbar-track:hover {
	visibility: visible;
}

.navbar-holder {
	background-color: #384452;
	height: 5px;
	width: 100vw;
}

.nav-holder:hover #navP {
	
}

.navbar-hide {
	visibility: hidden;
}

.vis {
	visibility: visible;
}

#posU {
	position: absolute;
	z-index: 2;
	box-shadow: 1px 0px 7px #322a2a;
}

#posD {
	position: absolute;
	z-index: 1;
	width: 100vw;
	height: 100vh;
}

.hidebtn {
	z-index: 3;
	position: fixed;
	left: 588px;
	top: 50%;
	display: inline-block;
}

.hbtn {
	width: 25px;
	height: 50px;
	border: 0;
	outline: 0;
	background-color: white;
	box-shadow: 3px 1px 3px #939393;
	content: ">";
}

.leftPage {
	width: 591px;
	height: 85.6vh;
	max-height: 85.6vh;
	padding: 10px;
	overflow: auto;
	display: inline-block;
	background-color: white;
}

.small-icon {
	width: 5%;
}

.search-box {
	width: 430px;
	margin-left: 15px;
	font-size: 25px;
	border: none;
	background-color: #FAFAFA;
	display: inline;
	vertical-align: middle;
	margin-top: 10px;
}

.search-btn {
	height: 32px;
	width: 35px;
	border: none;
	display: inline;
	vertical-align: middle;
	margin-top: 10px;
}

.search {
	height: 50px;
	width: 500px;
	margin: 15px;
	margin-left: 30px;
	background-color: #FAFAFA;
	border-radius: 5px;
}

.searchBox {
	width: 591px;
	
	/* height: 109px; */
	height: 14.4vh;
	padding: 10px;
	background-color: white;
	border: solid 5px #ada5b6;
}
</style>
<script type="text/javascript">
	stat = true;
	$(document).ready(function() {
		$(".navbar-holder").on("mouseover", function() {
			$("#navP").removeClass("navbar-hide");
		});
		$("#navP").on("mouseout", function() {
			$("#navP").addClass("navbar-hide");
		});
		$(".hbtn").on("click", function() {
			if (stat == true) {
				$("#posU").hide("slide", {
					direction : "left"
				}, 500);
				$(".hidebtn").animate({
					left : "0"
				}, 500);
				$(".hbtn").html("▶");

				stat = false;
			} else if (stat == false) {
				$("#posU").show("slide", {
					direction : "left"
				}, 500);
				$(".hidebtn").animate({
					left : "+=591"
				}, 500);
				$(".hbtn").html("◀");
				stat = true;
			}

		});
	});
</script>
</head>
<body>
	<%
		String pageType = (String)request.getAttribute("pageType");
		String baseType = (String)request.getAttribute("base");
	%>
	<!-- *****************************************************************************************************************
	 NAVBAR
	 ***************************************************************************************************************** -->
	<div class="navbar-holder">
		<div class="navbar navbar-default navbar-fixed-top navbar-hide"
			id="navP" role="navigation">
			<!-- top(navbar 위치) -->
			<tiles:insertAttribute name="nav"></tiles:insertAttribute>
		</div>
	</div>
	<!-- *****************************************************************************************************************
	 content
	 ***************************************************************************************************************** -->
	<div id=posD>
		<!-- content(컨텐츠 위치) -->

		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
	<!-- *****************************************************************************************************************
	 side
	 ***************************************************************************************************************** -->
	<div id=posU>
		<!-- side(side 위치) -->
		<%if(baseType=="map"){ 
			String pageNo = (String)request.getAttribute("pageNo");
		%>
		<form action="/LPG/ground/map/list.do"  method="GET">
		<%}else{ %>
		<form action="/LPG/ground/calendar/list.do"  method="GET">
		<%} %>
		<input type="hidden" name="pageNo" value="2">
			<div class="searchBox">
				<div class="search">
					<input type="text" name="search" class="search-box" placeholder="구장명, 지역, 종목 검색"
						data-rule="minlen:1" data-msg="검색어를 입력해주세요"> 
					<input type="image" class="search-btn" src="/LPG/img/my/search.png" >
				</div>
			</div>
		</form>
		<tiles:insertAttribute name="side"></tiles:insertAttribute>
	</div>
	<%
		if(pageType=="result"){
	%>
	<div class="hidebtn">
		<button class="hbtn">◀</button>
	</div>
	<%} %>
</body>
</html>