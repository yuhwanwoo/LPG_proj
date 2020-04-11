<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table{
	border: 1px solid;
	border-collapse: collapse;
	text-align: center;
	width: 80%;
	margin-left: 50px;
	}
	th,td{
	border: 1px solid;
	border-collapse: collapse;
	}
	#result tr th{
	width: 20%;
	text-align: center;
	}
	#exit{
	float: right;
	margin-right: 50px;
	}
</style>
</head>
<body>
<% TeamMemberDTO member = (TeamMemberDTO)request.getAttribute("teammeminfo"); %>
<table>
		<tr>
			<td>등급</td>
			<td><%= member.getTmGrade() %></td>
		</tr>
		<tr>
			<td>백넘버</td>
			<td><%= member.getBackNum() %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td>20</td>
		</tr>
		<tr>
			<td>포지션</td>
			<td><%= member.getTmTend() %></td>
		</tr>
		<tr>
			<td>실력</td>
			<td><%= member.getTmAbility() %></td>
		</tr>
		<tr>
			<td>주발</td>
			<td>왼발</td>
		</tr>
		<tr>
			<td>팀 가입날짜</td>
			<td><%= member.getTmJoindate() %></td>
		</tr>
	</table>
	<table id="result">
		<tr>
			<th rowspan="2">팀 게임 횟수</th>
			<th rowspan="2">승률</th>
			<th rowspan="2">골</th>
			<th rowspan="2">어시스트</th>
			<th colspan="2">평점</th>
		</tr>
		<tr>
			<td>기여도</td>
			<td>매너</td>
		</tr>
		<tr>
			<td>20</td>
			<td>60%</td>
			<td>4</td>
			<td>3</td>
			<td>8</td>
			<td>7</td>
		</tr>
	</table>
<input type="button" id="exit" value="나가기" onclick="window.close()">
</body>
</html>