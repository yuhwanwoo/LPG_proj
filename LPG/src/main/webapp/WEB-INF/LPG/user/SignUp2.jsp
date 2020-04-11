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

<title>:: 다음 주소록 API ::</title>

<script type="text/JavaScript"
	src="http://code.jquery.com/jquery-1.7.min.js"></script>

<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$("#btn_idCheck").click(function(){
			var user_id = $("#userId").val();
			
			//아이디 유효성 검사
			var re = /^[a-zA-Z0-9]{6,15}$/;
			if(!fn_check(re, user_id, "아이디 형식을 올바르게 작성해주세요.")){return;}
			
			var global_form = $("#global_form").serialize();
			$.ajax({
				url: '/LPG/user/joinIdCheck.do',
				type: 'POST',
				cache: false,
				data: global_form,
				success: function(data){
					$("#notice_id").show();
					
					if(data == 'success'){
						$("#canuse").show();
						$("#cannotuse").hide();
						$("#notice_txt").hide();
						$("#hidden_idChk").val('Y');
					}else{
						$("#canuse").hide();
						$("#cannotuse").show();
						$("#notice_txt").show();
						$("#hidden_idChk").val('N');
					}
				}
			});
		})
		
		
		$("#btn_join").click(function(){
			var userPwd = $("#userPwd").val();
			var userPwd_chk = $("#userPwd_chk").val();
			var userName = $("#userName").val();
			var userNick = $("#userNick").val();
			var userPhone = $("#userPhone").val();
			var userBirth = $("#userBirth").val();
			var address_etc = $("#address_etc").val();
			var address = $("#address").val();
			var userEmail = $("#userEmail").val();
			
			//아이디 중복체크 검사
			if($("#hidden_idChk").val() != 'Y'){ alert("아이디 중복검사가 필요합니다."); return; }
			
			//비밀번호 유효성 검사.
			//영문, 특수문자, 숫자가 무조건 포함되는 조합으로 8자~20자 가능
			var pwd = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,}$/;
			if(!fn_check(pwd, userPwd, "비밀번호를 올바르게 작성해주세요.")){return;}
			
			//비밀번호와 비밀번호 확인란 일치 여부 검사
			if(userPwd != userPwd_chk){ alert("비밀번호가 일치하지 않습니다."); return;}
			
			//이름 유효성 검사.
			var kor = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣a-zA-Z]{2,15}$/;
			if(!fn_check(kor, userName, "이름을 올바르게 작성해주세요.")){return;}
			
			//별명 유효성 검사.
			var kor = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣a-zA-Z|0-9]{2,15}$/;
			if(!fn_check(kor, userNick, "별명을 올바르게 작성해주세요.[2글자이상작성확인]")){return;}
			
			//휴대전화 유효성 검사.
			var num = /^[0-9]{6,}$/;
			if(!fn_check(num, userPhone, "휴대전화번호를 올바르게 작성해주세요.")){return;}
			
			//생년월일 유효성 검사.
			if(!userBirth){ alert("생년월일을 선택해주세요."); return; }
			
			//주소 유효성 검사.
			if(!address){ alert("주소를 입력해주세요"); return; }
			if(!address_etc){ alert("상세주소를 입력해주세요"); return; }
			
			//이메일 유효성 검사.
			var chk_email =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(!fn_check(chk_email, userEmail, "이메일 형식을 올바르게 작성해주세요.")){return;}
			
			
			var form = $("#global_form");
			form.submit();
			alert("회원가입 완료")
		})
	})
	
	//생년월일 외 나머지 정규식 검사
	function fn_check(re, what, message) {
		if(re.test(what)) {
			return true;
		}
		alert(message);
	}
	
	//생년월일 정규식 검사
	function fn_checkBirth(what, message){
		var year = parseInt(what.substr(0, 4), 10);
		var month = parseInt(what.substr(4, 2), 10); 
		var date = parseInt(what.substr(6, 2), 10);
		var dt = new Date(year, month-1, date);
		
		var nowDate = new Date();
		var nowYear = parseInt(nowDate.getFullYear());
		
		if(nowYear >= year && dt.getMonth()+1 == month && dt.getDate() == date && what.length == 8){
			return true;
		}else{
			alert(message);	
		}
	}
	
	function openDaumZipAddress() {

		new daum.Postcode({

			oncomplete : function(data) {

				jQuery("#postcode1").val(data.postcode1);

				jQuery("#postcode2").val(data.postcode2);

				jQuery("#zonecode").val(data.zonecode);

				jQuery("#address").val(data.address);

				jQuery("#address_etc").focus();

				console.log(data);

			}

		}).open();

	}
</script>
<style type="text/css">
</style>

</head>

