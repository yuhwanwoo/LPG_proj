<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<script type="text/javascript">

</script>
<style type="text/css">
.btn-theme {
	color: #fff;
	background-color: #384452;
	border-color: #384452;
	margin: 4px;
	width: 20%;
}

.btn-theme:hover, .btn-theme:focus, .btn-theme:active, .btn-theme.active,
	.open .dropdown-toggle.btn-theme {
	color: #fff;
	background-color: #00b3fe;
	border-color: #00b3fe;
}
</style>
</head>

<body>

	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->
	<%
  	UserDTO user = (UserDTO) session.getAttribute("loginUserInfo");
  	%>
	<div class="container mtb">
			<form action="/LPG/user/myinfoPWCheck.do" method="post">
			<div class="col-lg-8">
				<h3>비밀번호 입력</h3>
				<input type="hidden" id="userId" name="userId" value="<%=user.getUserId()%>"> 
				<span><input type="password" id="userPwd" name="userPwd" placeholder="비밀번호 입력" maxlength="20">
				<input type="submit" class="btn-theme" value="인증하기"></span>
			</div>
			</form>
		</div>
</body>
</html>
