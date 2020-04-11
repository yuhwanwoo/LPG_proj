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
<!-- <script src="//code.jquery.com/jquery-3.3.1.min.js"></script> -->
<script>
  $( document ).ready( function() {
    $( '.check-all' ).click( function() {
      $( '.ab' ).prop( 'checked', this.checked );
    } );
  } );
</script>
<style type="text/css">
.agreetext {
	margin-right: 5%;
}

body {
	
}

h1 {
	text-align: center;
	font-size: 50px;
	font-weight: 50px;
}

.ckb {
	text-align: right;
	padding: 15px 0 0 0;
	font-size: 1.1em;
}

input {
	width: 14px;
	height: 14px;
	line-height: 14px;
	box-sizing: border-box;
}

.join_title02 {
	height: 20px;
	padding: 0 0 17px 21px;
	font-weight: bold;
	font-size: 15px;
	color: #222;
	letter-spacing: -1px;
	background: url(/LPG/img/Football_2-57_icon-icons.com_72103.png)
		no-repeat 0 1px;
	background-size: 22px auto;
	text-align: left;
}

.textarea_form {
	height: 50px;
	overflow: auto;
	width: 95%;
	min-height: 200px;
	background-color: #ffffff;
	padding: 5px;
	border: 1px solid #aaaaaa;
	overflow-x: hidden;
	text-align: left;
}

h3 {
	color: black;
	text-align: center;
}

.btn-theme {
	color: #fff;
	background-color: #384452;
	border-color: #384452;
	margin: 4px;
	width: 40%;
	height: 50px;
}

