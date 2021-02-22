<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!doctype html>
		<html class="no-js" lang="zxx">

		<head>
			<meta charset="utf-8">
			<meta http-equiv="x-ua-compatible" content="ie=edge">
			<title>Odga.com</title>
			<meta name="description" content="">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<!-- <link rel="manifest" href="site.webmanifest"> -->
			<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

			<!-- CSS here -->
			<link rel="stylesheet" href="assets/css/select.css">
			<link rel="stylesheet" href="assets/css/bootstrap.min.css"> 
			<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
			<link rel="stylesheet" href="assets/css/slicknav.css">
			<link rel="stylesheet" href="assets/css/flaticon.css">
			<link rel="stylesheet" href="assets/css/price_rangs.css">
			<link rel="stylesheet" href="assets/css/animate.min.css">
			<link rel="stylesheet" href="assets/css/magnific-popup.css">
			<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
			<link rel="stylesheet" href="assets/css/themify-icons.css">
			<link rel="stylesheet" href="assets/css/slick.css">
			<link rel="stylesheet" href="assets/css/nice-select.css">
			<link rel="stylesheet" href="assets/css/style.css">
			<!-- <link rel="stylesheet" href="assets/css/testa2.css"> -->
			<link rel="stylesheet" href="assets/css/planner.css">
			<link rel="stylesheet" href="assets/css/wrap.css">
			
			<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
			<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
		</head>

		<body>
			<!-- Preloader Start -->
			<div id="preloader-active">
				<div class="preloader d-flex align-items-center justify-content-center">
					<div class="preloader-inner position-relative">
						<div class="preloader-circle"></div>
						<div class="preloader-img pere-text">
							<img src="assets/img/logo/loder1_d.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			<!-- Preloader End -->
			<header>
				<!-- Header Start -->
				<div class="header-area header-transparent">
					<div class="main-header">
						<div class="header-bottom  header-sticky">
							<div class="container-fluid">
								<div class="row align-items-center">
									<!-- Logo -->
									<div class="col-xl-2 col-lg-2 col-md-1">
										<div class="logo">
											<a href="index.html"><img src="assets/img/logo/logo_b.png" alt=""></a>
										</div>
									</div>
									<div class="col-xl-10 col-lg-10 col-md-8">
										<!-- Main-menu -->
										<div class="main-menu f-right d-none d-lg-block">
											<nav>
												<ul id="navigation">
													<li><a href="listing.html">국내여행지</a></li>
													<li><a href="#">커뮤니티</a>
														<ul class="submenu">
															<li><a href="review.html">여행후기</a></li>
															<li><a href="support.html">문의하기</a></li>
														</ul>
													</li>
													<li><a href="use.html">이용방법</a></li>
													<li><a href="https://www.agoda.com/">호텔예약</a></li>
													<li class="add-list"><a href="listing_details.html"><i
																class="ti-plus"></i>나의 여행 만들기</a></li>
													<li class="login"><a href="login.html">
															<i class="ti-user"></i>로그인 / 회원가입</a>
													</li>
												</ul>
											</nav>
										</div>
									</div>
									<!-- Mobile Menu -->
									<div class="col-12">
										<div class="mobile_menu d-block d-lg-none"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Header End -->
			</header>
			<main>

				<!-- Hero Start-->
				<div class="hero-area3 hero-overly2 d-flex align-items-center " style="min-height: 103px">

				</div>
				<!--Hero End -->
				<!-- listing Area Start -->
				<div class="listing-area pt-120 pb-120">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<!-- Job Category Listing start -->
								<div class="row" style="margin-left: 5px">
						
									<div class="col-75">	
										<input type="text" class="text" placeholder="Your Travel name.."/>	
									</div>
									<div class="col-25">
										<select name="test1" class="nice-select">
											<option value="" selected="selected">인원</option>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
										</select>
									</div>
									<div class="col-25">
										<select name="test1" class="nice-select">
											<option value="1" selected="selected">혼자만의 여행</option>
											<option value="2">커플</option>
											<option value="3">가족</option>
											<option value="4">우정여행</option>
										</select>
									</div>
									<!-- <div class="selectbox"> -->
									<div class="col-50">
									  <form name="form">								  	
										  <select name="area"  id="areacode" class="nice-select" onchange="changes(value)">
										    <option value="">지역 선택</option>
										    <c:forEach items="${list.list}" var="area">
											    <option value="${area.areacode}">${area.area}</option>
										    </c:forEach>
										  </select>		<br/>	  
										  <select name="sigungu" class="nice-select" id="sigunguCode">
										    <option value="">세부 지역</option>
										  </select>
									  </form>
									</div>


									<div class="col-2" style="float:right;margin-left:0px;margin-right:0px;">
										<a href="#" class="btn list-btn"
											style="width:200px;float:right; padding: 23px 20px;margin-right:15px;">저
											장</a>
									</div>
								</div>
								<!-- Job Category Listing End -->
							</div>
						</div>
					</div>
					<div class="row" style="margin-right:5px;margin-left:5px;margin-top:10px">
						<!-- Left content -->
						<div class="col-1">
							<div class="row" style="margin-top: 15px;">
								<div class="col-12">
									<div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
										<h5>DAY</h5>
									</div>
								</div>
							</div>
							<!-- Job Category Listing start -->
							<div class="category-listing mb-50" style="padding: 10px 10px 20px;">
								<!-- single one -->
								<div class="single-listing">
									<!-- Select job items start -->
									<div class="select-job-items1">
										<select id="day" onchange="selectDay()">
											<option value="0">기간</option>
											<option value="1">무박</option>
											<option value="2">1박2일</option>
											<option value="3">2박3일</option>
											<option value="4">3박4일</option>
											<option value="5">4박5일</option>
											<option value="6">5박6일</option>
											<option value="7">6박7일</option>
										</select>
									</div>
									<div class="select-job-items1">
										<table id="myTable" class="table">
										  <thead>
										    <!-- <th>테이블</th>
										    <th>헤더</th> -->
										  </thead>
										  <tbody id="tbody"></tbody>
										</table>
									</div>
									<div class="single-listing">
										<!-- Range Slider End -->
										<button onclick="rowAdd()" class="btn list-btn mt-20">DAY 추가</button>
										<button  onclick="rowDelete()" class="btn list-btn mt-20">DAY 삭제</button>
										<button  onclick="dayDelete()" class="btn list-btn mt-20">전체 삭제</button>
									</div>
									

								</div>
								
							</div>
							<!-- Job Category Listing End -->
						</div>
						<div class="col-2">
							<div class="row" style="margin-top: 15px;">
								<div class="col-12">
									<div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
										<h5 style="margin-left: 15px;">DAY 1 일정</h5>
									</div>
								</div>
							</div>
							<!-- Job Category Listing start -->
							<div class="category-listing mb-50">
								<!-- single one -->
								<div class="single-listing">
									<!-- input -->
									<div class="input-form">
										<input type="text" id="name2" placeholder="검색하실 도시를 입력해주세요" x-webkit-speech
											autocomplete="off" name="writer2" />
									</div>
									<!-- Select job items start -->
									
									<div class="select-job-items2">
										<div class="card" id="card2">
										</div>
									</div>
									<!--  Select job items End-->
									<!-- select-Categories start -->


								</div>

								<div class="single-listing">
									<!-- Range Slider End -->
									<a href="#" class="btn list-btn mt-20">검색!</a>
									<a href="#" class="btn list-btn mt-20">Reset</a>
								</div>
							</div>
							<!-- Job Category Listing End -->
						</div>
						<div class="col-3">
							<div class="row" style="margin-top: 15px;">
								<div class="col-12">
									<div class="small-section-tittle2 mb-45" style="margin-bottom: 15px;">
										<h5>여행 일정을 선택하세요</h5>
									</div>
								</div>
							</div>
							<!-- Job Category Listing start -->
							<div class="category-listing mb-50">
								<!-- single one -->
								<div class="single-listing">
									<!-- input -->
									<div class="input-form">
										<input type="text" id="name" placeholder="검색하실 도시를 입력해주세요" x-webkit-speech
											autocomplete="off" name="writer" />
									</div>
									<!-- Select job items start -->
									
									<div class="select-job-items1">
										<select title="관광타입" name="contenttypeid" id="contenttypeid">
											<option value selected="selected">타입선택</option>
											<option value="12">관광지</option>
											<option value="14">문화시설</option>
											<option value="32">숙박</option>
											<option value="39">음식</option>
										</select>
									</div>
									<div class="select-job-items2">
										<div class="card" id="card">
										</div>
									</div>
									<!--  Select job items End-->
									<!-- select-Categories start -->


								</div>

								<div class="single-listing">
									<!-- Range Slider End -->
									<a href="#" class="btn list-btn mt-20" id="search">검색!</a>
									<a href="#" class="btn list-btn mt-20">Reset</a>
								</div>
							</div>
							<!-- Job Category Listing End -->
						</div>

						<!-- Right content -->
						<div class="col-8">

							<p style="float:left;margin-top:0px;height:3%;">
								<input type="checkbox" id="chkTraffic" onclick="setOverlayMapTypeId()" /> 교통정보 보기
								<input type="checkbox" id="chkBicycle" onclick="setOverlayMapTypeId()" /> 자전거도로 정보 보기
							</p>
							<div class="map_wrap" style="width:100%;height:800px;float:bottom;">
								<div id="map"
									style="width:100%;height:90%;float:bottom;margin-right:0px;position:relative;overflow:hidden;">
								</div>

							</div>
							
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8831cbdd7d745d3f8c6d9e1fec81ecca&libraries=services"></script>
							<script>
								var markers = [];
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
										level: 6, // 지도의 확대 레벨
										mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
									};
								// 지도를 생성한다 
								var map = new kakao.maps.Map(mapContainer, mapOption);

							</script>
						</div>
					</div>
				</div>

				<!-- listing-area Area End -->

			</main>
			<!-- Footer Start-->
			<footer>
				<div class="footer-area">
					<div class="container">
						<div class="footer-top footer-padding">
							<div class="row justify-content-between">
								<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
									<div class="single-footer-caption mb-50">
										<div class="col-xl-2 col-lg-2 col-md-1">
											<!-- Logo -->
											<div class="logo">
												<a href="index.html"><img src="assets/img/logo/logo_b.png" alt=""></a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
									<div class="single-footer-caption mb-50">
										<div class="footer-tittle">
											<h4>관리자정보</h4>
											<ul>
												<li><a href="#">이지훈</a></li>
												<li><a href="#">허유민</a></li>
												<li><a href="#">박종범</a></li>
												<li><a href="#">이민용</a></li>
												<li><a href="#">권성환</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
									<div class="single-footer-caption mb-50">
										<div class="footer-tittle">
											<h4>고객센터</h4>
											<ul>
												<li><a href="#">문의하기</a></li>
												<li><a href="#">이용약관</a></li>
												<li><a href="#">개인정보 처리방침</a></li>
												<li><a href="#">회사주소</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
									<div class="single-footer-caption mb-50">
										<div class="footer-tittle">
											<h4>Download App</h4>
											<ul>
												<li class="app-log"><a href="#"><img
															src="assets/img/gallery/app-logo.png" alt=""></a></li>
												<li><a href="#"><img src="assets/img/gallery/app-logo2.png" alt=""></a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="footer-bottom">
							<div class="row d-flex justify-content-between align-items-center">
								<div class="col-xl-9 col-lg-8">
									<div class="footer-copy-right">
										<p>
											<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
											Copyright &copy;
											<script>
												document
													.write(new Date().getFullYear());
											</script>
											Copyright©Odga.com Organization, All rights reserved.
											<i class="fa fa-heart" aria-hidden="true"></i><a href="https://odga.com"
												target="_blank">Odga.com</a>
											<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										</p>
									</div>
								</div>
								<div class="col-xl-3 col-lg-4">
									<!-- Footer Social -->
									<div class="footer-social f-right">
										<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
												class="fab fa-twitter"></i></a> <a href="#"><i
												class="fas fa-globe"></i></a> <a href="#"><i
												class="fab fa-instagram"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- Footer End-->
			<!-- Scroll Up -->
			<div id="back-top">
				<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
			</div>

