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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.form').find('input, textarea').on('keyup blur focus', function(e) {

			var $this = $(this), label = $this.prev('label');

			if (e.type === 'keyup') {
				if ($this.val() === '') {
					label.removeClass('active highlight');
				} else {
					label.addClass('active highlight');
				}
			} else if (e.type === 'blur') {
				if ($this.val() === '') {
					label.removeClass('active highlight');
				} else {
					label.removeClass('highlight');
				}
			} else if (e.type === 'focus') {

				if ($this.val() === '') {
					label.removeClass('highlight');
				} else if ($this.val() !== '') {
					label.addClass('highlight');
				}
			}
		});
		$("#btn_join").click(function(){
			var userPwd = $("#userPwd").val();
			var userPwd_chk = $("#userPwd_chk").val();
			
			//비밀번호 유효성 검사.
			//영문, 특수문자, 숫자가 무조건 포함되는 조합으로 8자~20자 가능
			var pwd = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,}$/;
			if(!fn_check(pwd, userPwd, "비밀번호를 올바르게 작성해주세요.")){return;}
			
			//비밀번호와 비밀번호 확인란 일치 여부 검사
			if(userPwd != userPwd_chk){ 
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			var form = $("#pw_form");
			 form.submit(); 
			 alert("수정완료")
			 location.href="/LPG/user/login.do";
		})
	}) 
	//생년월일 외 나머지 정규식 검사
	function fn_check(re, what, message) {
		if(re.test(what)) {
			return true;
		}else{
		alert(message);
		}
	}
</script>

<style type="text/css">
*, *:before, *:after {
	box-sizing: border-box;
}

html {
	overflow-y: scroll;
}

body {
	background-image: url("./img/football-3471402_1920.jpg");
	font-family: 'Titillium Web', sans-serif;
}

a {
	text-decoration: none;
	color: #1ab188;
	transition: .5s ease;
}

a:hover {
	color: #179b77;
}

.form {
	background: rgba(19, 35, 47, 0.9);
	padding: 40px;
	max-width: 600px;
	margin: 40px auto;
	border-radius: 4px;
	box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
	list-style: none;
	padding: 0;
	margin: 0 0 40px 0;
}

.tab-group:after {
	content: "";
	display: table;
	clear: both;
}

.tab-group li a {
	display: block;
	text-decoration: none;
	padding: 15px;
	background: rgba(160, 179, 176, 0.25);
	color: #a0b3b0;
	font-size: 20px;
	float: left;
	width: 50%;
	text-align: center;
	cursor: pointer;
	transition: .5s ease;
}

.tab-group li a:hover {
	background: #a2d6ee;
	color: #ffffff;
}

.tab-group .active a {
	background: #20a8ca;
	color: #ffffff;
}

.tab-content>div:last-child {
	display: block;
}

h1 {
	text-align: center;
	color: #ffffff;
	font-weight: 300;
	margin: 0 0 40px;
}

label {
	position: absolute;
	-webkit-transform: translateY(6px);
	transform: translateY(6px);
	left: 13px;
	color: rgba(255, 255, 255, 0.5);
	transition: all 0.25s ease;
	-webkit-backface-visibility: hidden;
	pointer-events: none;
	font-size: 22px;
}

label .req {
	margin: 2px;
	color: #1ab188;
}

label.active {
	-webkit-transform: translateY(50px);
	transform: translateY(50px);
	left: 2px;
	font-size: 14px;
}

label.active .req {
	opacity: 0;
}

label.highlight {
	color: #ffffff;
}


input, textarea {
	font-size: 22px;
	display: block;
	width: 80%;
	height: 100%;
	padding: 5px 10px;
	background: none;
	background-image: none;
	border: 1px solid #a0b3b0;
	color: #ffffff;
	border-radius: 0;
	transition: border-color .25s ease, box-shadow .25s ease;
}

input:focus, textarea:focus {
	outline: 0;
	border-color: #1ab188;
}

textarea {
	border: 2px solid #a0b3b0;
	resize: vertical;
}

.field-wrap {
	position: relative;
	margin-bottom: 70px;
}

.btn {
	font-size: 12px;
	display: block;
	width: 30%;
	height: 100%;
	padding: 5px 10px;
	background: none;
	background-image: none;
	border: 1px solid #a0b3b0;
	color: #ffffff;
	border-radius: 0;
	transition: border-color .25s ease, box-shadow .25s ease;
}

.btn:focus {
	outline: 0;
	border-color: #1ab188;
}
.top-row:after {
	content: "";
	display: table;
	clear: both;
}

.top-row>div {
	float: left;
	width: 48%;
	margin-right: 4%;
}

.top-row>div:last-child {
	margin: 0;
}

.buttonemail {
	border: 0;
	outline: none;
	border-radius: 0;
	padding: 15px 0;
	font-size: 1rem;;
	width: 17%;
	text-transform: uppercase;
	letter-spacing: .1em;
	background: #1ab188;
	color: #ffffff;
}

.buttonemail:hover, .buttonemail:focus {
	background: #179b77;
}

.buttonemail-block {
	display: block;
	width: 100%;
}

.button {
	border: 0;
	outline: none;
	border-radius: 0;
	padding: 15px 0;
	font-size: 2rem;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: .1em;
	background: #55b1df;
	color: #ffffff;
	transition: all 0.5s ease;
	-webkit-appearance: none;
}

.button:hover, .button:focus {
	background: #b0dcf0;
}

.button-block {
	display: block;
	width: 100%;
}

.forgot {
	margin-top: -20px;
	text-align: right;
}
</style>
</head>

<body>
	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->
	<div class="form">
		<div class="tab-content">
			<div id="signup">
				<h1>비밀번호 수정</h1>
				<form id="pw_form" name="pw_form" action="/LPG/user/modifyPassword.do"  method="post">
				<input type="hidden" id="hidden_userId" name="hidden_userId" value="${hidden_userId}"/>
					<div class="top-row">
						<div class="field-wrap">
							<label>* 새비밀번호</label><input type="password" required autocomplete="off" style="width: 415px;" id="userPwd" name="userPwd" />
						</div>
					</div>
					<br/><br/>
					<div class="top-row">
						<div class="field-wrap">
							<label>* 새비밀번호 확인</label><input type="password" required autocomplete="off" style="width: 415px;" id="userPwd_chk" name="userPwd_chk" />
						</div>
					</div>
					<br/>
					<br/>
s					<input type="button"  id="btn_join" class="button button-block" value="비밀번호 수정">
				</form>

			</div>
		</div>
	</div>

</body>
</html>