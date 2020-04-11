<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Solid - Bootstrap Business Template</title>
  <style type="text/css">
  	.tbutton{
  		width: 100%;
  		height: 50px;
  		background-color: #FC8104;
  		color: white;
  		font-size: 20pt;
  	}
  </style>
</head>

<body>

  <!-- Fixed navbar -->
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="index.html">SOLID.</a>
      </div>
      <div class="navbar-collapse collapse navbar-right">
        <ul class="nav navbar-nav">
          <li><a href="index.html">HOME</a></li>
          <li><a href="about.html">ABOUT</a></li>
          <li class="active"><a href="contact.html">CONTACT</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="blog.html">BLOG</a></li>
              <li><a href="single-post.html">SINGLE POST</a></li>
              <li><a href="portfolio.html">PORTFOLIO</a></li>
              <li><a href="single-project.html">SINGLE PROJECT</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>

  <!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
  <div id="blue">
    <div class="container">
      <div class="row">
        <h3>팀 정보 수정</h3>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /blue -->


  <!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

  <div class="container mtb">
    <div class="row">
      <div class="col-lg-8">
        <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">
            <div class="form-group">
	            <div class="row">
	            	<div class="col-sm-2" ><h4>팀명</h4></div>
		            <div class="col-lg-7">
		            	<input type="text" name="name" class="form-control" id="contact-name" disabled="disabled">
		            </div>
	            </div>
            </div>
            <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>팀 지역</h4></div>
				<div class="col-lg-7">
					<select class="form-control">
						<option>강서구</option>
						<option>강동구</option>
						<option>강남구</option>
						<option>성북구</option>
						<option>중구</option>
						<option>은평구</option>
						<option>금천구</option>
						<option>광친구</option>
						<option>서대문구</option>
						<option>중랑구</option>
						<option>강북구</option>
						<option>관악구</option>
						<option>구로구</option>
						<option>영등포구</option>
						<option>마포구</option>
						<option>종로구</option>
						<option>도봉구</option>
						<option>용산구</option>
						<option>동작구</option>
						<option>서초구</option>
						<option>송파구</option>
						<option>노원구</option>
						<option>성동구</option>
						<option>양천구</option>
						<option>동대문구</option>
					</select>
					</div>
				</div>
			</div>
            <div class="form-group">
            	<div class="row">
            	<div class="col-sm-2" ><h4>연령 제한</h4></div>
               		<div class="col-lg-7">
              		    <select class="form-control">
			              	<option>제한 없음</option>
							<option>10대</option>
							<option>20대</option>
							<option>30대</option>
							<option>40대</option>
							<option>50대이상</option>
			              </select>                 
             		</div>		           
              	</div>
            </div>
             <div class="form-group">
				<div class="row">
				<div class="col-sm-2" ><h4>소속 유형</h4></div>
					<div class="col-lg-7">
						<select class="form-control">
			              	<option>남성</option>
							<option>혼성</option>
							<option>여성</option>
			              </select>
					</div>
				</div>
			</div>
			
			 <div class="form-group">
				<div class="row">
					<div class="col-sm-2" ><h4>주 경기 유형</h4></div>
					<div class="col-lg-7">
						<select name="email" class="form-control">
					        <option>축구</option>
							<option>풋살</option>
				        </select>
			        </div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col-sm-2" ><h4>주 전술</h4></div>
					<div class="col-lg-7">
						<select name="email" class="form-control">
							<option>5-4-1</option>
							<option>5-3-2</option>
							<option>4-5-1</option>
							<option>4-4-2</option>
							<option>4-3-3</option>
							<option>3-6-1</option>
							<option>3-5-2</option>
							<option>3-4-3</option>
				        </select>
			        </div>
				</div>
			</div>
			<div class="form-group">
            	<div class="row">
	            	<div class="col-sm-3" ><h4>팀 실력</h4></div>
	               	<div class="col-lg-6" style="position: relative; top: 8px">
		              	<input type="checkbox" value="상" style="margin-left: 10%" id="checkbox-1-1"><label for="checkbox-1-1">상</label>
			            <input type="checkbox" value="중" style="margin-left: 15%" id="checkbox-1-2"><label for="checkbox-1-2">중</label>
			            <input type="checkbox" value="하" style="margin-left: 15%" id="checkbox-1-3"><label for="checkbox-1-3">하</label>
	             	</div>		           
              	</div>
            </div>
			<div class="form-group">
				<div class="row">
				<div class="col-sm-3"><h4>활동구장</h4></div>
				<div class="col-lg-6">
					<a href="contact.html" class="btn btn-theme" style="margin-left: 10%">구장 검색</a>
				</div>
				</div>
			</div>
			<div class="form-group">
	            <div class="row">
	            	<div class="col-sm-2" ><h4>유니폼 색상</h4></div>
		            <div class="col-lg-7">
		            	<input type="text" name="name" class="form-control" id="contact-name" placeholder="유니폼 색상을 입력해주세요">
		            </div>
	            </div>
            </div>
            
            <div class="form-group">
           	  <div class="row">
				<div class="col-sm-2"><h4>팀 소개글</h4></div>
				<div class="col-lg-7">
              <textarea class="form-control" name="message" placeholder="팀 소개글을 입력해주세요" rows="3"></textarea>
              </div>
            </div>
            </div>
            
            <div class="form-group">
           	  <div class="row">
				<div class="col-sm-2"><h4>팀 매너</h4></div>
				<div class="col-lg-7">
              <textarea class="form-control" name="message" placeholder="팀 가입시 요구하는 매너사항을 입력해주세요" rows="3"></textarea>
              </div>
            </div>
            </div>
            
			<div class="form-group">
				<div class="row">
				<div class="col-sm-3"><h4>팀 앰블럼</h4></div>
				<div class="col-lg-6">
					<input type="file" style="margin-left: 7%">
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<div class="row">
					<div class="col-sm-3" ><h4>팀원 정보 공개여부</h4></div>
					<div class="col-lg-6" style="position: relative; top: 8px">
						<input type="radio" id="checkbox-info-1" name="openinfo" value="공개" style="margin-left: 10%">
				 		<label for="checkbox-info-1">공개</label>
				 		<input type="radio" id="checkbox-info-2" name="openinfo" value="비공개" style="margin-left: 10%">
				 		<label for="checkbox-info-2">비공개</label>
			 		</div>
				</div>
			</div>
            <div class="form-group">
	            <div class="row">
		            <div class="col-lg-9">
		            	<button type="submit" class="tbutton">수정하기</button>
	            	</div>
	            </div>
            </div>

          </form>
      </div>
    </div>
  </div>


  <!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
  <div id="footerwrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h4>About</h4>
          <div class="hline-w"></div>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
        </div>
        <div class="col-lg-4">
          <h4>Social Links</h4>
          <div class="hline-w"></div>
          <p>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-tumblr"></i></a>
          </p>
        </div>
        <div class="col-lg-4">
          <h4>Our Address</h4>
          <div class="hline-w"></div>
          <p>
            Some Ave, 987,<br/> 23890, New York,<br/> United States.<br/>
          </p>
        </div>

      </div>
    </div>
  </div>

  <div id="copyrights">
    <div class="container">
      <p>
        &copy; Copyrights <strong>Solid</strong>. All Rights Reserved
      </p>
      <div class="credits">
        <!--
          You are NOT allowed to delete the credit link to TemplateMag with free version.
          You can delete the credit link only if you bought the pro version.
          Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/solid-bootstrap-business-template/
          Licensing information: https://templatemag.com/license/
        -->
        Created with Solid template by <a href="https://templatemag.com/">TemplateMag</a>
      </div>
    </div>
  </div>
  <!-- / copyrights -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>