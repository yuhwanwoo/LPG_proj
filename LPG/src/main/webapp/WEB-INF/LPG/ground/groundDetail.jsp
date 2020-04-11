<%@page import="game.LPG.ground.GroundAPIDTO"%>
<%@page import="game.LPG.ground.GroundDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<style type="text/css">
html, body {
  overflow: hidden;
}

.groundName {
	margin-left: 10px;
}

.placeName {
	margin: 5px;
}

.placeType {
	margin: 5px;
	color: gray;
}

.btn-right {
	margin: 10px;
	position: relative;
	left: 140px;
	width: 200px;
	height: 55px;
	font-size: 22px;
	background-color: #6C4F70;
	color: white;
	margin-bottom: 15px;
}




.inside-content {
	margin: 10px;
	margin-left: 20px;
	font: bold;
	font-size: 18pt;
}

.time {
	font-size: 14pt;
	margin: 1pt;
	white-space: normal;
	width: 90px;
	white-space: normal;
	width: 90px;
	height: 90px;
}

.inner-text {
	margin: 10pt;
}

.groundImg {
	height: 300px;
	width: 571px;
	margin-bottom: 5px;
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
b{
	font-size: 25px;
	vertical-align: middle;
}
.star{
	vertical-align: middle;
}
</style>

</head>
<body>
	<%
		int starAvg = (int)request.getAttribute("starAvg");
		
		int count = (int)request.getAttribute("count");
		String pageNo = (String)request.getAttribute("pageNo");
	%>
	<div class=" leftPage">
		<div class="content">
			<%
				if(((GroundDTO)request.getAttribute("ground"))!=null){
					GroundDTO ground = (GroundDTO)request.getAttribute("ground");
			%>
			<!-- img from db -->
			<div class="outer">
				<div class="groundImg">
					<img class="groundImg" alt="" src="/LPG/img/my/soccer.jpg">
				</div>
				<br />
				<div class="groundName">
					<h1 class="placeName" onclick="location.href='/ground/sendName.do?grdName=<%=ground.getGrdName() %>>';window.close();">
						
						<%=ground.getGrdName() %>
						<!-- ground name from db -->
					
					</h1>
					<h3 class="placeType">
						<%=ground.getGrdType() %>
						<!-- ground type from db -->
					</h3>
				</div>
				<div>
					<span class="groundName">
					<% for(int i=0;i<starAvg;i++){ %>
						<img alt="" src="/LPG/img/my/star.png" class="small-icon star">&nbsp;
					<% } %>
					<% for(int i=0;i<5-starAvg;i++){ %>
						<img alt="" src="/LPG/img/my/star2.png" class="small-icon star">&nbsp;
					<% } %>
					<b class="count">(<%=count %>)</b>
					</span> 
					<!-- mch 생성에서 넘어온 페이지일때만 보여주기 -->
					
					<%-- <% if(pageNo!=null){ 
						if(pageNo=="2"){
					%> --%>
					<input type="button" class="btn btn-large btn-right" onclick="location.href='/LPG/ground/reserve.do?grdNo=<%=ground.getGrdNo() %>'" name="groundReserve" value="예약하기">
					<%-- <%} } %>  --%>
				</div>
				<div class="hline"></div>
				<br />

				<div class="inside-content">
					<span><img class="small-icon" alt="" src="/LPG/img/my/map.png"></span>
					<span class="inner-text"> <%=ground.getGrdAddr() %>
					</span>
				</div>
				<hr />

				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/won.png" class="small-icon"></span>
					<span class="inner-text"> <%=ground.getGrdCost() %>원
					</span>
				</div>

				<!-- calendar -->
				<hr />
				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/calendar.png"
						class="small-icon"></span><span class="inner-text">2020.1.16.(thur)</span>
				</div>
				<!-- date from calendar -->
				<hr />
				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/clock.png"
						class="small-icon">&nbsp;&nbsp;접수기간</span>
					<div class="inner-text">2020.01.01 ~ 2020.01.31</div>
				</div>
				<hr />

				<div class="inside-content">
					<div class="inner-text">상세정보</div>
					<div class="inner-text"><%=ground.getGrdDetail() %></div>

				</div>


			</div>
			<%
			}
			if(((GroundAPIDTO)request.getAttribute("apiGround"))!=null){
				GroundAPIDTO ground = (GroundAPIDTO)request.getAttribute("apiGround");
			%>
				<!-- img from db -->
			<div class="outer">
				<div class="groundImg">
					<img class="groundImg" alt="" src="/LPG/img/my/soccer.jpg">
				</div>
				<br />
				<div class="groundName">
					<h1 class="placeName">
						<%=ground.getGrdName() %>
						<!-- ground name from db -->
					</h1>
					<h3 class="placeType">
						<%=ground.getGrdType() %>
						<!-- ground type from db -->
					</h3>
				</div>
				<div>
					<span class="groundName">
					<% for(int i=0;i<starAvg;i++){ %>
						<img alt="" src="/LPG/img/my/star.png" class="small-icon star">&nbsp;
					<% } %>
					<% for(int i=0;i<5-starAvg;i++){ %>
						<img alt="" src="/LPG/img/my/star2.png" class="small-icon star">&nbsp;
					<% } %>
					<b class="count">(<%=count %>)</b>
					</span> 
					<!-- mch 생성에서 넘어온 페이지일때만 보여주기 -->
					<%-- <% if(){ %> --%>
					<form action="">
					<input type="submit" class="btn btn-large btn-right" name="groundReserve" value="예약하기">
					</form>
					<%-- <% } %> --%>
				</div>
				<div class="hline"></div>
				<br />

				<div class="inside-content">
					<span><img class="small-icon" alt="" src="/LPG/img/my/map.png"></span>
					<span class="inner-text"> <%=ground.getGrdAddr() %>
					</span>
				</div>
				<hr />

				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/won.png" class="small-icon"></span>
					<span class="inner-text"> <%=ground.getGrdCost() %>원
					</span>
				</div>

				<!-- calendar -->
				<hr />
				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/calendar.png"
						class="small-icon"></span><span class="inner-text">2020.1.16.(thur)</span>
				</div>
				<!-- date from calendar -->
				<hr />
				<div class="inside-content">
					<span><img alt="" src="/LPG/img/my/clock.png"
						class="small-icon">&nbsp;&nbsp;접수기간</span>
					<div class="inner-text"><%=ground.getStartRsvDate()%>
								~
								<%=ground.getEndRsvDate()%></div>
				</div>
				<hr />

				<div class="inside-content">
					<div class="inner-text">상세정보</div>
					<div class="inner-text"><%=ground.getGrdDetail() %></div>

				</div>


			</div>
			<%} %>
			
		</div>
	</div>
	<!-- <div class="hidebtn">
		<button class="hbtn"></button>
	</div> -->

</body>
</html>