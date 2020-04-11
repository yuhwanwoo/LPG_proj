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
			<td class="colum" >등급</td>
			<td><%= member.getTmGrade() %></td>
		</tr>
		<tr>
			<td class="colum" >백넘버</td>
			<td><%=member.getBackNum() %></td>
		</tr>
		<tr>
			<td class="colum" >나이</td>
			<td>나이</td>
		</tr>
		<tr>
			<td class="colum" >포지션</td>
			<td><%=member.getTmTend() %></td>
		</tr>
		<tr>
			<td class="colum" >성향</td>
			<td>성향</td>
		</tr>
		<tr>
			<td rowspan="2">이름</td>
			<td class="colum" >주발</td>
			<td>주발</td>
		</tr>
		<tr>
			<td class="colum" >팀 가입날짜</td>
			<td><%= member.getTmJoindate() %></td>
		</tr>
	</table>
	<br/>
	<table>
		<tr class="colum" >
			<td rowspan="2">팀 게임 횟수</td>
			<td rowspan="2">승률</td>
			<td rowspan="2">골</td>
			<td rowspan="2">어시스트</td>
			<td colspan="2">평점</td>
		</tr>
		<tr>
			<td class="cont">기여도</td>
			<td class="mann">매너</td>
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
	<input class="btn btn-theme"  type="button" value="나가기" onclick="window.close()">
</body>
</html>