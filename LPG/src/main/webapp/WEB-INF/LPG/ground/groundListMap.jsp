<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
	margin: 0;
	overflow:hidden;
}
#map{
width:100vw;
height:100vh;
margin:0;
}
</style>
</head>
<body>
<div id = map></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ff6292d388b8389fcdae5f2f7431f63"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7ff6292d388b8389fcdae5f2f7431f63&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

</script>
</body>
</html>