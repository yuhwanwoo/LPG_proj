<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" 
							href="../css/style.css">
<script type="text/javascript">
	function closee() {
		alert('평가를 skip합니다.');
		window.close();
	}
</script>

<style>
@import
	url('//cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css')
	;

body {
	font-family: 'NanumSquareRound', sans-serif;
}

html {
	overflow: scroll;
}

table, th, td {
	border-collapse: collapse;
	height: 40px;
}

table {
	width: 100%;
	text-align: center;
	
}

.bann {
	background-color: #D5D5D5;
}

.cont {
	background: #B7F0B1;
}

.mann {
	background: #FFB2F5;
}

input.btn-modal:hover {
	cursor: pointer;
}

input.btn-modal.btn-continue {
	background-color: #8bc63e;
	border: 0px;
	margin: 1% 0;
}

input.btn-modal.btn-close {
	background-color: inherit;
	border: 1px solid #030000;
	color: #030000;
	font-weight: 400;
}

.modal-header .close {
	font-size: 3.5em;
}
.table7_1 th {
		background-color:#384452;
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000', endColorstr='#6d6d6d');
		color:#FFFFFF
	}
	.table7_1,.table7_1 th,.table7_1 td
	{
		font-size:0.95em;
		text-align:center;
		padding:4px;
		border-bottom:1px solid #efefef;
		border-collapse:collapse
	}
	.table7_1 tr:nth-child(odd){
		background-color:#e8e8e8;
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#aaaaaa', endColorstr='#eeeeee');
	}
	.table7_1 tr:nth-child(even){
		background-color:#fdfdfd;
	}
		.btn-theme {
	  color: #fff;
	  background-color: #384452;
	  border-color: #384452;
	  margin: 4px;
	}
	.btn-theme:hover,
	.btn-theme:focus,
	.btn-theme:active,
	.btn-theme.active,
	.open.dropdown-toggle.btn-theme {
	  color: #fff;
	  background-color: #7589a2;
	  border-color: #7589a2;
	}
</style>
<link href="../img/favicon.png" rel="icon">
  <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="../lib/hover/hoverex-all.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../css/style.css" rel="stylesheet">

</head>
<body>
	<form method="post" action="">
		<table class=table7_1>
			<caption>매치 신청 현황</caption>
			<tr class="bann">
				<th>선택</th>
				<th>팀이름</th>
				<th>날짜</th>
				<th>구장</th>
				<th>지역</th>
				<th>수락여부</th>
				
			</tr>
			
			<tr>
				<td><input type="checkbox"></td>
				<td>아스날</td>
				<td>2019/01/28</td>
				<td>역삼풋살장</td>
				<td>서울 강남구</td>
				<td>Y</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>바르셀로나</td>
				<td>2019/01/29</td>
				<td>마포체육관</td>
				<td>서울 마포구</td>
				<td>N</td>
			</tr>
		</table>
		<input class="btn btn-theme" type="button" value="신청취소"
			onclick="closee()" /> <input class="btn btn-theme" type="submit" value="닫기">
	</form>
</body>
</html>