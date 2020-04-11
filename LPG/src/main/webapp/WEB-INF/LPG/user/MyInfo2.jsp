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

  <!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <title>:: 다음 주소록 API ::</title>

<script type="text/JavaScript"
	src="http://code.jquery.com/jquery-1.7.min.js"></script>

<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
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
	$(document).ready(function(){
		
		$("#btn_join").click(function(){
			var userPwd = $("#userPwd").val();
			var userPwd_chk = $("#userPwd_chk").val();
			var userPhone = $("#userPhone").val();
			var address_etc = $("#address_etc").val();
			var address = $("#address").val();
			var userEmail = $("#userEmail").val();
			
			//비밀번호 유효성 검사.
			//영문, 특수문자, 숫자가 무조건 포함되는 조합으로 8자~20자 가능
			var pwd = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,}$/;
			if(!fn_check(pwd, userPwd, "비밀번호를 올바르게 작성해주세요.")){return;}
			
			//비밀번호와 비밀번호 확인란 일치 여부 검사
			if(userPwd != userPwd_chk){ 
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			//주소 유효성 검사.
		    if(!address){ alert("주소를 입력해주세요"); return; }
			if(!address_etc){ alert("상세주소를 입력해주세요"); return; } 
			
			
			var form = $("#global_form");
			 form.submit(); 
			 alert("수정완료")
			
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
</head>

<body>
	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->
  	<%
  	UserDTO user = (UserDTO) session.getAttribute("loginUserInfo"); 
  	%>
	<div class="container mtb">
		<div class="row">
			<form class="contact-form" id="global_form" name="global_form" action="/LPG/user/myinfo.do" method="POST">
				<div class="col-lg-12">
					<h1>기본정보수정</h1>
					<div class="hline"></div>
					<p></p>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>아이디</h4>
							</div>
							<div class="col-lg-7">
								<input type="text" name="userId" class="form-control" id="contact-name" value="<%=user.getUserId() %>" maxlength="15" disabled="disabled">
							</div>
								<div class="col-lg-2"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>패스워드 변경</h4>
							</div>
							<div class="col-lg-7">
								<input type="password" id="userPwd" name="userPwd" class="form-control"  placeholder="변경패스워드입력" maxlength="20">
								<div class="col-lg-2"></div>
							</div>
							<div class="col-sm-2"></div>
							<div class="col-lg-7">
								<font id="" style="color:red; font-weight:bold; margin-left: 200px">* 영문, 특수문자, 숫자가 무조건 포함되며, 8자~20자로 작성해주세요.</font>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>패스워드 변경 확인</h4>
							</div>
							<div class="col-lg-7">
							<input type="password" class="form-control" id="userPwd_chk" name="userPwd_chk" placeholder="변경패스워드확인" maxlength="20">
								<div class="col-lg-2">   </div>
							</div>
						</div>
					</div>
				
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>이름</h4>
							</div>
							<div class="col-lg-7">
							<input type="text" name="userName" class="form-control" id="contact-name" value="<%=user.getUserName()%>" maxlength="20" disabled="disabled">
								<div class="col-lg-2">   </div>
							</div>
						</div>
					</div>
					
						<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>별명</h4>
							</div>
							<div class="col-lg-7">
							<input type="text" name="userNick" class="form-control" id="contact-nickname" value="<%=user.getUserNick()%>" maxlength="20" disabled="disabled">
								<div class="col-lg-2">   </div>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>전화번호</h4>
							</div>
							<div class="col-lg-7">
								<input type="tel" name="userPhone" class="form-control" id="contact-tel" value="<%= user.getUserPhone()%>" maxlength="11">
								<div class="col-lg-2">   </div>
							</div>
						</div>
					</div>										
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>생년월일</h4>
							</div>
							<div class="col-lg-7">
								<input type="reset" name="userBirth" class="form-control" id="contact-birth" value="<%= user.getUserBirth()%>" disabled="disabled">
								<div class="col-lg-2">   </div>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>주소</h4>
							</div>
							<div class="col-lg-8">
							<input id="postcode1" type="text" value="" style="width: 100px;" readonly /> &nbsp;-&nbsp;
							<input id="postcode2" type="text" value="" style="width: 100px;" readonly />&nbsp;&nbsp; 
							<input id="zonecode" type="text" value="" style="width: 100px;" readonly /> &nbsp; 
							<input type="button" onClick="openDaumZipAddress();" value="주소 찾기" class="btn-theme" />
							<br/> 
							<input type="text" id="address"  name="userAddr" class="form-" value="<%=user.getUserAddr() %>" style="width: 300px;" readonly />
							<input type="text" id="address_etc" name="subAddr" value="<%=user.getSubAddr()%>" style="width: 350px;" />
						</div>
							<div class="col-lg-2">   </div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>이메일</h4>
							</div>
							<div class="col-lg-7">
							<input type="email" name="userEmail" class="form-control" id="contact-email" placeholder="이메일 입력" data-rule="email" 
											data-msg="Please enter a valid email" maxlength="35" value="<%=user.getUserEmail()%>" disabled="disabled"> 
								<div class="col-lg-2">   
								</div>
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
					<input type="button" id="btn_join" name="btn_join" class="btn btn-large" style="width: 500px;" value="수정하기">
					<br /> <br /> <br />
				</div>
			</form>
		</div>

	</div>
</body>
</html>