<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<style type="text/css">
table {
	width: 150%; 
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


</head>

	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->
<script>

$(document).ready(function(){
	
	//최초 페이지 로딩 시 '전체' 조회
	fn_searchList('2');
	
	$("#btn_charge").click(function () {
		fn_searchList('0');
	})
	
	$("#btn_use").click(function () {
		fn_searchList('1');
	})
	
	$("#btn_all").click(function () {
		fn_searchList('2');
	})
})


function fn_searchList(gbn){ //fn_searchList('use')
	$("#pointCheck").val(gbn); //이 id를 가진 태그에 value값으로 gbn을 넣어라
	var form_serialize = $("#global_form").serialize();
		$.ajax({
			url: '/LPG/point/search_mypoint.do',
			data: form_serialize,
			type: 'POST',
			cache: false,
			success: function(jsonList){
				$(".none").remove();
				for(var i=0; i<jsonList.length; i++){
					
					$("#list").append(
							'<tr class= "none">'+
								'<td>'+(i+1)+'</td>'+
								'<td>'+jsonList[i].pointPrice+'</td>'+
								'<td>'+jsonList[i].pointUse+'</td>'+
								'<td>'+jsonList[i].pointUseDate.substring(0,10)+'</td>'+
								'<td>'+jsonList[i].pointHistory+'</td>'+
							'</tr>'
					);
				}
			}
	})
}

</script>	 
<body>
	<% UserDTO user = (UserDTO) session.getAttribute("loginUserInfo");%>
	
	<!-- 조회내역보기 -->
	<div class="container mtb">
		<div class="row">
			<form id="global_form" name="global_form" method="post">
			<input type="hidden" id="pointCheck" name ="pointCheck">
			<input type="hidden" id="userId" name="userId" value="<%=user.getUserId()%>">
			<div class="col-lg-8">
				 <span>
					<input type="button" class="btn btn-theme" id="btn_charge" value="충전내역"/>
					<input type="button" class="btn btn-theme" id="btn_use" value="사용내역"/>
					<input type="button" class="btn btn-theme" id="btn_all" value="모두보기"/>
				</span>
				<table id="list" class="table7_1">
					<tr>
						<th>번호</th>
						<th>사용가격</th>
						<th>충전/사용</th>
						<th>충전/사용 날짜</th>
						<th>내용</th>
					</tr>
				</table>
			
			</div>
			</form>
		</div>
	</div>
</body>
</html>
