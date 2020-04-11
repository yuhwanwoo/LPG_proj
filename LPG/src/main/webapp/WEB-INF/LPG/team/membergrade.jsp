<%@page import="java.util.ArrayList"%>
<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		#mgradetotal{
			display: inline-block;
			width: 100%;
			padding: 10px;
			text-align: center;
		}
		#mgradesubmit{
			float: right;
			margin-right: 50px;
			margin-top: 20px;
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
	width: 20%;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#6d6d6d');
	color:#FFFFFF;
	text-align:center;
	padding:8px;
	border-bottom:1px solid #efefef;
	border-collapse:collapse;
	border-left: none;
	border-right: none;
}
#total{
width: 60%;
}
</style>
</head>

<body>
<% ArrayList<TeamMemberDTO> tmlist = (ArrayList<TeamMemberDTO>)request.getAttribute("tmlist"); %>

	<div class="container mtb" id="total">
		<form action="/LPG/team/teamMemMody.do" method="post" name="form">
			<div id="mgradetotal">
				<h1>팀원 정보 수정</h1>
				<table id="tttable">
								<tr id="theader">
									<th class="ttth">이름</th>
									<th class="ttth">등급</th>
									<th class="ttth">포지션</th>
									<th class="ttth">실력</th>
									<th class="ttth">백넘버</th>
								</tr>
								
								<%
								for(int i=0;i<tmlist.size();i++){
									TeamMemberDTO tml = tmlist.get(i);
									String tmTend = tml.getTmTend();
									String tmGrade = tml.getTmGrade();
									String tmAbility = tml.getTmAbility();
									
									
								%>
								<tr class="tttr">
									<td class="tttd">
										<span><%= tml.getUserName()%></span>
										<input type="hidden" name="meminfo[<%= i %>].tmNo" value="<%= tml.getTmNo()%>">
									</td>
									<td class="tttd">
										<select class="tmGrade" id="tmGrade" name="meminfo[<%= i %>].tmGrade">
											<option value="매니저">매니저</option>
											<option value="주장">주장</option>
											<option value="팀원">팀원</option>
										</select>
									</td>
									<td class="tttd">
										<select class="tmTend" id="tmTend" name="meminfo[<%= i %>].tmTend">
											<option value="공격수">공격수</option>
											<option value="수비수">수비수</option>
											<option value="골키퍼">골키퍼</option>
										</select>
									</td>
									<td class="tttd">
										<select class="tmAbility" id="tmAbility" name="meminfo[<%= i %>].tmAbility">
											<option value="상">상</option>
											<option value="중">중</option>
											<option value="하">하</option>
										</select>
									</td>
									<td class="tttd">
										<input type="text" name="meminfo[<%= i %>].backNum" class="backNum" id="backNum" placeholder="<%= tml.getBackNum() %>">
									</td>
								</tr>
							<% } %>
							</table>
				
			</div>
			<input type="submit" value="변경하기" id="mgradesubmit" class="mgradesubmit">
		</form>
	</div>
</body>
</html>