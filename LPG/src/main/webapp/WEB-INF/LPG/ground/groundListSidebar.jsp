<%@page import="java.util.ArrayList"%>
<%@page import="game.LPG.ground.GroundAPIDTO"%>
<%@page import="game.LPG.ground.GroundDTO"%>
<%@page import="java.util.List"%>
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


<!-- Main Stylesheet File -->
<link href="/LPG/css/style.css" rel="stylesheet">

<style type="text/css">
.groundName {
	margin-left: 10px;
}

.placeName {
	margin: 5px;
}

.placeType {
	margin: 5px;
	color: gray;
	margin-bottom: 15px;
}

.inside-content {
	margin: 10px;
	margin-left: 20px;
	font: bold;
	font-size: 18pt;
	padding: 0;
}

.time {
	font-size: 14pt;
	margin: 1pt;
	white-space: normal;
	width: 90px;
	white-space: normal;
	width: 95px;
	height: 95px;
}

.inner-text {
	margin: 5px;
}

.inner-font {
	font-size: 20px;
}

.groundImg {
	height: 300px;
	width: 571px;
	margin-bottom: 5px;
}

.colname {
	font-size: 15px;
}

.thumbImg {
	height: 150px;
	width: auto;
	padding: 0;
	float: right;
	margin-right: 20px;
	margin-bottom: 10px;
	object-fit: cover;
}

.nameSpace {
	border: solid 2px black;
}

.padzero {
	padding: 0;
}

.in {
	margin: 5px;
}

.in-con {
	margin:
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

.outer:HOVER {
	cursor: pointer;
}

.noImg {
	width: 200px;
}
</style>
</head>
<body>
	<%
		System.out.println("groundListSideBar 1");

		String baseType = (String) request.getAttribute("base");
		
		String pageNo = (String)request.getAttribute("pageNo");
	%>
	<div class="leftPage">
		<div class="content">
			<!-- img from db -->
			<hr />
			<%
				System.out.println("groundListSideBar 3");
				if (((List<GroundDTO>) request.getAttribute("groundList")).size() > 0) {
					List<GroundDTO> groundList = (List<GroundDTO>) request.getAttribute("groundList");
					for (int i = 0; i < groundList.size(); i++) {
			%>
			<input type="hidden" name="ground" value="<%=groundList.get(i)%>">
			<div class="outer"
				onclick="location.href='/LPG/ground/<%if (baseType.equals("map")) {%>map<%} else if (baseType.equals("calendar")) {%>calendar<%}%>/detail.do?grdNo=<%=groundList.get(i).getGrdNo()%>&pageNo=<%=pageNo%>'">
				<div class="groundName col-md-12">
					<div class="col-md-6 padzero">
						<h1 class="placeName">
							<%=groundList.get(i).getGrdName()%>
							<!-- ground name from db -->
						</h1>
						<h3 class="placeType">
							<%=groundList.get(i).getGrdType()%>
							<!-- ground type from db -->
						</h3>
						<div class="inner-text colname in">접수 기간</div>
						<div class="inner-text inner-font in">2020.02.01 ~
							2020.03.01</div>
					</div>
					<div class="col-md-6">
						<img class="thumbImg" alt="/LPG/img/my/noImg.png"
							src="/LPG/img/my/noImg.png">
					</div>

				</div>
				<hr />
				<br> <br>
			</div>
			<%
				System.out.println("groundListSideBar 4");
				}
				}
				if ((((ArrayList<GroundDTO>) request.getAttribute("apiGroundList")).size() > 0) ) {
					ArrayList<GroundAPIDTO> apiGroundList = (ArrayList<GroundAPIDTO>) request.getAttribute("apiGroundList");
					System.out.println("groundApiSize:" + apiGroundList.size());
					for (int i = 0; i < apiGroundList.size()-1; i++) {
						System.out.println(i+"번째 구장");
			%>
			<input type="hidden" name="ground" value="<%=apiGroundList.get(i)%>">

			<div class="outer"
				onclick="location.href='/LPG/ground/<%if (baseType.equals("map")) {%>map<%} else if (baseType.equals("calendar")) {%>calendar<%}%>/detail.do?grdNo=<%=apiGroundList.get(i).getGrdNo()%>&pageNo=<%=pageNo%>'">

				<div class="groundName col-md-12">
					<div class="col-md-6 padzero">
						<h1 class="placeName">
							<%=apiGroundList.get(i).getGrdName()%>

							<!-- ground name from db -->
						</h1>
						<h3 class="placeType">
							<%=apiGroundList.get(i).getGrdType()%>
							<!-- ground type from db -->
						</h3>

						<div class="inner-text colname in">접수 기간</div>
						<div class="inner-text inner-font in"><%=apiGroundList.get(i).getStartRsvDate()%>
							~
							<%=apiGroundList.get(i).getEndRsvDate()%>

						</div>
					</div>
					<div class="col-md-6">
						<img class="thumbImg" alt="/LPG/img/my/noImg.png"
							src="/LPG/img/my/soccer.jpg">
						<%-- 					<img class="thumbImg" alt="/LPG/img/my/noImg.png" src="<%=groundList.get(i).getGrdImg() %>"> --%>
					</div>
				</div>


				<div class="inside-content">
					<div class="inner-text">
						<%
							String startTimeStr = apiGroundList.get(i).getStartServiceTime();
							String[] startTimeStrArr = startTimeStr.split(":");
									
							int startTime = 0;
							int endTime = 0;
							String endTimeStr = apiGroundList.get(i).getEndServiceTime();
							String[] endTimeStrArr = endTimeStr.split(":");
							System.out.println("startTimeStrArr[0]"+startTimeStrArr[0]);
							System.out.println("endTimeStrArr[0]"+endTimeStrArr[0]);
							if(!(startTimeStrArr[0].isEmpty()) && !(endTimeStrArr[0].isEmpty()))
							{								
								System.out.println("in if");
								startTime =	Integer.parseInt(startTimeStrArr[0]);
								endTime = Integer.parseInt(endTimeStrArr[0]);
							}
							System.out.println("out if");
							
							for (int j = startTime; j < endTime - 2; j += 2) {
								int time = j;
						%>
						<% 
						System.out.println(6);
			%>
						<button class="time"><%=time%>:00&#x00A;~<%=time + 2%>:00
						</button>
						<%
							}
						%>
					</div>
				</div>
				<hr />
			</div>
			<%
				}
				}
			%>

		</div>
</body>
</html>