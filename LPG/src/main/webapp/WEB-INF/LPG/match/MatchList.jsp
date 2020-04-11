<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

#myfix {
	position: fixed;
	bottom: 0px;
	right: 0px;
	width: 20%;
	font-size: 25px;
}

.btn-theme2 {
	color: #fff;
	background-color: #00b3fe;
	border-color: #00b3fe;
	margin: 4px;
}

.btn-theme2:hover, .btn-theme2:focus, .btn-theme2:active, .btn-theme2.active,
	.open .dropdown-toggle.btn-theme {
	color: #fff;
	background-color: orange;
	border-color: orange;
}
</style>
<!-- 내가 추가한 링크 -->
<!-- Main Stylesheet File -->
<link href="/LPG/css/radio.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/LPG/lib/dist/hello.week.css" />
<!-- <link rel="stylesheet" type="text/css" href="/LPG/lib/dist/hello.week.min.css" /> -->
<link rel="stylesheet" type="text/css" href="/LPG/lib/dist/hello.week.theme.min.css" />
<!-- <link rel="stylesheet" type="text/css" href="/LPG/lib/dist/default.theme.css" /> -->
<script type="module" src="/LPG/lib/dist/hello-week.js" ></script>
<script type="text/javascript">
	mchDate = null;
</script>
<script type="module">
	import {HelloWeek} from '/LPG/lib/dist/hello-week.js';
	const myCalendar = new HelloWeek({
		format: 'YY/MM/DD',
      	todayHighlight: false,
      	disablePastDays: true,
     	multiplePick: false,
     	onSelect: () => {
			mchDate = myCalendar.getDaySelected();
      }
	});
	
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#sub").on("click", function(){
			grdArea = $("#area").val();
			mchName = $("#mchName").val();
			mchType = $("input:radio[name='mchType']:checked").val();
			mchPlay = $("input:radio[name='mchPlay']:checked").val();
			location.href="/LPG/match/list.do?mchType="+mchType+"&mchPlay="+mchPlay+"&grdArea="
					+grdArea+"&mchName="+mchName+"&mchDate="+mchDate;
			/* $.get("/LPG/match/list.do", {"mchName":$("#mchName").val(),"mchDate":$("#mchDate").val(),
				"mchPlay":$("#mchPlay").val(),"mchType":$("#mchType"),"grdArea":$("#grdArea").val()}); */
		});
	});
</script>
</head>
<!-- https://hello-week.now.sh/#/docs/v2/get-clicked-date -->
<body>
	<!-- *****************************************************************************************************************
	 TITLE & CONTENT
	 ***************************************************************************************************************** -->
	<form action="">
		<div class="container mtb">
			<div class="row centered">
				<h2>경기일자</h2>
				<div id="mchDate" name="mchDate" class="hello-week">
				    <div class="navigation"></div>
				    <div class="week"></div>
				    <div class="month"></div>
				</div>
			</div>
			<div class="row contact-form">
				<div class="col-lg-2 form-group">
			 		<h2>매치타입</h2>
			 		<div id="mchType">
						<input type="radio" id="team" name="mchType" value="0" checked>
							<label for="team">팀 매치</label>
						<input type="radio" id="indiv" name="mchType" value="1">
							<label for="indiv">개인 매치</label>
					</div>
				</div>
				<div class="col-lg-2">
					<h2>경기종목</h2>
					<div class="form-group">
						<input type="radio" id="all" name="mchPlay" value="" checked>
						<label for="all">전체</label> 
						<input type="radio" id="soccer"	name="mchPlay" value="축구"> 
						<label for="soccer">축구</label> 
						<input type="radio" id="futsal" name="mchPlay" value="풋살"> 
						<label for="futsal">풋살</label>
					</div>
				</div>
				<div class="col-lg-4">
					<h2>경기지역</h2>
					<div id="grdArea" class="ui-widget form-group-sm">
						<input id="area" name="grdArea" placeholder="지역을 입력하세요" class="form-control">
						<label for="area"></label>
					</div>
				</div>
				<div class="col-lg-4">
					<h2>매치제목</h2>
					<div id="mchName" class="form-group-sm">
					<input type="text" name="mchName" class="form-control">
					</div>
				</div>
			</div>
			<div class="row centered">
				<input type="button" id="sub" value="매치검색" class="btn btn-theme"
					style="width: 50%">
			</div>
		</div>
	</form>
	<div id="myfix">
		<a href="/LPG/match/matchResist.do" class="btn btn-block btn-theme2">새 매치 등록</a>
	</div>
	
	<!-- JavaScript 직접추가 -->

	<script>
		$(function() {
			var availableTags = [ "종로구", "중구", "용산구", "성동구",
					"광진구", "동대문구", "중랑구", "성북구", "강북구",
					"도봉구", "노원구", "은평구", "서대문구", "마포구",
					"양천구", "강서구", "구로구", "금천구", "영등포구",
					"동작구", "관악구", "서초구", "강남구", "송파구",
					"강동구" ];
			$("#area").autocomplete({
				source : availableTags
			});
		});
	</script>
	
</body>
</html>
