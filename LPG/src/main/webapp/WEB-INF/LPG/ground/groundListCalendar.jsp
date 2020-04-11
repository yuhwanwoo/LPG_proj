<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	Calendar cal= Calendar.getInstance(Locale.KOREA);
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	cal.set(Calendar.MONTH, month-1);
	int date = cal.get(Calendar.DATE);
/* 	int startDay = cal.get(Calendar.DAY_OF_WEEK); */
	int startDay = cal.getMinimum(Calendar.DATE);
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
 	int start = cal.get(Calendar.DAY_OF_WEEK); 
 	int lastPos=0;
	String strMonth="";
	switch(month){
	case 1 : strMonth="January";break;
	case 2 : strMonth="February";break;
	case 3 : strMonth="March";break;
	case 4 : strMonth="April";break;
	case 5 : strMonth="May";break;
	case 6 : strMonth="June";break;
	case 7 : strMonth="July";break;
	case 8 : strMonth="August";break;
	case 9 : strMonth="September";break;
	case 10 : strMonth="October";break;
	case 11 : strMonth="November";break;
	case 12 : strMonth="December";
	}
%>
<meta charset="UTF-8">
<title>ground Calendar</title>
<link href="../../css/calendar.css" rel="stylesheet">

<script type="text/javascript">
	$(document).ready(function(){
		document.getElementById("beforeCal").onclick = function(){
			cal.set(Calendar.MONTH)
		}
		
		document.getElementsByClassName('day').onclick=function(){
			console.log("act");
			console.log(this.getVal());
			alert(this.getVal());
		}
	});
</script>
</head>
<body style="overflow: hidden">
	<br>
	<div class="calendar-container">
		<div class="calendar-header">
			<h1>
				<button id="beforeCal">&#60;</button>
				&#09;
				<%=strMonth %>
				&#09;
				<button id="afterCal">></button>
			</h1>
			<p><%=year %></p>
		</div>
		<div id="calendar">
			<span class="day-name" style="color: #FF7171">Sun</span><span
				class="day-name">Mon</span> <span class="day-name">Tue</span> <span
				class="day-name">Wed</span> <span class="day-name">Thu</span> <span
				class="day-name">Fri</span> <span class="day-name"
				style="color: #6EE3F7">Sat</span>
			<%
				for(int i=1;i<start;i++){
						%>
			<div class="day day--disabled">&nbsp;</div>
			<%
				}
				for(int i = 1; i<=lastDay;i++){
			%>
			<div class="day" <%
 						if(i==date){
 							%>
				style="color: #F7EA6E"
				<% 
 						}else{ 
 	 						if(i%7==0){
 	 							%>
				style="color: #6EE3F7"
				<%
 	 						}
 	 						else if(i%7==1){
 	 							%>
				style="color: #FF7171"
				<%
 	 						}
 	 						
 						}
 						%>><%=i %>
				<div class="dayText">
					<a>잠실구장</a>
				</div>
				<div class="dayText">
					<a>압구정구장</a>
				</div>
				<div class="dayText">
					<a>목동구장</a>
				</div>

			</div>
			<%
					}
					
//				for(int i=lastPos;i%7>0;i++){%>
<!-- 			<div class="day day--disabled">&nbsp;</div>
 -->			<%
//				}
			%>
		</div>
		<br>
	</div>
</body>
</html>
