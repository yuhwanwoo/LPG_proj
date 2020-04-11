<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300,400);
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
figure.snip1368 {
  font-family: 'Roboto', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 230px;
  max-width: 315px;
  width: 100%;
  color: #ffffff;
  line-height: 1.4em;
}
figure.snip1368 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.4s ease;
  transition: all 0.4s ease;
}
figure.snip1368 img {
  opacity: 1;
  width: 100%;
  vertical-align: top;
}
figure.snip1368 h3 {
  position: absolute;
  top: 0%;
  width: 100%;
  background-color: #212121;
  z-index: 1;
  text-align: right;
  padding: 15px 25px 0px;
  margin: 0;
  font-weight: 300;
  font-size: 1.3em;
  -webkit-transform: translateY(-200%);
  transform: translateY(-200%);
}
figure.snip1368 h3:before {
  position: absolute;
  content: '';
  top: 100%;
  left: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 315px 55px 0;
  border-color: transparent #212121 transparent transparent;
}
figure.snip1368 figcaption {
  padding: 5px 25px 15px;
  position: absolute;
  width: 100%;
  z-index: 2;
  bottom: 0%;
  background-color: #141414;
  -webkit-transform: translateY(200%);
  transform: translateY(200%);
}
figure.snip1368 figcaption:before {
  position: absolute;
  content: '';
  bottom: 100%;
  left: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 55px 0 0 315px;
  border-color: transparent transparent transparent #141414;
}
figure.snip1368 .icons {
  margin-top: -20px;
}
figure.snip1368 i {
  padding: 0px 8px;
  display: inline-block;
  font-size: 24px;
  color: #ffffff;
  text-align: center;
  opacity: 0.7;
}
figure.snip1368 i:hover {
  opacity: 1;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
figure.snip1368:hover h3,
figure.snip1368.hover h3 {
  -webkit-transform: translateY(0%);
  transform: translateY(0%);
}
figure.snip1368:hover figcaption,
figure.snip1368.hover figcaption {
  -webkit-transform: translateY(0%);
  transform: translateY(0%);
}
	</style>
<script type="text/javascript">
$(".hover").mouseleave(function () {
	$(this).removeClass("hover");
	}
);
</script>
</head>
<body style="background-color: #00b3fe">
<div id="category" class="container" style="width: 100%; text-align: center;">
<div style="display: inline-block;">
<figure class="snip1368">
  <a href="#"><img alt="lol" src="/LPG/img/lolimg.jpg" style="height: 450px;"></a>
  <h3>LoL</h3>
  <figcaption>
    <div class="icons">
    </div>
  </figcaption>
</figure>
</div>
<div style="display: inline-block; margin-left: 50px">
<figure class="snip1368">
  <a href="#"><img alt="soccer" src="/LPG/img/soccerimg.jpg" style=" height: 450px;"></a>
  <h3>Soccer</h3>
  <figcaption>
    <div class="icons">
    </div>
  </figcaption>
</figure>
</div>
</div>
</body>
</html>