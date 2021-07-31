<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>IT 공유 블로그</title>
    <meta name="description" content="여러분을 공유하세요.">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
    <link rel="canonical" href="#" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="블로그 템플릿" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:image" content="" />
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png">

    <!-- CSS
        ============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">

    <!-- Gordita Fonts CSS -->
    <link rel="stylesheet" href="assets/fonts/gordita-fonts.css" />

    <!-- Icofont CSS -->
    <link rel="stylesheet" href="assets/css/vendor/icofont.min.css" />

    <!-- Light gallery CSS -->
    <link rel="stylesheet" href="assets/css/plugins/lightgallery.min.css">

    <!-- Swiper bundle CSS -->
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />

    <!-- AOS CSS -->
    <link rel="stylesheet" href="assets/css/plugins/aos.css">


    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->

    <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
        <link rel="stylesheet" href="assets/css/plugins/plugins.min.css"> -->

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>




<body>

    <!--========  헤더영역  =========-->
    <header class="header">
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 order-1 order-lg-1">
                        <ul class="header-top-menu-list">
						<% if (session.getAttribute("memberId") == null) { %>                        
                            <li><a href="contact.jsp">문의</a></li>
                            <li><a href="login.jsp">로그인</a></li>
							<%} else {%>                                                      
							<li><a href="contact.jsp">문의</a></li>
                            <li><a href="write-post.jsp">글쓰기</a></li>
                           	<li><a href="logout.jsp">로그아웃</a></li>
							<% } %>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 order-3 order-lg-2">
                        <div class="header-top-contact-info">
                            Share what you know, Share what you make, Share all of you

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 order-2 order-lg-3">
       
                    </div>
                </div>
            </div>
        </div>
        <div class="header-mid-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-2 col-5">
                        <div class="logo">
                            <a href="index.jsp">
                                <img src="assets/images/logo/logo.png" alt="" />
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 d-md-block d-none">
                        <div class="header-add-banner text-center">
                            <a href="#">
                                <img src="assets/images/banners/header-add-banner.jpg" alt="" />
                                <h6 class="header-add-text">모든 간편식 할인
                                    <span>50% Off</span>
                                </h6>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-7">
                        <div class="header-mid-right-side">
                            <a href="javascript:void(0)" id="search-overlay-trigger" class="single-action-item">
                                <img src="assets/images/icons/search.png" alt="">
                            </a>
                            <a href="#" class="single-action-item">
                                <img src="assets/images/icons/notification.png" alt="">
                            </a>
                            <a href="#" class="single-action-item">
                                <img src="assets/images/icons/bookmark.png" alt="">
                            </a>

							<% if (session.getAttribute("memberId") == null) { %>
                            
                             <a href="login.jsp" class="single-action-item">
                             
                            
							<% }else { %>
                            	<a href="user.jsp" class="single-action-item"> 
							<% } %>
                                <img src="assets/images/icons/user.png" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-9">
                        <ul class="social-share-area mt-15 mb-15">
                            <li><a href="#"><i class="icofont-facebook"></i></a></li>
                            <li><a href="#"><i class="icofont-skype"></i></a></li>
                            <li><a href="#"><i class="icofont-twitter"></i></a></li>
                            <li><a href="#"><i class="icofont-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-8 col-3">
                        <div class="main-menu-area text-end">
                            <nav class="navigation-menu">
                                <ul>
                                    <li>
                                        <a href="index.jsp"><span>홈</span></a>
                                    </li>
                                    <li>
                                        <a href="introduction.jsp"><span>소개</span></a>
                                    </li>
                                    <li class="has-children">
                                        <a href="category.jsp"><span>카테고리</span></a>
                                            <ul class="submenu">
                                                <li><a href="#"><span>ARTICLE</span></a> </li>
                                                <li><a href="#"><span>STUDY</span></a> </li>
                                                <li><a href="#"><span>SHOW ME YOUR PROJECT</span></a> </li>
                                                <li><a href="#"><span>DAILY</span></a> </li>
                                            </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#"><span>기타페이지</span></a>
                                        <ul class="submenu">
                                            <li><a href="blog-details.jsp"><span>블로그 상세페이지</span></a> </li>
                                            <li><a href="author.jsp"><span>작성자 글</span></a> </li>
                                            <li><a href="register.jsp"><span>회원가입</span></a> </li>
                                            <li><a href="write-post.jsp"><span>글작성</span></a> </li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.jsp"><span>연락 </span></a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- mobile menu -->
                        <div class="mobile-menu-right">
                            <div class="mobile-navigation-icon d-block d-lg-none" id="mobile-menu-trigger">
                                <i></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--======== 헤더영역 종료  =========-->











    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_box text-center">
                        <!-- <h2 class="breadcrumb-title">@@title</h2> -->
                        <!-- breadcrumb-list start -->
                        <ul class="breadcrumb-list">
                            <li class="breadcrumb-item"><a href="index.html">홈</a></li>
                            <li class="breadcrumb-item active">로그인</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->






    <div id="main-wrapper">
        <div class="site-wrapper-reveal">

            <div class="login-register-page-area section-space--ptb_80">
                <div class="container">
                    <div class="row ">
                        <div class="col-lg-6 m-auto">
                            <div class="login-content">

                                <div class="login-header mb-40">
                                    <h5>로그인</h5>
                                </div>

                                <form action="/blog/login" method="post" onsubmit="Login__submit(this); return false;">
                                    <input type="text" name="memberId" placeholder="사용자ID">
                                    <input type="password" name="memberPass" placeholder="비밀번호">
                                    <%--요청 범위에 alert가 있는 경우--%>
									<c:if 
									test="${requestScope.alert != null && requestScope.alert != ''}">
									<div class="color-error text-left">
										<%--요청범위 내 alert값 출력--%>
										<!--<td colspan="2" class="color-error text-left">-->
										<c:out value="${requestScope.alert}" />
									</div>	
									</c:if>
									
                                    <div class="remember-forget-wrap mb-30">
                                        <div class="remember-wrap">
                                            <input type="checkbox">
                                            <p>기억하기</p>
                                            <span class="checkmark"></span>
                                        </div>
                                        <div class="forget-wrap">
                                            <a href="#">비밀번호 찾기?</a>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn-primary btn-large">로그인</button>
                                    <div class="member-register mt-5">
                                        <p> 회원이 아니신가요? <a href="register.jsp"> 회원가입</a></p>
                                    </div>
                                    
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>




    <!--======  바닥글 영역 =======-->
    <footer class="footer-area footer-one">
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-bottom-inner">
                            <div class="copy-right-text">
                                <p>© 2021 Blog by Jason Jaewoo, Kim.</p>
                            </div>
                            <div class="button-right-box">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--=====  바닥글 종료 ========-->



















    <!--====================  search overlay ====================-->
    <div class="search-overlay" id="search-overlay">

        <div class="search-overlay__header">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <!-- search content -->
                        <div class="search-content text-end">
                            <span class="mobile-navigation-close-icon" id="search-close-trigger"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="search-overlay__inner">
            <div class="search-overlay__body">
                <div class="search-overlay__form">
                    <form action="#">
                        <input type="text" placeholder="검색">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of search overlay  ====================-->
    <!--====================  scroll top ====================-->
    <a href="#" class="scroll-top" id="scroll-top">
        <i class="arrow-top icofont-swoosh-up"></i>
        <i class="arrow-bottom icofont-swoosh-up"></i>
    </a>
    <!--====================  End of scroll top  ====================-->

    <!--====================  mobile menu overlay ====================-->
    <div class="mobile-menu-overlay" id="mobile-menu-overlay">
        <div class="mobile-menu-overlay__inner">
            <div class="mobile-menu-overlay__header">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-8">
                            <!-- logo -->
                            <div class="logo">
                                <a href="index.jsp">
                                    <img src="assets/images/logo/logo.png" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6 col-4">
                            <!-- mobile menu content -->
                            <div class="mobile-menu-content text-end">
                                <span class="mobile-navigation-close-icon" id="mobile-menu-close-trigger"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-overlay__body">
                <nav class="offcanvas-navigation">
                    <ul>
                        <li><a href="index.jsp"><span>홈</span></a></li>
                        <li><a href="introduction.jsp"><span>소개</span></a></li>
                        <li class="has-children">
                            <a href="category.jsp"><span>카테고리</span></a>
                                <ul class="sub-menu">
                                    <li><a href="#"><span>ARTICLE</span></a> </li>
                                    <li><a href="#"><span>STUDY</span></a> </li>
                                    <li><a href="#"><span>SHOW ME YOUR PROJECT</span></a> </li>
                                    <li><a href="#"><span>DAILY</span></a> </li>
                                </ul>
                        </li>

                        <li class="has-children">
                            <a href="#">기타페이지</a>
                            <ul class="sub-menu">
                                <li><a href="blog-details.jsp"><span>블로그 상세페이지</span></a> </li>
                                <li><a href="author.jsp"><span>작성자 글</span></a> </li>
                                <li><a href="register.jsp"><span>회원가입</span></a> </li>
                                <li><a href="write-post.jsp"><span>글쓰기</span></a> </li>
                            </ul>
                        </li>
                        <li><a href="contact.jsp"><span>연락 </span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!--====================  End of mobile menu overlay  ====================-->








    <!-- JS
    ============================================ -->
    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- jQuery JS -->
    <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="assets/js/vendor/bootstrap.min.js"></script>

    <!-- Light gallery JS -->
    <script src="assets/js/plugins/lightgallery.min.js"></script>

    <!-- Isotope JS -->
    <script src="assets/js/plugins/isotope.min.js"></script>

    <!-- Masonry JS -->
    <script src="assets/js/plugins/masonry.min.js"></script>

    <!-- ImagesLoaded JS -->
    <script src="assets/js/plugins/images-loaded.min.js"></script>

    <!-- Swiper Bundle JS -->
    <script src="assets/js/plugins/swiper-bundle.min.js"></script>

    <!-- AOS JS -->
    <script src="assets/js/plugins/aos.js"></script>

    <!-- Ajax JS -->
    <script src="assets/js/plugins/ajax.mail.js"></script>

    <!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->
    <!-- <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script> -->


    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

	<script>
	var Login__submitDone = false;
	
	function Login__submit(form) {
		
		if ( Login__submitDone ) {
			alert('처리중입니다.')
			return;
		}
		
		form.memberId.value = form.memberId.value.trim();
		
		if ( form.memberId.value.length == 0 ) {
			alert('로그인 아이디를 입력해주세요.');
			return;
		} 
		
		form.memberPass.value = form.memberPass.value.trim();
		
		if (form.memberPass.value.length == 0 ) {
			alert('비밀번호를 입력해주세요.')
			return;
		}
		
		
		form.submit();
		Login__submitDone = true;
	}
	</script>
	
</body>

</html>