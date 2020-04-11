<%@page import="game.LPG.ground.GroundDTO"%>
<%@page import="game.LPG.sportsMatch.MatchDetailDTO"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

.myimg {
	display: inline-block;
	margin: 0;
	padding: 0;
}

table {
	width: 100%;
	border: 1px solid #444444;
}

th, td {
	border: 1px solid #444444;
}
</style>
</head>

<body>

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<% List<MatchDetailDTO> list = (List<MatchDetailDTO>)request.getAttribute("matchlist"); %>
	<div class="container centered">
		<div>
			<div class="hline"></div>
			<h2>개인 매치 목록</h2>
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
			<div class="recentitems" data-animate="fadeIn">
				<table>
					<tbody>
						<% for(int i=0;i<list.size();i++){
							MatchDetailDTO match = list.get(i);
							SportsMatchDTO sm = match.getSportsMatch();
							GroundDTO ground = match.getGround();
						%>
						
						<tr>
							<td>
								<div class="graphic-design">
									<div class="he-wrap tpl6">
										<div class="row">
											<div class="col-lg-3">
												<div class="row" style="float: left;margin-left: 15px"><h4>경기제목: <%= sm.getMchName() %></h4></div>
												<div class="row" style="float: left;margin-left: 15px"><h4>경기시간: <%= sm.getMchDate() %></h4></div>
											</div>
											<div class="col-lg-7">
												<div class="row" style="text-align: left;margin-left: 15px "><h4>구장: <%= sm.getMchGrd() %></h4></div>
												<% if(sm.getMchGender().equals("0")){ %>
												<div class="row" style="text-align: left;margin-left: 15px "><h4>매치성별 : 남성매치 </h4></div>
												<% } else if(sm.getMchGender().equals("1")){%>
												<div class="row" style="text-align: left;margin-left: 15px "><h4>매치성별 : 여성매치 </h4></div>
												<% } else{%>
												<div class="row" style="text-align: left;margin-left: 15px "><h4>매치성별 : 혼성매치 </h4></div>
												<% }%> 
												<div class="row" style="text-align: left;margin-left: 15px "><h4>매치수준 : <%= sm.getMchAbil() %></h4></div> 
											</div>
											<div class="col-lg-1">
												<input type="button" class="btn btn-theme" value="매치신청" style="margin-top: 35px">
											</div>
										</div>
										<div class="he-view">
											<div class="bg a0 detailGo">
												<img src="/LPG/img/portfolio/portfolio_09.jpg" alt="구장사진"
													class="myimg">
												<input type="hidden" id="mchNo" name="mchNo" value="<%= sm.getMchNo() %>">
											</div>
											<!-- he bg -->
										</div>
										<!-- he view -->
									</div>
									<!-- he wrap -->
								</div>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
			</div>
			<!-- portfolio -->
			<!-- 중심 -->
		</div>
		<!-- portfolio container -->

	</div>
	<!--/Portfoliowrap -->
	<script type="text/javascript">
	$(document).ready(function() {
		$(".detailGo").on("click", function(){
			mchNo = $(this).children().last().attr("value");
			location.href="/LPG/match/mchIndvDetail.do?mchNo="+mchNo;
		});
	});
	</script>
</body>
</html>