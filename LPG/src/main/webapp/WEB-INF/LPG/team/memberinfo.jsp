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
			<td>���</td>
			<td><%= member.getTmGrade() %></td>
		</tr>
		<tr>
			<td>��ѹ�</td>
			<td><%= member.getBackNum() %></td>
		</tr>
		<tr>
			<td>����</td>
			<td>20</td>
		</tr>
		<tr>
			<td>������</td>
			<td><%= member.getTmTend() %></td>
		</tr>
		<tr>
			<td>�Ƿ�</td>
			<td><%= member.getTmAbility() %></td>
		</tr>
		<tr>
			<td>�ֹ�</td>
			<td>�޹�</td>
		</tr>
		<tr>
			<td>�� ���Գ�¥</td>
			<td><%= member.getTmJoindate() %></td>
		</tr>
	</table>
	<table id="result">
		<tr>
			<th rowspan="2">�� ���� Ƚ��</th>
			<th rowspan="2">�·�</th>
			<th rowspan="2">��</th>
			<th rowspan="2">��ý�Ʈ</th>
			<th colspan="2">����</th>
		</tr>
		<tr>
			<td>�⿩��</td>
			<td>�ų�</td>
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
<input type="button" id="exit" value="������" onclick="window.close()">
</body>
</html>