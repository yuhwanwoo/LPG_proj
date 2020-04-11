<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/style.css">

<script src="https://ajax.googleapis.c
om/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	contentnum="${contentnum}";
	pagenum="${pagenum}";
	$(document).ready(function(){
		
		$("#contentnum").val(contentnum).attr("selected","selected")
		pagenum=1;
		$("#contentnum").change(function(){
			location.href="${pageContext.request.contextPath}/match/mgrMatchList.do?pagenum="+pagenum+"&contentnum="+encodeURI($(this).val());
			$("#contentnum").val(contentnum).attr("selected","selected")
		});
	});
	function page(idx){
		var pagenum=idx;
		var contentnum=$("#contentnum option:selected").val();
		location.href="${pageContext.request.contextPath}/match/mgrMatchList.do?pagenum="+pagenum+"&contentnum="+contentnum;
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
	background-color: #384452;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#000000',
		endColorstr='#6d6d6d');
	color: #FFFFFF
}

.table7_1, .table7_1 th, .table7_1 td {
	font-size: 0.95em;
	text-align: center;
	padding: 4px;
	border-bottom: 1px solid #efefef;
	border-collapse: collapse
}

.table7_1 tr:nth-child(odd) {
	background-color: #e8e8e8;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#aaaaaa',
		endColorstr='#eeeeee');
}

.table7_1 tr:nth-child(even) {
	background-color: #fdfdfd;
}

.btn-theme {
	color: #fff;
	background-color: #384452;
	border-color: #384452;
	margin: 4px;
}

.btn-theme:hover, .btn-theme:focus, .btn-theme:active, .btn-theme.active,
	.open.dropdown-toggle.btn-theme {
	color: #fff;
	background-color: #7589a2;
	border-color: #7589a2;
}
</style>
<link href="../img/favicon.png" rel="icon">
<link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="../lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
<link href="../lib/hover/hoverex-all.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="../css/style.css" rel="stylesheet">

</head>
<body>
	<div ><h2>매치 신청 현황</h2></div>
	<select name="contentnum" id="contentnum" >
 
	  <option value="2" >2</option>
		<option value="5" >5</option>
		<option value="10" >10</option>

	 </select>
	<table class=table7_1>
		
		<thead>
			<tr class="bann">
				<th>매치제목</th>
				<th>날짜</th>
				<th>구장</th>
				<th>평가</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach var="k" items="${list}">
				<tr>
					<td>${k.mchName}</td>
					<td>${k.mchDate}</td>
					<td>${k.mchGrd}</td>
					<td><a href="matchResist.do">Click</a></td>
				</tr>
				
			</c:forEach>	
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
					<c:if test="${page.prev}">
						<a style="text-decoration: none;" href="javascript:page(${page.getStartPage()-1 });">&laquo;</a>
					</c:if>
					<c:forEach begin="${page.getStartPage() }" end="${page.getEndPage() }" var="idx">
						<a style="text-decoration:none;" href="javascript:page(${idx});">${idx}</a>
					</c:forEach>
					<c:if test="${page.next}">
						<a style="text-decoration: none;" href="javascript:page(${page.getEndPage()+1 });">&raquo;</a>
					</c:if>
		
	</table>
	
</body>
</html>