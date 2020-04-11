<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">


<script type="text/JavaScript"
	src="http://code.jquery.com/jquery-1.7.min.js"></script>

<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<style type="text/css">
.selectedAddr {
	margin-left: 10px;
	font-size: 18px;
	font: bolder;
}

.cost {
	padding: 10px 12px;
	border-radius: 0;
	box-shadow: none;
	font-size: 14px;
	height: auto;
	width: 30%;
}
.space{

}
</style>
</head>
<script type="text/javascript">
function openDaumZipAddress() {

	new daum.Postcode({

		oncomplete : function(data) {

			$("#postcode1").val(data.postcode1);

			$("#postcode2").val(data.postcode2);

			$("#zonecode").val(data.zonecode);

			$("#address").val(data.address);

			$("#address_etc").focus();

			console.log(data);

		}

	}).open();
}

</script>

<body>
	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div class="col-sm-8">
				<h4>구장 정보 입력</h4>
				<div class="hline"></div>
				<form class="contact-form php-mail-form" role="form"
					action="/LPG/ground/add.do" method="POST" enctype="multiport/form-data">
					<br />
					
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>구장명:</h4></div>
							<div class="col-sm-9">
								<input type="text" name="grdName" class="form-control"
									id="groundName" placeholder="구장명" data-rule="minlen:2"
									data-msg="2글자 이상 입력해주세요.">
								<div class="validate"></div>
							</div>
						</div>
					</div>
					
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>구장 종류:</h4></div>
							<div class="col-sm-9">
								<select name="grdType" class="form-control" id="groundType">
									<option>축구장</option>
									<option>풋살장</option>
								</select>
							</div>
						</div>
					</div>
					
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>주소찾기:</h4></div>
							<div class="col-sm-9">
								<div>
									<input id="postcode1" type="text" class="form-control" value="" style="width: 100px; display: inline;" readonly  /> &nbsp;-&nbsp;
									<input id="postcode2" type="text" class="form-control" value="" name="addr2" style="width: 100px; display: inline;" readonly/>&nbsp;&nbsp;
									<input id="zonecode" type="text" class="form-control" value="" style="width: 100px; display: inline;" readonly /> &nbsp; 
									<input type="button" class="btn" id="searchAddr" value="search address" onclick="openDaumZipAddress();"/> 
									<br>
									<input type="text" id="address" class="form-control" name="grdAddr" style="margin-top: 5px;" readonly/>
								</div>
							</div>
						</div>
					</div>
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>상세주소:</h4></div>
							
							<div class="col-sm-9">
									<input type="text" id="address_etc" class="form-control" name="subAddr" style="width:350px; margin-top:4.3px;"/>
								<!-- <input type="text" name="addrDetail" class="form-control"
									id="addrDetail" placeholder="상세 주소" data-rule="minlen:4"
									data-msg="4글자 이상 입력해주세요.">
								<div class="validate"></div> -->
							</div>
						</div>
					</div>
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>구장 tel:</h4></div>						
								<div class="col-sm-9">
									<input type="tel" name="grdPhone" class="form-control"
										id="grdPhone" placeholder="구장 전화번호  -을 제외하고 입력하세요"
										data-rule="minlen:9" data-msg="9글자 이상 입력해주세요.">
									<div class="validate"></div>
								</div>
							</div>
						</div>
					
					
					
					
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>이용료:</h4></div>						
								<div class="col-sm-9">
								<input type="number" name="grdCost" class="cost"
									id="groundCost" placeholder="이용료" min="0" step="100" /> <span
									class="selectedAddr">원</span>
								</div>
						</div>
					</div>	
				
				
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>상세정보:</h4></div>						
								<div class="col-sm-9">
								<textarea class="form-control" name="grdDetail"
									id="groundDetail" placeholder="상세정보" rows="5"
									data-rule="required" data-msg="구장 상세 정보를 입력해주세요" style="margin-top: 5px;"></textarea>
								<div class="validate"></div>
								</div>
							</div>
						</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>구장이미지:</h4></div>	
								<div class="col-sm-9">
								<input type="file" name="upload" accept="image/*" />
								</div>
						</div>
					</div>
					<br>
					<br>
					<br>
					<br>

					<div class="loading"></div>
				
				
					<div class="error-message"></div>
				
				
					<div class="sent-message">Your message has been sent. Thank
						you!</div>

					<div class="form-send">
				
				
						<button type="submit" class="btn btn-large">Save</button>
				
				
					</div>
				</form>
			</div>
		</div>
	</div>



</body>
</html>
