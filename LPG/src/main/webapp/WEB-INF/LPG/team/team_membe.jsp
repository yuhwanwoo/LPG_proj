<%@page import="org.apache.ibatis.session.RowBounds"%>
<%@page import="game.LPG.soccerteam.TeamMemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" 
							href="../css/style.css">
	<style type="text/css">
	html{
 				overflow: scroll;
 			}
 			@import url('//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css');
	body{
		font-family:'NanumSquareRound',sans-serif;
	}
           table, th, td {
           border : 1px solid black;
           border-collapse: collapse;
           height:40px;
            }
            table{
            	width: 100%;
            	
            	text-align: center;
            	
            
            	}
            .colum{
            	font-weight: bold;
            	background: #D5D5D5;
            }
            .cont{
            	background: #B7F0B1;
            }
            .mann{
            	background: #FFB2F5;
            }
	</style>
	
</head>
<body>
<% TeamMemberDTO member = (TeamMemberDTO)request.getAttribute("teammeminfo"); %>
	<table>
		<tr>
			<td rowspan="5"><img src="../img/favicon.png" width="100" height="100"></td>
			<td class="colum" >���</td>
			<td><%= member.getTmGrade() %></td>
		</tr>
		<tr>
			<td class="colum" >��ѹ�</td>
			<td><%=member.getBackNum() %></td>
		</tr>
		<tr>
			<td class="colum" >����</td>
			<td>����</td>
		</tr>
		<tr>
			<td class="colum" >������</td>
			<td><%=member.getTmTend() %></td>
		</tr>
		<tr>
			<td class="colum" >����</td>
			<td>����</td>
		</tr>
		<tr>
			<td rowspan="2">�̸�</td>
			<td class="colum" >�ֹ�</td>
			<td>�ֹ�</td>
		</tr>
		<tr>
			<td class="colum" >�� ���Գ�¥</td>
			<td><%= member.getTmJoindate() %></td>
		</tr>
	</table>
	<br/>
	<table>
		<tr class="colum" >
			<td rowspan="2">�� ���� Ƚ��</td>
			<td rowspan="2">�·�</td>
			<td rowspan="2">��</td>
			<td rowspan="2">��ý�Ʈ</td>
			<td colspan="2">����</td>
		</tr>
		<tr>
			<td class="cont">�⿩��</td>
			<td class="mann">�ų�</td>
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
	<input class="btn btn-theme"  type="button" value="������" onclick="window.close()">
</body>
</html>