<!-- done -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Solid - Bootstrap Business Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
<link href="lib/hover/hoverex-all.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">

<!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->

<!-- calendar -->
<script type="text/javascript">
	/* https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/date */
	//define variables
	var nativePicker = document.querySelector('.nativeDatePicker');
	var fallbackPicker = document.querySelector('.fallbackDatePicker');

	var yearSelect = document.querySelector('[name=year]');
	var monthSelect = document.querySelector('[name=month]');

	// Test whether a new date input falls back to a text input
	var testElement = document.createElement('input');

	try {
		test.type = 'date';
	} catch (e) {
		console.log(e.description);
	}

	// If it does, run the code inside the if () {} block
	if (testElement.type === 'text') {
		// hide the native picker and show the fallback
		nativePicker.hidden = true;
		fallbackPicker.hidden = false;

		// populate the days and years dynamically
		// (the months are always the same, therefore hardcoded)
		populateDays(monthSelect.value);
		populateYears();
	}

	function populateDays(month) {
		const
		daySelect = document.querySelector('[name=day]');
		const
		month = monthSelect.value;

		// Create variable to hold new number of days to inject
		let
		dayNum;

		// 31 or 30 days?
		switch (month) {
		case 'April':
		case 'June':
		case 'September':
		case 'November':
			dayNum = 30;
			break;
		case 'February':
			// If month is February, calculate whether it is a leap year or not
			const
			year = yearSelect.value;
			const
			isLeap = new Date(year, 1, 29).getMonth() === 1;
			dayNum = isLeap ? 29 : 28;
			break;
		default:
			dayNum = 31;
		}

		// inject the right number of new <option>s into the <select>
		daySelect.options = Array.from({
			length : dayNum
		}, function(index) {
			return index + 1;
		});

		// if previous day has already been set, set daySelect's value
		// to that day, to avoid the day jumping back to 1 when you
		// change the year
		if (previousDay) {
			daySelect.value = previousDay;

			// If the previous day was set to a high number, say 31, and then
			// you chose a month with fewer days in it (like February),
			// this code ensures that the highest day available
			// is selected, rather than showing a blank daySelect
			if (previousDay > daySelect.length + 1) {
				daySelect.selectedIndex = daySelect.length;
			}
		}
	}

	function populateYears() {
		// get this year as a number
		var year = (new Date()).getFullYear();

		// Make this year and the 100 years before it available in the <select>
		daySelect.options = Array.from({
			length : 100
		}, function(index) {
			return index + year;
		});
	}

	// when the month or year <select> values are changed, rerun populateDays()
	// in case the change affected the number of available days
	yearSelect.onchange = populateDays;
	monthSelect.onchange = populateDays;

	// preserve day selection
	var previousDay;

	// update what day has been set to previously
	// see end of populateDays() for usage
	daySelect.onchange = function() {
		previousDay = daySelect.value;
	}
</script>

</head>

