<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@page import="game.LPG.sportsMatch.MatchDetailDTO"%>
<%@page import="java.util.List"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<head>
<meta charset="UTF-8">
<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

.myimg {
	display: inline-block;
	width: 33%;
	height: auto;
	margin: 0;
	padding: 0;
}
</style>
<script type="text/javascript">
	
</script>
</head>

<body>

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<% List<MatchDetailDTO> list = (List<MatchDetailDTO>)request.getAttribute("matchlist"); %>
	<div class="container centered">
		<div>
			<div class="hline"></div>
			<h2>팀 매치 목록</h2>
			<div class="hline"></div>
			<!-- <div class="mbsc-page demo-week-view">
				<div class="mbsc-form">
					<div class="mbsc-form-group">
						<div id="demo-one-week"></div>
					</div> -->
			<!-- 	</div>
			</div> -->
		</div>
	</div>
	<div id="portfoliowrap">
		<div class="portfolio-centered container">
			<div class="recentitems portfolio" data-animate="fadeIn">
				<!-- 중심 -->
				<% for(int i=0;i<list.size();i++){ 
						MatchDetailDTO match = list.get(i);
						SportsMatchDTO sm = match.getSportsMatch();
						List<TeamDTO> teamList = match.getTeam();
						if(teamList.size()==1){
							TeamDTO team = teamList.get(0);
				%>
				<div class="graphic-design">
					<div class="he-wrap tpl6" <% if(sm.getMchUrgent().equals("긴급")){%>style="border: 3px solid red;"<%} %>>
						<img src="/LPG/img/<%= team.getTeamEmblem()%>" alt="팀앰블럼" class="myimg"> 
						<img src="/LPG/img/portfolio/versus.jpg" alt="" class="myimg">
						<img src="/LPG/img/wanted.png" alt="상대팀없음" class="myimg">
							<div class="he-view">
							<div class="bg a0 detailGo">
								<h3 class="a1" data-animate="fadeInDown" style="word-spacing: 350px">HOME VS AWAY</h3>
								<h4 class="a1" data-animate="fadeInDown" style="word-spacing: 308px;">
									<%= team.getTeamName() %> <%= sm.getMchGrd()%> 팀구함</h4>
								<input type="hidden" id="mchNo<%= i %>" name="mchNo" value="<%= sm.getMchNo() %>">
				<% 		}else{ 
							TeamDTO team1 = teamList.get(0);
							TeamDTO team2 = teamList.get(1);
				%>
				<div class="graphic-design">
					<div class="he-wrap tpl6" <% if(sm.getMchUrgent().equals("긴급")){%>style="border: 3px solid red;"<%} %>>								
						<img src="/LPG/img/<%= team1.getTeamEmblem()%>" alt="팀앰블럼" class="myimg"> 
						<img src="/LPG/img/portfolio/versus.jpg" alt="" class="myimg">
						<img src="/LPG/img/<%= team2.getTeamEmblem()%>" alt="팀앰블럼" class="myimg">
						<div class="he-view">
							<div class="bg a0 detailGo">
								<h3 class="a1" data-animate="fadeInDown" style="word-spacing: 350px">HOME VS AWAY</h3>
								<h4 class="a1" data-animate="fadeInDown" style="word-spacing: 308px;">
									<%= team1.getTeamName() %> <%= sm.getMchGrd()%> <%= team2.getTeamName() %></h4>
							<% 	 
						}%>	
								<input type="hidden" id="mchNo<%= i %>" name="mchNo" value="<%= sm.getMchNo() %>">
							</div>
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->
				<% } %>
			</div>
			<!-- portfolio -->
			<!-- 중심 -->
		</div>
		<!-- portfolio container -->
	</div>
	<!--/Portfoliowrap -->
	<script type="text/javascript">
	/* mchNo의 div에서 this의 find> input해서 attr값을 mchNo에 넣어준다. */
		$(document).ready(function() {
			$(".detailGo").on("click", function(){
				mchNo = $(this).children().last().attr("value");
				location.href="/LPG/match/mchTeamDetail.do?mchNo="+mchNo;
			});
		});
	</script>
</body>
</html>