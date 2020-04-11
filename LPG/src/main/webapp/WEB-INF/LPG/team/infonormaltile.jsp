<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>


<style type="text/css">
table, th, td {
	border: 1px solid;
	border-collapse: collapse;
}

.emblum {
	background-color: blue;
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	width: 170px;
	height: 170px;
	border-radius: 100px;
}

.team_info_name {
	background-color: red;
	padding: 7px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 30px;
	text-align: center;
	width: 200px;
	color: white;
}

.team_img {
	background-color: #e0e0e0;
	width: 40%;
	height: 300px;
	float: left;
}

.team_info {
	float: left;
	width: 60%;
	height: 100%;
}
.footer {
	clear: both;
	padding-top: 10px;
}

#tttable {
	border-collapse: collapse;
	width: 100%;
	padding:8px;
	text-align: center;
	border-bottom:1px solid #efefef;
	border-left: none;
	border-right: none;
}

.tttd {
	padding: 8px;
	text-align:center;
	border-bottom:1px solid #efefef;
	border-collapse:collapse;
	border-left: none;
	border-right: none;
}

.tttr:nth-child(even){
	background-color:#fdfdfd;
	}
.tttr:nth-child(odd){
	background-color:#e8e8e8;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#aaaaaa', endColorstr='#eeeeee');
	}
.ttth {
	background-color:#384452;
	width: 33%;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#6d6d6d');
	color:#FFFFFF;
	text-align:center;
	padding:8px;
	border-bottom:1px solid #efefef;
	border-collapse:collapse;
	border-left: none;
	border-right: none;
}


.ttrr {
	height: 35px;
	text-align: center;
}

.ttr {
	height: 79px;
	text-align: left;
}

.ttrr td {
	width: 50%;
}
.tttr:hover{
		  background-color: #ccccff;
		  cursor: pointer;
		}
		
	#teamyear{
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	}
	#teamyear tr th{
	width: 20%;
	}
	.year{
	width: 100%;
	}
	#team_month_result{
	width: 70%;
	margin-left: auto;
	margin-right: auto;
	height: 160px;
	}
	.matchteam{
	float: left;
	margin-left: 30px;
	margin-top: 5px;
	margin-bottom: 5px;
	}
	.mrecord{
	height: 35px;
	}
	#team_info, #team_manner{
	padding-left: 20px;
	}
	.imm{
	margin-top: 30px;
	margin-left: auto;
	margin-right: auto;
	width: 170px;
	height: 170px;
	border-radius: 100px;
	position: relative;bottom: 30px;
	}
</style>
</head>
<body>
<% TeamDTO list = (TeamDTO)request.getAttribute("teaminfo");%>
<% ArrayList<TeamMemberDTO> tmlist = (ArrayList<TeamMemberDTO>)request.getAttribute("tmlist");%>
<% TeamMemberDTO tminfo = (TeamMemberDTO)request.getAttribute("teammeminfo"); %>
<%
String teamage = "";
if(list.getTeamAge().equals("0")){
	teamage = "제한없음";
}else if(list.getTeamAge().equals("10")){
	teamage = "10대";
}else if(list.getTeamAge().equals("20")){
	teamage = "20대";
}else if(list.getTeamAge().equals("30")){
	teamage = "30대";
}else if(list.getTeamAge().equals("40")){
	teamage = "40대";
}else if(list.getTeamAge().equals("50")){
	teamage = "50대이상"; 	
}
String ts = "";
if(list.getTeamStrategy()==null || list.getTeamStrategy().equals("000")){
	ts="없음";
}else if(list.getTeamStrategy().equals("541")){
	ts = "5-4-1";
}else if(list.getTeamStrategy().equals("532")){
	ts = "5-3-2";
}else if(list.getTeamStrategy().equals("451")){
	ts = "4-5-1";
}else if(list.getTeamStrategy().equals("442")){
	ts = "4-4-2";
}else if(list.getTeamStrategy().equals("433")){
	ts = "4-3-3";
}else if(list.getTeamStrategy().equals("361")){
	ts = "3-6-1";
}else if(list.getTeamStrategy().equals("352")){
	ts = "3-5-2";
}else if(list.getTeamStrategy().equals("343")){
	ts = "3-4-3";
}
%>
	<div class="container mt" style="margin-bottom: 50px">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 centered">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<div>
						<a href="/LPG/team/apply.do" class="btn btn-theme" style="float: right">가입신청</a>
					</div>
					</div>
					<div style="clear: both;">
						<div class="team_img">
							<div class="emblum" id="emblum">
								<img class="imm" alt="" src="../img/2.PNG" title="사진을 넣어주세요"><%-- <%= list.getTeamEmblem() %> --%>
							</div>
							<h2 class="team_info_name"><%= list.getTeamName() %></h2>
						</div>
						<div>
							<table class="team_info">
								<tr class="ttrr">
									<td><label>지역</label> | <span><%= list.getTeamLocation() %></span></td>
									<td><label>팀원 수</label> | <span> <%= list.getCount() %>명</span></td>
								</tr>
								<tr class="ttrr">
									<td><label>주 활동구장</label> | <span></span></td>
									<td><label>경기유형</label> | <span><%= list.getTeamPre() %></span></td>
								</tr>
								<tr class="ttrr">
									<td><label>실력</label> | <span><%= list.getTeamAbility() %></span></td>
									<td><label>연령 제한</label> | <span><%= teamage %></span></td>
								</tr>
								<tr class="ttrr">
									<td><label>유니폼 설명</label> | <span><%= list.getTeamUniform() %></span></td>
									<td><label>주 전술</label> | <span><%= ts %></span></td>
								</tr>
								<tr class="ttr">
									<td colspan="2">
										<div id="team_info"><%= list.getTeamIntroduce() %></div>
									</td>
								</tr>
								<tr class="ttr">
									<td colspan="2">
										<div id="team_manner"><%= list.getTeamManner() %></div>
									</td>
								</tr>
							</table>
						</div>
							<div class="footer">
								<%if(list.getMemberPrivate().equals("0")){ %>
								<table id="tttable">
									<tr>
										<th class="ttth">이름</th>
										<th class="ttth">등급</th>
										<th class="ttth">포지션</th>
									</tr>
									<%
									for(int i=0;i<tmlist.size();i++){
										TeamMemberDTO tml = tmlist.get(i);
										
									%>
									<tr class="tttr" >
										<td class="tttd"><a href="/LPG/team_membe.do?tmNo=<%= tml.getTmNo()%>"><%= tml.getUserName() %></a></td>
										<td class="tttd"><a href="/LPG/team_membe.do?tmNo=<%= tml.getTmNo()%>"><%= tml.getTmGrade() %></a></td>
										<td class="tttd"><a href="/LPG/team_membe.do?tmNo=<%= tml.getTmNo()%>"><%= tml.getTmTend() %></a></td>
									</tr>
									<% } %>
								</table>
						<% }else{ %>
							<div class="footer">
								<h1>멤버 정보 : 비공개</h1>
						<% } %>
					</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