<!-- 동적 셀렉트 박스 -->
<script type="text/javascript">
function changes(fr) {
	var li = new Array();
	var li2 = new Array();
	var num = new Array();
	var vnum = new Array();
	var latitude = 0;
	var longitude = 0;
	var k = 0;

	<c:set var="list" value="${list}"/>
	<c:forEach items="${list.list}" var="area">
    if(fr==${area.areacode}) {
    	li.push("세부 지역");
    	li2.push("");
    	<c:forEach items="${list.list_s}" var="sigungu">
    		if(${area.areacode}==${sigungu.areacode}){
	    		li.push("${sigungu.si_name}");
	    		li2.push("${sigungu.sigungucode}");
    		}
    	</c:forEach>
		num = li;
		vnum = li2;

		latitude=${area.latitude};
		longitude=${area.longitude};		
    }else if(fr==""){
    	if(k=0){
	    	li.push("세부 지역");
	    	li2.push("");
	    	k++;
	    	num = li;
			vnum = li2;
    	}
    	latitude=37.56682;
		longitude=126.97865;  	
    }
    </c:forEach>
  // 셀렉트안의 리스트를 기본값으로 한다..
	$('#sigungu').empty();
	  //포문을 이용하여 두번째(test2)셀렉트 박스에 값을 뿌려줍니당)
	for(var i=0; i<num.length;i++) {
	  document.form.sigungu.options[i] = new Option(num[i],vnum[i]);
	}
	
	// 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
    
    // 지도 중심을 이동 시킵니다
    map.setCenter(moveLatLon);
}