.btn-theme:hover, .btn-theme:focus, .btn-theme:active, .btn-theme.active,
	.open.dropdown-toggle.btn-theme {
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
	
	<div class="container mtb">
		<div class="row centered">
			<form class="contact-form" 
				action="/LPG/user/signaree.do" method="get">
			<div id="total">
				<h1>회원가입</h1>
				<hr />
				<br />
				<br />
				<div class="join_title02">이용약관</div>
				<div class="textarea_form h150p">
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제1장 총 칙</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제1조(목적)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이 약관은 비투컴에서 제공하는 홈페이지서비스(이하
						"서비스"라 한다)의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제2조(정의)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이 약관에서 사용하는 용어의 정의는 다음 각호와
						같습니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 회원 : 이용자 아이디를 부여받은 자</p>
					<p style="line-height: 1.5;">&nbsp; - ID : 비투컴이 승인하는 문자 또는 숫자의
						조합</p>
					<p style="line-height: 1.5;">&nbsp; - 비밀번호 : 비밀 보호를 위해 회원 자신이
						설정한 문자, 숫자의 조합</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제3조(효력의 발생과 변경)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이 약관의 내용은 비투컴 홈페이지 화면에 게시하거나
						기타의 방법으로 공지함으로써 효력이 발생됩니다.</p>
					<p style="line-height: 1.5;">&nbsp;비투컴은 이 약관을 변경할 수 있으며, 변경된
						약관은 이용자에게 공지함으로써 효력이 발생됩니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제4조(준용규정)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이 약관에 명시되지 않은 사항은 전기통신기본법,
						전기통신사업법 및 기타 관련법령의 규정에 따릅니다.</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제2장 서비스 이용계약</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제5조(이용계약의 성립)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이용계약은 이용자의 이용신청에 대한 비투컴의 승낙과
						이용자의 약관 내용에 대한 동의로 성립됩니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제6조(이용신청)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;이용신청은 인터넷을 통하여 이용자가 비투컴에서 정한
						가입신청서에 기록하여 신청할 수 있습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제7조(이용신청의 승낙)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;회원이 신청서의 모든 사항을 정확히 기재하여
						이용신청을 하였을 경우에 승낙합니다.</p>
					<p style="line-height: 1.5;">&nbsp;다음 각호의 1에 해당하는 경우에는 이용 승낙을
						하지 않을 수 있습니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 현재 거주지가 구청이 아닌 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 비투컴의 관할구역내에 사무소를 두지 않은
						기업체ㆍ법인 및 단체인 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 이용신청의 내용을 허위로 기재한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 다른 사람의 명의를 사용하여 신청한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 기타 이용신청 요건에 미비 되었을 때</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제8조(계약사항의 변경)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;회원은 이용신청시 기재한 사항이 변경되었을 경우에는
						인터넷을 통하여 수정 요청을 할 수 있습니다.</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제3장 계약당사자의 의무</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제9조(비투컴의 의무)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;비투컴은 서비스 제공과 관련해서 알고 있는 회원의
						신상 정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해
						국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 또는 기타 관계법령에서 정한 절차에 의한 요청이 있을
						경우에는 그러하지 않습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제10조(회원의 의무)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;회원은 서비스를 이용할 때 다음 각호의 행위를 하지
						않아야 합니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 다른 회원의 ID를 부정하게 사용하는 행위</p>
					<p style="line-height: 1.5;">&nbsp; - 서비스에서 얻은 정보를 복제, 출판 또는
						제3자에게 제공하는 행위</p>
					<p style="line-height: 1.5;">&nbsp; - 비투컴의 저작권, 제3자의 저작권 등 기타
						권리를 침해하는 행위</p>
					<p style="line-height: 1.5;">&nbsp; - 공공질서 및 미풍양속에 위반되는 내용을
						유포하는 행위</p>
					<p style="line-height: 1.5;">&nbsp; - 범죄와 결부된다고 객관적으로 판단되는 행위</p>
					<p style="line-height: 1.5;">&nbsp; - 기타 관계법령에 위반되는 행위</p>
					<p style="line-height: 1.5;">&nbsp;회원은 서비스를 이용하여 영업활동을 할 수 없으며,
						영업활동에 이용하여 발생한 결과에 대하여 비투컴은 책임을 지지 않습니다.</p>
					<p style="line-height: 1.5;">&nbsp;회원은 서비스의 이용권한, 기타 이용계약상 지위를
						타인에게 양도ㆍ증여할 수 없으며, 이를 담보로도 제공할 수 없습니다.</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제4장 서비스 이용</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제11조(회원 홈페이지에 관한 의무)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;회원은 필요에 따라 자신의 홈페이지, 게시판,
						방명록, 등록자료 유지보수에 대한 관리책임을 갖습니다.</p>
					<p style="line-height: 1.5;">&nbsp;회원은 비투컴에서 제공하는 자료를 임의로 삭제,
						변경할 수 없습니다.</p>
					<p style="line-height: 1.5;">&nbsp;회원은 자신의 홈페이지에 공공질서 및 미풍양속에
						위반되는 내용물이나 제3자의 저작권 등 기타권리를 침해하는 내용물을 등록하는 행위를 하지 않아야 합니다. 만약 이와같은
						내용물을 게재하였을때 발생하는 결과에 대한 모든 책임은 회원에게 있습니다.</p>
					<p style="line-height: 1.5;">&nbsp;회원은 자신의 책임하에 개설한 홈페이지를 백업 등
						여러가지 방법으로 본인이 관리하여야 합니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제12조(회원의 게시물 관리 및 삭제)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;효율적인 서비스 운영을 위하여 회원의 메모리 공간,
						메시지크기, 보관일수 등을 제한할 수 있으며 등록하는 내용이 다음 각 호의 1에 해당하는 경우에는 사전 통지없이 삭제할
						수 있습니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 다른 회원 또는 제3자를 비방하거나
						중상모략으로 명예를 손상시키는 내용인 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 공공질서 및 미풍양속에 위반되는 내용인 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 범죄적 행위에 결부된다고 인정되는 내용인 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 비투컴의 저작권, 제3자의 저작권 등 기타
						권리를 침해하는 내용인 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 회원이 자신의 홈페이지와 게시판에 음란물을
						게재하거나 음란 사이트를 링크하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 기타 관계법령에 위반된다고 판단되는 경우</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제13조(게시물의 저작권)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;게시물의 저작권은 게시자 본인에게 있으며 회원은
						서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제14조(서비스 이용시간)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;서비스의 이용은 업무상 또는 기술상 특별한 지장이
						없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 사유 발생시는 그러하지 않습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제15조(서비스 이용 책임)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;서비스를 이용하여 해킹, 음란사이트 링크,
						상용S/W 불법배포 등의 행위를 하여서는 아니되며 이를 위반으로 인해 발생한 영업활동의 결과 및 손실, 관계기관에 의한
						법적 조치 등에 관하여는 구청은 책임을 지지 않습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제16조(서비스 제공의 중지)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;다음 각호의 1에 해당하는 경우에는 서비스 제공을
						중지할 수 있습니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 서비스용 설비의 보수 등 공사로 인한 부득이한
						경우</p>
					<p style="line-height: 1.5;">&nbsp; - 전기통신사업법에 규정된 기간통신사업자가
						전기통신 서비스를 중지했을 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 시스템 점검이 필요한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 기타 불가항력적 사유가 있는 경우</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제5장 계약해지 및 이용제한</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제17조(계약해지 및 이용제한)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;회원이 이용계약을 해지하고자 하는 때에는 회원
						본인이 인터넷을 통하여 해지신청을 하여야 하며, 비투컴에서는 본인 여부를 확인 후 조치합니다.</p>
					<p style="line-height: 1.5;">&nbsp;비투컴은 회원이 다음 각호의 1에 해당하는 행위를
						하였을 경우 사전 통지없이 이용계약을 해지하거나 또는 서비스 이용을 중지할 수 있습니다.</p>
					<p style="line-height: 1.5;">&nbsp; - 타인의 이용자ID 및 비밀번호를 도용한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 서비스 운영을 고의로 방해한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 허위로 가입 신청을 한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 같은 사용자가 다른 ID로 이중 등록을 한
						경우</p>
					<p style="line-height: 1.5;">&nbsp; - 공공질서 및 미풍양속에 저해되는 내용을
						유포시킨 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 타인의 명예를 손상시키거나 불이익을 주는
						행위를 한 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 서비스의 안정적 운영을 방해할 목적으로 다량의
						정보를 전송하거나 광고성 정보를 전송하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 정보통신설비의 오작동이나 정보 등의 파괴를
						유발시키는 컴퓨터바이러스 프로그램 등을 유포하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 비투컴 또는 다른 회원이나 제3자의
						지적재산권을 침해하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 타인의 개인정보, 이용자ID 및 비밀번호를
						부정하게 사용하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 회원이 자신의 홈페이지나 게시판 등에 음란물을
						게재하거나 음란 사이트를 링크하는 경우</p>
					<p style="line-height: 1.5;">&nbsp; - 기타 관련법령에 위반된다고 판단되는 경우</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>제6장 면 책</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제18조(면책 조항)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;비투컴은 회원이 서비스를 이용하여 얻은 정보 및
						자료 등에 대하여 책임을 지지 않습니다.</p>
					<p style="line-height: 1.5;">&nbsp;비투컴은 회원이 서비스에 게재한 정보, 자료,
						사실의 신뢰도, 정확성 등 기타 어떠한 내용에 관하여서도 책임을 지지 않습니다.</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 11pt;">제19조(재판 관할)</span>
					</p>
					<p style="line-height: 1.5;">&nbsp;서비스 이용으로 발생한 분쟁에 대해 소송이 제기 될
						경우 비투컴은 본청 소재지를 관할하는 법원을 전속 관할법원으로 합니다.</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">
						<span style="font-size: 12pt;"><b>부 칙</b></span>
					</p>
					<p style="line-height: 1.5;">
						<br>
					</p>
					<p style="line-height: 1.5;">&nbsp;이 약관은 2013년 2월 1일부터 시행합니다.</p>
					<div style="line-height: 1.5;">
						<br>
					</div>
					<p style="line-height: 1.5;">
						<br>
					</p>
				</div>
				<div class="ckb">
					<div class="agreetext">
						<p><input type="checkbox" name="cb2" class="ab"> <label>이용약관에 동의합니다.</label></p>
						<br />
					</div>
					<div class="join_title02">개인정보 수집·이용</div>
					<div class="textarea_form h150p">
						<p>개인정보의 수집 및 이용 목적</p>
						<p>
							<br>
						</p>
						<p>바로매치 사이트에서 제공하는 서비스는 다음의 목적을 위해 개인정보를 수집 및 이용합니다. 수집된 개인정보는
							다음 목적 이외의 용도로는 이용되지 않습니다.</p>
						<p>
							<br>
						</p>
						<p>1.홈페이지 회원가입 및 관리</p>
						<p>2.매치와 관련된 팀 정보제공</p>
						<p>3.접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>수집하려는 개인정보의 항목</p>
						<p>
							<br>
						</p>
						<p>- 필수항목 : 이름, 아이디(이메일), 비밀번호, 휴대폰 번호, 지역, 연령</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>개인정보의 보유 및 이용기간</p>
						<p>
							<br>
						</p>
						<p>회원가입일로부터 탈퇴시까지</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>개인정보 수집에 대한 거부 권리 및 그에 따른 서비스 제한사항</p>
						<p>
							<br>
						</p>
						<p>이용자는 본 사이트에서 수집하는 개인정보에 대해 동의를 거부할 권리가 있으나 필수항목에 대한 수집, 이용에
							대한 동의 거부 시 회원가입과 서비스 이용에 제한을 받을 수 있습니다.</p>
					</div>
					<div class="ckb">
						<div class="agreetext">
							<p><input type="checkbox" name="cb1" class="ab"> <label>개인정보 수집 이용에 동의합니다.</label></p>
							<br /> <p><input type="checkbox" name="all" class="check-all"> <label>전체동의</label></p>
						</div>
					</div>
				</div>
				<a href="/LPG/user/signup.do"><input type="button" value="회원가입" class="btn-theme"></a>
			</div>
			</form>
		</div>
	</div>

</body>
</html>