<body>

	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<form class="contact-form" id="global_form" name="global_form" action="/LPG/user/signup.do" method="POST">
			<input type="hidden" id="hidden_idChk" name="hidden_idChk" value="N"/>
				<div class="col-lg-12">
					<h1>회원가입</h1>
					<div class="hline"></div>
					<p></p>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>아이디</h4>
							</div>
							<div class="col-lg-7">
								<input type="text" id="userId" name="userId" class="form-control id-form" id="contact-name" placeholder="아이디입력" maxlength="15">
							</div>
							<div class="col-lg-2">
								<input type="button" id="btn_idCheck" class="btn-theme" value="중복체크" style="float: left; position: relative; top: -5px;">
							</div>
							<div id="notice_id" class="col-lg-7" style="display:none;">
								<span id="canuse" style="color:blue; font-weight:bold; margin-left: 200px">* 사용가능한 아이디입니다.</span>
								<span id="cannotuse" style="color:red; font-weight:bold; margin-left: 200px">* 사용 불가능한 아이디입니다.</span>
							</div>
							<div class="col-lg-2"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>패스워드</h4>
							</div>
							<div class="col-lg-7">
								<input type="password" id="userPwd" name="userPwd" class="form-control" id="contact-pw" placeholder="패스워드입력" maxlength="20">
								<div class="col-lg-2"></div>
							</div>
							<div class="col-sm-2"></div>
							<div id="" class="col-lg-7">
								 <font id="" style="color:red; font-weight:bold; margin-left: 200px">* 영문, 특수문자, 숫자가 무조건 포함되며, 8자~20자로 작성해주세요.</font>
							</div>
							<div class="col-sm-2"></div>
						</div>
					</div>


					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>패스워드확인</h4>
							</div>
							<div class="col-lg-7">
								<input type="password"  class="form-control" id="userPwd_chk" name="userPwd_chk" placeholder="패스워드확인입력" maxlength="20">
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>이름</h4>
							</div>
							<div class="col-lg-7">
								<input type="text" id="userName" name="userName" class="form-control"
									id="contact-name" placeholder="이름입력" data-rule="minlen:4"
									data-msg="Please enter at least 4 chars" maxlength="20">
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>별명</h4>
							</div>
							<div class="col-lg-7">
								<input type="text" id="userNick" name="userNick" class="form-control"
									id="contact-name" placeholder="별명입력" data-rule="minlen:4"
									data-msg="Please enter at least 4 chars" maxlength="20">
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>전화번호</h4>
							</div>
							<div class="col-lg-7">
								<input type="tel" id="userPhone" name="userPhone" class="form-control"
									id="contact-tel" placeholder="전화번호입력" maxlength="11">
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>성별</h4>
							</div>
							<div class="col-lg-7">
								<span>
									<label>
										남자&nbsp;<input type="radio" name="userGender" class="" id="contact-gender" value="1" checked>
									</label>
								</span>
								&nbsp;
								<span>
									<label>
										여자&nbsp;<input type="radio"name="userGender" class="" id="contact-gender" value="2">
									</label>
								</span>
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>생년월일</h4>
							</div>
							<div class="col-lg-7">
								<input type="date" id="userBirth" name="userBirth" class="form-control"
									placeholder="생년월일" style="height: 45px;">
								<div class="col-lg-2"></div>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>주소</h4>
							</div>
							<div class="col-lg-8">
								<input id="postcode1" type="text" value="" style="width: 100px;" readonly  /> &nbsp;-&nbsp;
								<input id="postcode2" type="text" value="" name="addr2" style="width: 100px;" readonly/>&nbsp;&nbsp;
								<input id="zonecode" type="text" value="" style="width: 100px;" readonly /> &nbsp; 
								<input type="button" onClick="openDaumZipAddress();" value="주소 찾기" class="btn-theme" />
								<br/>
								<input type="text" id="address" name="userAddr" class="form-" style="width: 300px;" readonly/>
								<input type="text" id="address_etc" name="subAddr" style="width:350px; margin-top:4.3px;"/>
							</div>
							<div class="col-lg-2"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>이메일</h4>
							</div>
							<div class="col-lg-7">
								<input type="text" id="userEmail" name="userEmail" class="form-control" id="contact-email" placeholder="이메일 입력" data-rule="email" data-msg="Please enter a valid email" maxlength="35">
							</div>
							<div class="col-lg-2">
							</div>
						</div>
					</div>
				</div>
			<div class="form-group">
					<br /> <br /> <br />
				</div>
		  	<div class="loading"></div>
				<div class="error-message"></div>
				<div class="sent-message"></div>
				<div class="form-send">
					<input type="button" id="btn_join" name="btn_join" class="btn btn-large" style="width: 500px;" value="회원가입">
					<br/><br/><br/>
				</div>
			</form>
		</div>

	</div>
	</body>
</html>