<body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">SOLID.</a>
			</div>
			<div class="navbar-collapse collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.html">HOME</a></li>
					<li><a href="about.html">ABOUT</a></li>
					<li class="active"><a href="contact.html">CONTACT</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">PAGES <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="blog.html">BLOG</a></li>
							<li><a href="single-post.html">SINGLE POST</a></li>
							<li><a href="portfolio.html">PORTFOLIO</a></li>
							<li><a href="single-project.html">SINGLE PROJECT</a></li>
						</ul></li>
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
				<h3>Contact.</h3>
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
			<div class="col-sm-8">
				<h4>��ȸ ���</h4>
				<div class="hline"></div>
				<br />
				<form class="contact-form php-mail-form" role="form"
					action="contactform/contactform.php" method="POST">


					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>��ȸ��:</h4></div>
							<div class="col-sm-7">
								<input type="text" name="competName" class="form-control"
									id="competName" placeholder="��ȸ��" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>��ȸ �ְ���:</h4></div>
							<div class="col-sm-7">
								<input type="text" name="companyName" class="form-control"
									id="companyName" placeholder="��ȸ �ְ���" data-rule="minlen:3"
									data-msg="Please enter at least 3 chars">
								<div class="validate"></div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>�о�:</h4></div>
							<div class="col-sm-7">
								<select name="field" class="form-control">
									<option value="soccer">�౸</option>
									<option value="lol">lol</option>
									<option value="" selected="selected">�о߸� �����ϼ���</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>�������:</h4></div>
							<div class="col-sm-7">
								<select name="target" class="form-control">
									<option value="noLimit">���Ѿ���</option>
									<option value="elementary">�ʵ��л�</option>
									<option value="middle">���л�</option>
									<option value="high">����л�</option>
									<option value="college">���л�</option>
									<option value="graduate">���п���</option>
									<option value="adult">�Ϲ���</option>
									<option value="" selected="selected">���� ����� �����ϼ���</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>�����Ⱓ:</h4></div>
							<div class="col-sm-3">								
								<input type="date" class="form-control" name="applyStartDate">
							</div>
							<div class="col-sm-1"> <h3>~</h3></div>
							<div class="col-sm-3">	 
							 <input	type="date" class="form-control" name="applyEndDate">
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>��ȸ�Ⱓ:</h4></div>
							<div class="col-sm-3">
								<input type="date" class="form-control" name="compStartDate"> 								
							</div>
							<div class="col-sm-1"><h3>~</h3></div>
							<div class="col-sm-3">
							<input type="date" class="form-control" name="compEndDate">
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row"> 
						<div class="col-sm-2"><h4>���� ���:</h4></div>
							<div class="col-sm-7">
								<select name="competLoc" class="form-control">
									<option value="whole">����</option>
									<option value="seoul">����</option>
									<option value="incheon">��õ</option>
									<option value="daejeon">����</option>
									<option value="gwangju">����</option>
									<option value="daegu">�뱸</option>
									<option value="busan">�λ�</option>
									<option value="ulsan">���</option>
									<option value="sejong">����</option>
									<option value="gg">���</option>
									<option value="gw">����</option>
									<option value="cn">�泲</option>
									<option value="cb">���</option>
									<option value="jn">����</option>
									<option value="jb">����</option>
									<option value="gn">�泲</option>
									<option value="gb">���</option>
									<option value="jeju">����</option>
									<option value="abroad">�ؿ�</option>
									<option value="etc">��Ÿ</option>
									<option value="" selected="selected">���� ����� �����ϼ���</option>
								</select>
							</div>
						</div>
					</div>

					<div class="form-group">
						<div class="row">
							<div class="col-sm-2"><h4>��ȸ�����ּ�:</h4></div>
								<div class="col-sm-6">
	
									<span>����Ư���� ������ ���ڵ� 000</span>
									<span><input type="button" class="btn" onclick="location.href='addrPopUp.jsp'" name="addrbtn" value="�˻�"></span>
								</div>
						</div>
					</div>
						<div class = "form-group">
							<div class="row">		
								<div class="col-sm-2"><h4>�� �ּ�:</h4></div>
								<div class="col-sm-7">
								<input type="text" class="form-control" name="addrDetail" placeholder="�� �ּ�">
								</div>
							</div>
						</div>
						
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h6>���ֻ� Ȩ������ url:</h6></div>
							<div class="col-sm-7">
								<input type="text" name="comURL" class="form-control" placeholder="���ֻ� Ȩ������ url">
							</div>
						</div>
					</div>
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h6>���ֻ� ��ȭ��ȣ:</h6></div>
							<div class="col-sm-7">
								<input type="text" name="groundTel" class="form-control" placeholder=" ���ֻ� ��ȭ��ȣ  ' - �� �����ϰ� �Է��ϼ���' ">
							</div>
						</div>
					</div>
					
					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>������:</h4></div>
							<div class="col-sm-7">
								<textarea class="form-control" name="detail" rows="5" cols="25"></textarea>
							</div>
						</div>
					</div>

					<div class = "form-group">
						<div class="row">
							<div class="col-sm-2"><h4>��ȸ ������:</h4></div>
							<div class="col-sm-7">
								<input type="file" value = "���� ����" name = "file" accept="image/*"/><br/><br/>
							</div>
						</div>
					</div>


					<div class="loading"></div>
					<div class="error-message"></div>
					<div class="sent-message">Your message has been sent. Thank
						you!</div>

					<div class="form-send">
						<button type="submit" class="btn btn-large">Save</button>
					</div>

				</form>
			</div>

			<div class="col-sm-4">
				
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
					<p>Lorem Ipsum is simply dummy text of the printing and
						typesetting industry. Lorem Ipsum has been the industry's standard
						dummy text ever since the 1500s.</p>
				</div>
				<div class="col-lg-4">
					<h4>Social Links</h4>
					<div class="hline-w"></div>
					<p>
						<a href="#"><i class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-instagram"></i></a> <a href="#"><i
							class="fa fa-tumblr"></i></a>
					</p>
				</div>
				<div class="col-lg-4">
					<h4>Our Address</h4>
					<div class="hline-w"></div>
					<p>
						Some Ave, 987,<br /> 23890, New York,<br /> United States.<br />
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
