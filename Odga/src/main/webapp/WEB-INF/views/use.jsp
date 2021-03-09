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
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
            <link rel="stylesheet" href="assets/css/card.css">
            <link rel="stylesheet" href="assets/css/tutorial.css">
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
    <header>
       <!-- Header Start -->
		<div class="header-area header-transparent">
			<div class="main-header">
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-1 col-lg-2 col-md-1">
                                <div class="logo">
                                  <a href="index.do"><img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;"></a>
                                </div>
							</div>
							<div class="col-xl-11 col-lg-10 col-md-8">
							<div class="col-xl-10 col-lg-10 col-md-8">
								<!-- Main-menu -->
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="listing.do">국내여행지</a></li>
											<li><a href="#">커뮤니티</a>
												<ul class="submenu">
													<li><a href="review">여행후기</a></li>
													<li><a href="support.do">문의하기</a></li>
												</ul>
											</li>
											<li><a href="use">이용방법</a></li>
											<li><a href="https://www.agoda.com/">호텔예약</a></li>
											<li class="add-list"><a href="dashboard.do"><i class="ti-plus"></i>나의 여행 만들기</a></li>
											<li class="login">									
									<c:choose>
											<c:when test="${empty LOGINUSER}">
												<a href="login.do"><i class="ti-user"></i>로그인 / 회원가입</a>
											</c:when>
									<c:otherwise>
											<c:choose>
												<c:when test="${LOGINUSER.m_verify eq 0}">
													<a href="logout.do"><i class="ti-user"></i>${LOGINUSER.m_name} 회원님 로그아웃</a>
													<li><a href="member.do"><i class="ti-user"></i> 마이페이지</a></li>
												</c:when>
											<c:otherwise>
													<a href="logout.do"><i class="ti-user"></i>${LOGINUSER.m_name} 관리자님 로그아웃</a>
													<li><a href="dashboard.do"><i class="ti-user"></i> 관리자페이지</a></li>
											</c:otherwise>
										    </c:choose>
									</c:otherwise>
									</c:choose>
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
	</div>
		<!-- Header End -->
	</header>
    <main>

        <!-- Hero Start-->
        <div class="hero-area2  slider-height2 hero-overly2 d-flex align-items-center ">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center pt-50">
                            <h2>이용 방법</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero End -->
        <!--
        <!-- Categories Area Start -->
        <div class="categories-area section-padding30">
            <div class="container2">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <span>ODGA</span>
                            <h2>여행 동선을 쉽게 확인하기</h2>
                        </div>
                    </div>
                </div>
                
		        <!-- Services Area Start -->
		        <ul class="card-list">
					<li class="card">
						<a class="card-image" href="listing" target="_blank" style="background-image: assets/img/use/p1.jpg;" data-image-full="assets/img/use/p1.jpg">
							<img src="assets/img/use/p1.jpg" alt="Psychopomp" />
						</a>
						<a class="card-description" href="https://michellezauner.bandcamp.com/album/psychopomp-2" target="_blank">
							<hh2>1. 지역 찾기</hh2>
							<p>리스트에서 여행지를 찾아서 선택 해보세요.</p>
						</a>
					</li>
					
					<li class="card">
						<a class="card-image" href="https://inlovewithaghost.bandcamp.com/album/lets-go" target="_blank" style="background-image: assets/img/use/p2.jpg;" data-image-full="assets/img/use/p2.jpg">
							<img src="assets/img/use/p2.jpg" alt="let's go" />
						</a>
						<a class="card-description" href="https://inlovewithaghost.bandcamp.com/album/lets-go" target="_blank">
							<hh2>2. 일정에 담기</hh2>
							<p>가고싶은 장소를 일정에 담아보세요.</p>
						</a>
					</li>
					
					<li class="card">
						<a class="card-image" href="https://vulfpeck.bandcamp.com/album/the-beautiful-game" target="_blank" style="background-image: assets/img/use/p3.jpg;" data-image-full="assets/img/use/p3.jpg">
							<img src="assets/img/use/p3.jpg" alt="The Beautiful Game"/>
						</a>
						<a class="card-description" href="https://vulfpeck.bandcamp.com/album/the-beautiful-game" target="_blank">
							<hh2>3. 플래너 작성</hh2>
							<p>플래너를 통해 일정을 계획해보세요.</p>
						</a>
					</li>
					
					<li class="card">
						<a class="card-image" href="https://www.skyscanner.co.kr/" target="_blank" style="background-image: assets/img/use/p4.jpg;" data-image-full="assets/img/use/p4.jpg">
							<img src="assets/img/use/p4.jpg" alt="Jane Doe" />
						</a>
						<a class="card-description" href="" target="_blank">
							<hh2>4. 여행하기</hh2>
							<p>일정이 정해지셨다면 떠나보세요!</p>
						</a>
					</li>
				</ul>
		        <!-- Services Area End -->
		        <!-- Popular Locations Start -->
		         <div style="display:flex;justify-content:center; margin: 15;">	 
		        	 <div class="container1" >
				  <div class="image-viewer">
				    <div class="main-image">
				      <img src="assets/img/use/1.jpg"/>
				    </div>
				    </div>
				  </div>
				  <div class="detail">
				    <h1 class="detail-name">Step1 여행지찾기🔎</h1>
				    <p class="detail-short-description"> 
				     여행지 리스트에서 검색을 통해 알아보세요.
				    </p>
				  </div>
				</div>
				<div style="display:flex;justify-content:center; margin: 15;">	 
		        	 <div class="container1" >
				  <div class="image-viewer">
				    <div class="main-image">
				      <img src="assets/img/use/2.jpg"/>
				    </div>
				    </div>
				  </div>
				  <div class="detail">
				    <h1 class="detail-name">Step2 일정만들기📃</h1>
				    <p class="detail-short-description"> 
				      가고싶은 장소 또는 관심있는 장소 이신가요? 일정에 담아 계획을 세워보세요.
				    </p>
				  </div>
				</div>
				<div style="display:flex;justify-content:center; margin: 15;">	 
		        	 <div class="container1" >
				  <div class="image-viewer">
				    <div class="main-image">
				      <img src="assets/img/use/3.jpg"/>
				    </div>
				    </div>
				  </div>
				  <div class="detail">
				    <h1 class="detail-name">Step3 플래너 작성✏</h1>
				    <p class="detail-short-description"> 
				       일정에 담은 장소들을 지도에서 확인해보세요 인근의 맛집 명소들을 한눈에 확인 할 수 있습니다.
				    </p>
				  </div>
				</div> 
				<div style="display:flex;justify-content:center; margin: 15;">	 
		        	 <div class="container1" >
				  <div class="image-viewer">
				    <div class="main-image">
				      <img src="assets/img/use/4.jpg"/>
				    </div>
				    </div>
				  </div>
				  <div class="detail">
				    <h1 class="detail-name">Step4 여행하기✈</h1>
				    <p class="detail-short-description"> 
				      완성된 일정을 친구들과 공유해보세요! 길찾기와 메모만 잘 활용해도 여행 준비 끝!
				    </p>
				  </div>
				</div>
			</div>
		</div>
		
		        <!-- Popular Locations End -->

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
                                  <a href="index.html"><img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;"></a>
                                </div>
                               </div>
							 </div>
							</div>
						<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Administrator</h4>
									<ul>
										<li><a href="https://github.com/lzhxxn">이지훈</a></li>
										<li><a href="https://github.com/yumgit23">허유민</a></li>
										<li><a href="https://github.com/DobbyisFree1">박종범</a></li>
										<li><a href="https://github.com/dragongit94">이민용</a></li>
										<li><a href="https://github.com/suadeomgit">권성환</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Quick Links</h4>
									<ul>
										<li><a href="join.do">회원가입</a></li>
										<li><a href="login.do">로그인</a></li>
										<li><a href="use.do">나의 여행 만들기</a></li>
										<li><a href="review.do">여행후기</a></li>
										<li><a href="inquiry.do">문의하기</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
							<div class="single-footer-caption mb-50">
								<div class="footer-tittle">
									<h4>Contact with Us</h4>
									<ul>
										<li><span class="la la-home"></span> 서울 마포구 백범로 23 3층</li>
										<li><span class="la la-headphones"></span> <a href="#">+ 81 02 707 1480</a></li>
										<li><span class="la la-envelope-o"></span> <a href="odgacom@naver.com">odgacom@naver.com</a></li>
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
									&copy; Copyright 
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									<b>Odga.com</b> Made with
									<i class="fa fa-heart" aria-hidden="true"></i>
									<a href="https://github.com/lzhxxn" target="_blank">JH</a>
									<a href="https://github.com/dragongit94" target="_blank">MY</a>
									<a href="https://github.com/yumgit23" target="_blank">YM</a>
									<a href="https://github.com/DobbyisFree1" target="_blank">JB</a>
									<a href="https://github.com/suadeomgit" target="_blank">SH</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4">
							<!-- Footer Social -->
							<div class="footer-social f-right">
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-facebook-f"></i></a> 
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-twitter"></i></a>
								<a href="https://www.instagram.com/odga__com"><i class="fas fa-globe"></i></a> 
								<a href="https://www.instagram.com/odga__com"><i class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
		<!-- Footer End-->
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>


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
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        <script>
	     // wait for the entire page to finish loading
	     window.addEventListener('load', function() {
	     	
	     	// setTimeout to simulate the delay from a real page load
	     	setTimeout(lazyLoad, 1000);
	     	
	     });
		// 4카드
	     function lazyLoad() {
	     	var card_images = document.querySelectorAll('.card-image');
	     	
	     	// loop over each card image
	     	card_images.forEach(function(card_image) {
	     		var image_url = card_image.getAttribute('data-image-full');
	     		var content_image = card_image.querySelector('img');
	     		
	     		// change the src of the content image to load the new high res photo
	     		content_image.src = image_url;
	     		
	     		// listen for load event when the new photo is finished loading
	     		content_image.addEventListener('load', function() {
	     			// swap out the visible background image with the new fully downloaded photo
	     			card_image.style.backgroundImage = 'url(' + image_url + ')';
	     			// add a class to remove the blur filter to smoothly transition the image change
	     			card_image.className = card_image.className + ' is-loaded';
	     		});
	     		
	     	});
	     	
	     }
	     //튜토리얼
	     class ImageViewer {
	    	  constructor(selector) {
	    	    this.selector = selector;
	    	    $(this.secondaryImages).click(() => this.setMainImage(event));
	    	    $(this.mainImage).click(() => this.showLightbox(event));
	    	    $(this.lightboxClose).click(() => this.hideLightbox(event));
	    	  }
	    	  
	    	  get secondaryImageSelector() {
	    	    return '.secondary-image';
	    	  }
	    	  
	    	  get mainImageSelector() {
	    	    return '.main-image';
	    	  }
	    	  
	    	  get lightboxImageSelector() {
	    	    return '.lightbox';
	    	  }
	    	  
	    	  get lightboxClose() {
	    	    return '.lightbox-controls-close';
	    	  }
	    	  
	    	  get secondaryImages() {
	    	    var secondaryImages = $(this.selector).find(this.secondaryImageSelector).find('img')
	    	    return secondaryImages;
	    	  }
	    	  
	    	  get mainImage() {
	    	    var mainImage = $(this.selector).find(this.mainImageSelector);
	    	    return mainImage;
	    	  }
	    	  
	    	  get lightboxImage() {
	    	    var lightboxImage = $(this.lightboxImageSelector);
	    	    return lightboxImage;
	    	  }
	    	  
	    	  setLightboxImage(event){
	    	    var src = this.getEventSrc(event);
	    	    this.setSrc(this.lightboxImage, src);
	    	  }
	    	  
	    	  setMainImage(event){
	    	    var src = this.getEventSrc(event);
	    	    this.setSrc(this.mainImage, src);
	    	  }
	    	  
	    	  getSrc(node){
	    	    var image = $(node).find('img');
	    	  }
	    	  
	    	  setSrc(node, src){
	    	    var image = $(node).find('img')[0];
	    	    image.src = src;
	    	  }
	    	  
	    	  getEventSrc(event){
	    	    return event.target.src;
	    	  }
	    	  
	    	  showLightbox(event){
	    	    this.setLightboxImage(event);
	    	    $(this.lightboxImageSelector).addClass('show');
	    	  }
	    	  
	    	  hideLightbox(){
	    	    $(this.lightboxImageSelector).removeClass('show');
	    	  }
	    	}

	    	new ImageViewer('.image-viewer');
        </script>

    </body>
</html>