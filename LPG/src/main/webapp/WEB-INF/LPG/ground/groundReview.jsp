<!-- done -->
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


<link rel="stylesheet" type="text/css" href="../css/reviewStar.css">

<style type="text/css">
.title {
	margin-top: 25px;
	margin-bottom: 10px;
}

.content {
	margin-top: 0px;
	margin-bottom: 45px;
}

.grouptitle {
	text-shadow: gray;
}

</style>

</head>

<body>

	<!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

	<div class="container mtb">
		<div class="row">
			<div class="col-lg-8">
				<form class="contact-form php-mail-form" role="form"
					action="contactform/contactform.php" method="POST">

					<div class="form-group">
						<!-- ground info -->
						<div class="ground-info">
							<h3 class="group-title">구장 정보</h3>
							<div class="hline"></div>
							<!-- <div style="border: solid 2px blue;"> -->
							<h4 class="title">&nbsp;&nbsp;구장 명</h4>
							<h2 class="content">&nbsp;잠실 체육관 축구장</h2>
							<h4 class="title">&nbsp;&nbsp;위치</h4>
							<h2 class="content">&nbsp;서울 송파구 올림픽로 25 서울종합운동장</h2>
						</div>
						<!-- ground name from DB -->
						<div class="review-outer">
							<br />
							<h3 class="group-title">구장 평가</h3>
							<div class="hline"></div>
							<br />
							<div class="review-middle">
								<!-- 			<h4 class="group-title">시설</h4>
								<div class="hline"></div>
					 -->
								<div class="review-inner">
									<h4>&nbsp;&nbsp;잔디 상태</h4>
									<div class="rate">
										<input type="radio" id="star5a" name="rate1" value="5" /> <label
											for="star5a" title="text">5 stars</label> <input type="radio"
											id="star4a" name="rate1" value="4" /> <label for="star4a"
											title="text">4 stars</label> <input type="radio" id="star3a"
											name="rate1" value="3" /> <label for="star3a" title="text">3
											stars</label> <input type="radio" id="star2a" name="rate1" value="2" />
										<label for="star2a" title="text">2 stars</label> <input
											type="radio" id="star1a" name="rate1" value="1" /> <label
											for="star1a" title="text">1 star</label>
									</div>
									<br /> <br /> <br />
								</div>
								<br />
								<div class="review-inner">
									<h4>&nbsp;&nbsp;화장실 상태</h4>
									<div class="rate">
										<input type="radio" id="star5b" name="rate2" value="5" /> <label
											for="star5b" title="text">5 stars</label> <input type="radio"
											id="star4b" name="rate2" value="4" /> <label for="star4b"
											title="text">4 stars</label> <input type="radio" id="star3b"
											name="rate2" value="3" /> <label for="star3b" title="text">3
											stars</label> <input type="radio" id="star2b" name="rate2" value="2" />
										<label for="star2b" title="text">2 stars</label> <input
											type="radio" id="star1b" name="rate2" value="1" /> <label
											for="star1b" title="text">1 star</label>
									</div>
									<br /> <br /> <br />
								</div>
							</div>

							<br />
							<div class="review-middle">
								<!-- 				<h4 class="group-title">접근성</h4>
								<div class="hline"></div>
								<br />
				 -->
								<div class="review-inner">
									<h4>&nbsp;&nbsp;접근 편의</h4>
									<div class="rate">
										<input type="radio" id="star5d" name="rate4" value="5" /> <label
											for="star5d" title="text">5 stars</label> <input type="radio"
											id="star4d" name="rate4" value="4" /> <label for="star4d"
											title="text">4 stars</label> <input type="radio" id="star3d"
											name="rate4" value="3" /> <label for="star3d" title="text">3
											stars</label> <input type="radio" id="star2d" name="rate4" value="2" />
										<label for="star2d" title="text">2 stars</label> <input
											type="radio" id="star1d" name="rate4" value="1" /> <label
											for="star1d" title="text">1 star</label>
									</div>
									<br /> <br /> <br />
								</div>
								<br />
								<div class="review-inner">
									<h4>&nbsp;&nbsp;주차장 유무</h4>
									<div class="rate">
										<input type="radio" id="star5e" name="rate5" value="5" /> <label
											for="star5e" title="text">5 stars</label> <input type="radio"
											id="star4e" name="rate5" value="4" /> <label for="star4e"
											title="text">4 stars</label> <input type="radio" id="star3e"
											name="rate5" value="3" /> <label for="star3e" title="text">3
											stars</label> <input type="radio" id="star2e" name="rate5" value="2" />
										<label for="star2e" title="text">2 stars</label> <input
											type="radio" id="star1e" name="rate5" value="1" /> <label
											for="star1e" title="text">1 star</label>
									</div>
									<br /> <br /> <br />
								</div>
							</div>
							<div>
								<div>
									<h3 class="group-title">한줄 평가</h3>
									<div class="hline"></div>
									<br />
									<textarea class="form-control" name="reviewMessage"
										id="reviewMessage" placeholder="내용을 입력해주세요." rows="5"
										data-rule="required" data-msg="내용을 입력해주세요!"></textarea>
									<div class="validate"></div>
								</div>
							</div>
						</div>
					</div>


					<div class="loading"></div>
					<div class="error-message">조건에 맞게 데이터를 입력해주세요</div>
					<div class="sent-message">리뷰가 저장되었습니다</div>

					<div class="form-send">
						<button type="submit" class="btn btn-large">Save</button>
					</div>

				</form>
			</div>

		</div>
	</div>

</body>
</html>
