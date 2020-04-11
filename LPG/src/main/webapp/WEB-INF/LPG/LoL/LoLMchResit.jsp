<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body>
	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div class="col-sm-8">
				<h4>청산별곡 Ver.2</h4>
				<div class="hline"></div>
				<p>살어리 살어리랐다 청산에 살어리랐다</p>
				<form class="contact-form php-mail-form" role="form"
					action="contactform/contactform.php" method="POST">

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>매치제목:</h4>
							</div>
							<div class="col-lg-7">
								<input style="width: 100%" type="name" name="name"
									class="form-control" id="contact-name" placeholder="매치 제목"
									data-rule="minlen:4" data-msg="Please enter at least 4 chars">
								<!--  <div class="validate"></div> -->
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>매치타입:</h4>
							</div>
							<div class="col-sm-2">
								<select style="margin-top: 10px">
									<option value="0">소환사의 협곡</option>
									<option value="1">무작위 총력전</option>
									<option value="2">전략적 팀 전투</option>
								</select>
							</div>
							<div class="col-sm-1">
								<select style="margin-top: 10px">
									<option value="0">노말</option>
									<option value="1">랭크</option>
								</select>
							</div>
							<div class="col-sm-1">
								<select style="margin-top: 10px">
									<option value="0">팀</option>
									<option value="1">듀오</option>
								</select>
							</div>
							<div class="col-sm-1">
								<select style="margin-top: 10px">
									<option value="0">아이언</option>
									<option value="1">브론즈</option>
									<option value="2">실버</option>
									<option value="3">플래티넘</option>
									<option value="4">다이아</option>
									<option value="5">마스터</option>
									<option value="6">그랜드마스터</option>
									<option value="7">챌린저</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>필요인원:</h4>
							</div>
							<div class="col-sm-1">
								<select style="margin-top: 10px">
									<option value="0">1</option>
									<option value="1">2</option>
									<option value="2">3</option>
									<option value="3">4</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2">
								<h4>성향:</h4>
							</div>
							<input style="margin-top: 10px" type="checkbox" class="radiodiv"
								name="mch_abil" value="공격적">공격적 <input
								style="margin-top: 10px" type="checkbox" class="radiodiv"
								name="mch_abil" value="수비적">수비적 <input
								style="margin-top: 10px" type="checkbox" class="radiodiv"
								name="mch_abil" value="운영">운영
						</div>
					</div>


					<div class="form-group">
					<br/>
					<br/>
					<br/>
					</div>
					<div class="loading"></div>
					<div class="error-message"></div>
					<div class="sent-message"></div>



					<div class="form-send">
						<button type="submit" class="btn btn-large">Send Message</button>
						<br/><br/><br/>
					</div>

				</form>
			</div>

			<div class="col-sm-4"></div>
		</div>



</div>

</body>
</html>