</script>
<script>
function marker(latitude, longitude, title, firstimage, addr1, zipcode) {
		// 마커가 표시될 위치입니다 
	// 지도에 마커를 표시합니다 
	var marker = new kakao.maps.Marker({
	    map: map, 
	    position: new kakao.maps.LatLng(latitude, longitude)
	});
	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap" id="over">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '          '+title+'' + 
	            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src='+firstimage+'; width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">'+addr1+'</div>' + 
	            '                <div class="jibun ellipsis">(우) '+zipcode+'</div>' + 
	            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';
	
	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var overlay = new kakao.maps.CustomOverlay({
    content: content,
    map: map,
    position: marker.getPosition()       
	});
	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(marker, 'click', function() {
	    overlay.setMap(map);
	});
}	
// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    //overlay.setMap(null);    
    var over = document.getElementById('over');
    over.remove();
    Marker.setMap(null);
}
function panTo(latitude, longitude) {
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
}        

</script>
<script type="text/javascript">
$(function(){
	 
	 $(document).ready(function() {
			 
            // ID를 alpreah_input로 가지는 곳에서 키를 누를 경우
            $("#name").keydown(function(key) {
                //키의 코드가 13번일 경우 (13번은 엔터키)
                if (key.keyCode == 13) {
                	var areaindex = $("#areacode option:selected").attr('value');
                	var typeindex = $("#contenttypeid option:selected").attr('value');
                	var sigunguIndex = $("#sigunguCode option:selected").attr('value');
                	var matchNum = 0; 
       			 	var nomatchNum = 0;
                	//alert("start");
		             $.ajax({
		                    type: "post",
		                    url: "select.json",
		                    data: {name: $("#name").val() ,areacode : areaindex, sigungucode: sigunguIndex, contenttypeid: typeindex},
		                    success: function(responseData){
		                        if(!responseData){
		                           alert("검색 결과가 없습니다.");
		                           return false;
		                        }
		                        var html = "";
		                        if(responseData.length != 0){
		                           for(var i=0; i<responseData.length; i++){
		                        	   var title = responseData[i].title;
		                                  html += "<h5 onclick='marker("+responseData[i].mapy+", "+responseData[i].mapx+", &quot;"+responseData[i].title+"&quot;, &quot;"+responseData[i].firstimage+"&quot;, &quot;"+responseData[i].addr1+
		                                  "&quot;, &quot;"+responseData[i].zipcode+"&quot;); panTo("+responseData[i].mapy+", "+responseData[i].mapx+")'><a class='link_a'>"+responseData[i].title+"</a></h5>";
		                                  html += "<h5>"+responseData[i].addr1+"</h5>";
		                                  if((responseData[i].firstimage)!= null){ html += "<div style='margin-bottom:5px'><img class='pic' src='"+responseData[i].firstimage+"'/></div>";   
		                                  }else{ html += "<div><img class='pic' src='https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872-stock-illustration-image-vector-symbol-missing-available.jpg'/></div>";}                      
		                           }          
		                        }else{
		                           html += "<tr>";
		                           html += "<td colspan='4' align='center'>검색 결과가 없습니다.</td>";
		                           html += "</tr>";
		                        }
		                        _.escape(html);
		                        $("#card").html(html);
		                      }
		             });
                }
            });
	 });
}); 

