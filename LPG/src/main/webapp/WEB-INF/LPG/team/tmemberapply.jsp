<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<style type="text/css">
#tsearchtotal {
	display: inline-block;
	padding: 10px;
	width: 100%;
}

#tsearchbuttonall {
	width: 100%;
	display: inline-block;
}

.tsearchbutton {
	padding: 10px;
	float: left;
	margin-left: 2%;
	margin-right: 2%;
	position: relative;
	top: 15px;
}

#tnumnameinfo {
	border: 1px red solid;
	display: inline-block;
}

.tnum {
	width: 100px;
	float: left;
	border: 1px green solid;
}

.tname {
	width: 250px;
	float: left;
	border: 1px green solid;
}

.tinfo {
	width: 600px;
	float: left;
	border: 1px green solid;
}

.footer {
	clear: both;
	padding-top: 10px;
	width: 90%;
}

#tttable {
	border-collapse: collapse;
	text-align: center;
	width: 99%;
}

.tttd {
	padding: 8px;
	width: 30%;
	font-size: 30px;
}

.tttr:nth-child(even) {
	background-color: #f2f2f2
}

.ttth1 {
	background-color: #384452;
	width: 10%;
	border-color: black;
	padding: 8px;
	text-align: center;
	color: white;
}

.ttth2 {
	background-color: #384452;
	width: 30%;
	border-color: black;
	padding: 8px;
	text-align: center;
	color: white;
}

.ttth3 {
	background-color: #384452;
	width: 60%;
	border-color: black;
	padding: 8px;
	text-align: center;
	color: white;
}

.tttr {
	height: 90px;
}

.tttr:hover {
	background-color: highlight;
	cursor: pointer;
}

.a {
	width: 100%;
	display: inline-block;
}

.b {
	width: 100%;
	display: inline-block;
}

.c {
	width: 50%;
	float: left;
}

p {
	height: 10px;
}

.ta_center {
	text-align: center;
}

.pagination {
	position: relative;
	box-sizing: border-box;
}

.pagination a {
	width: 28px;
	height: 28px;
	line-height: 28px;
	vertical-align: middle;
	display: inline-block;
	text-align: center;
}

.pagination a.prev_all {
	background:
		url("http://unibell.jnkworks.com//img/common/paging_arr01.png")
		no-repeat center center;
}

.pagination a.prev {
	background:
		url("http://unibell.jnkworks.com//img/common/paging_arr02.png")
		no-repeat center center;
}

.pagination a.next {
	background:
		url("http://unibell.jnkworks.com//img/common/paging_arr03.png")
		no-repeat center center;
}

.pagination a.next_all {
	background:
		url("http://unibell.jnkworks.com//img/common/paging_arr04.png")
		no-repeat center center;
}

.pagination span {
	position: relative;
	display: inline-block;
	width: 28px;
	line-height: 28px;
	font-size: 13px;
	cursor: pointer;
}

.pagination span.active {
	color: #006d14;
	font-size: 13px;
	font-weight: bold;
}

.pagination span.active:after {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	border: 1px solid #006d14;
	content: "";
	display: block;
}

.pagination span:hover {
	color: #006d14;
	font-size: 13px;
	font-weight: bold;
	transition: .2s ease-in-out;
}

.pagination span:hover:after {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	border: 1px solid #006d14;
	content: "";
	display: block;
}
</style>
<script type="text/javascript">
  	$(document).ready(function() {
			
  		$("#approve").on("click", function(){
  			var form=document.postData;
  			input= document.createElement("input");
  			input.type="hidden";
  			input.name="action";
  			input.value="approve";
			form.appendChild(input);
			form.submit();
		});
  		$("#deny").on("click", function(){
  			input= document.createElement("input");
  			input.type="hidden";
  			input.name="action";
  			input.value="deny";
			$("#send").appendChild(input);
			$("#send").submit();
		});
	});
  </script>
</head>

<body>
	<% if(request.getAttribute("tmemberlist")!=null ){
		List<TeamMemberDTO> list = (List<TeamMemberDTO>)request.getAttribute("tmemberlist");
		if(list.size()>0){
%>


	<div class="container mtb">
		<div id="tsearchtotal">
			<form class="form-horizontal style-form" name="postData" id="send"
				action="/LPG/team/memdelete.do" method="POST">
				<input type="hidden" name="myTeamNo"
					value="<%= list.get(0).getTeamNo()%>">
				<div class="footer">
					<table id="tttable">
						<tr>
							<th class="ttth1">체크</th>
							<th class="ttth1">이름</th>
							<th class="ttth2">포지션</th>
							<th class="ttth3">실력</th>
						</tr>


						<%
			
			String teamname = "";
			
			for(int i=0;i<list.size();i++){
				
				TeamMemberDTO row = list.get(i);
				/* for(int j=0;j<list1.size();j++){
					TeamDTO row1=list1.get(j);
					if(row.getTeamNo()==row1.getTeamNo()){
						teamname=row1.getTeamName();
					}	
				} */
				 
			
			%>
						<!-- location.href='http://localhost:8088/LPG/team/myteam.do' -->
						<tr class="tttr">
							<td><input type="checkbox" name="teamNo"
								value="<%=row.getTmNo() %>"></input> <%-- <input type="hidden" value="<%=Integer.parseInt(row.getTmNo()) %>"> --%>
							</td>
							<td class="tttd"><%= row.getUserName() %></td>
							<td class="tttd"><%= row.getTmTend() %></td>
							<td class="tttd"><%= row.getTmAbility() %></td>

						</tr>

						<%} 
				}else{%>
					<h1> 신청한 팀원이 없습니다. </h1>
				<%}
			} else{%>
					<h1> 신청한 팀원이 없습니다. </h1>
				<%}%>
					</table>
					<input type="button" id="approve" style="width: 100px" value="승인">
					<input type="button" id="deny" style="width: 100px" value="거절">
				</div>
			</form>
		</div>
	</div>

</body>
</html>