</script>

<!-- <script type="text/javascript">
$(function(){
	 
	 $(document).ready(function() {
			 
            // ID를 alpreah_input로 가지는 곳에서 키를 누를 경우
            $("#name").keydown(function(key) {
                //키의 코드가 13번일 경우 (13번은 엔터키)
                if (key.keyCode == 13) {
                	var areaindex = $("#areacode option:selected").attr('value');
                	var typeindex = $("#contenttypeid option:selected").attr('value');
                	var sigunguIndex = $("#sigunguCode option:selected").attr('value');
                	var matchNum = 0; 
       			 	var nomatchNum = 0;
                	//alert("start");
		             $.ajax({
		                    type: 'get',
		                    url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=6f%2B9GV1OSBV%2BRfUgfgMGJdFxW6rxP%2F5pUN8ZCITBNd94TjMATfCcpyLoRWl3X8ad9ojV9B%2BSLxgndmvE23wVBQ%3D%3D&contentTypeId='+typeindex+'&areaCode='+areaindex+'&sigunguCode='+sigunguIndex+'&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=23000&pageNo=', // 읽어올 문서
		    			    dataType: "xml",
		                    data: { addr1 : $("#name").val()},
		                    success: function(xml) {
		                    	 
		                    	 var html= "";
		                    	 var str = "";
		                    	 var result = 0;
		                    	 var firstimage = "";
		                    	 //alert($("#name").val());
		                    	// alert(areaindex);
		                    	 //alert(typeindex);
		                    	 $(xml).find('item').each(function(){
		                    		 str = $(this).find("addr1").text();
		                    		 firstiamge = $(this).find("firstimage").text();
		                    		 imgSize= firstiamge.length;
		                    		 if(str.indexOf($("#name").val())!=-1){
		                    			 //alert(str.indexOf($("#name").val()));
			                    		 html += "<h5><a class='link_a' onclick='marker("+$(this).find("mapy").text()+", "+$(this).find("mapx").text()+")'>"+$(this).find("title").text()+"</a></h5>";
			                    		 html += "<h5>"+$(this).find("addr1").text()+"</h5>";
			                    		 if(imgSize>0){ html += "<div style='margin-bottom:5px'><img class='pic' src='"+$(this).find("firstimage").text()+"'/></div>";	
			                    		 }else{ html += "<div><img class='pic' src='https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872-stock-illustration-image-vector-symbol-missing-available.jpg'/></div>";}
			                    		 //alert($(this).find("addr1").text());		
			                    		 //result = str.indexOf($("#name").val());
		                    	 		 //alert(result);
			                    		 matchNum++;
			                    		// alert(matchNum);
		                    		 }else{
		                    			// alert(str);
		                    			 if(nomatchNum<1){		                    				 
		                    			 	html += "<div id=header>검색결과 없음</div>";
		                    			 	nomatchNum++;		                    				
		                    			 }
		                    		 }
		                    	 });
		                    	 $("#card").html(html);	
		                    	 //alert(matchNum);
					             if(matchNum>=1){
				              		 var x = document.getElementById("header");
				       				 if (x.style.display === "none") {
				       					    x.style.display = "block";
				       			 	 }else {
				       			 	    x.style.display = "none";
				       			  }
				              	}  
		                    	 
		                    }		
		                   
		             });
		             
                }
                
            });
            
    });
});
</script> -->
			<!-- JS here -->
			
			<!-- All JS Custom Plugins Link Here here -->
			<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
			<!-- Jquery, Popper, Bootstrap -->
			<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
			<script src="./assets/js/popper.min.js"></script>
			<script src="./assets/js/bootstrap.min.js"></script>
			<!-- Jquery Mobile Menu -->
			<script src="./assets/js/jquery.slicknav.min.js"></script>

			<!-- Jquery Slick , Owl-Carousel Plugins -->
			<script src="./assets/js/owl.carousel.min.js"></script>
			<script src="./assets/js/slick.min.js"></script>
			<!-- One Page, Animated-HeadLin -->
			<script src="./assets/js/wow.min.js"></script>
			<!-- <script src="./assets/js/price-range.js"></script> -->
			<script src="./assets/js/animated.headline.js"></script>
			<script src="./assets/js/jquery.magnific-popup.js"></script>

			<!-- Nice-select, sticky -->
			<!--<script src="./assets/js/jquery.nice-select.min.js"></script> -->
			<script src="./assets/js/jquery.sticky.js"></script>

			<!-- contact js -->
			<!-- <script src="./assets/js/contact.js"></script> -->
			<script src="./assets/js/jquery.form.js"></script>
			<script src="./assets/js/jquery.validate.min.js"></script>
			<script src="./assets/js/mail-script.js"></script>
			<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

			<!-- Jquery Plugins, main Jquery -->
			<script src="./assets/js/plugins.js"></script>
			<script src="./assets/js/main.js"></script>
			
			


			<script src="https://cdn.jsdelivr.net/npm/underscore@1.12.0/underscore-min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
			<!-- <script src="//work6.kr/plugin/plugin_link/19"></script> -->

		</body>

		</html>