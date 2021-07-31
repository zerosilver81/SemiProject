<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
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

    <!-- 메인스타일 CSS -->
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
                            <li class="breadcrumb-item"><a href="index.jsp">홈</a></li>
                            <li class="breadcrumb-item active">사용자</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->
    
    <!--===== main page =====-->
    
   <!-- 프로필 --> 
   <div id="main-wrapper">
   	<div class="site-wrapper-reveal">
       <div class="container">
           <div class="row">
               <div class="col-lg-12">
                                 
                   <!--게시글 타이틀-->    
                   <div class="section-title-write" data-aos="fade-up">
                       <h2 class="top-title">프로필 확인 및 수정</h2>
                   </div>
                     
                </div>
           	</div>
        </div> 
      </div>
	</div>  
               
    <!--프로필 타이틀 종료-->
		<!--<form action="/blog/userUpdate" method="post" onsubmit="UserUpdate__submit(this); return false;">-->    	
      	<c:if test="${user != null}">
           <form action="/blog/userUpdate" method="post" onsubmit="UserUpdate__submit(this); return false;">
        </c:if>
        <c:if test="${user == null}">
           <form action="/blog/register" method="post">
        </c:if>
	
		<!--start page wrapper -->
        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <img src="https://via.placeholder.com/110x110" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
                                    <div class="mt-3">
										<h4>${user.userName}</h4>
                                        <p class="text-secondary mb-1">개발자</p>
                                        <p class="text-muted font-size-sm">서울시 강남구</p>
                                        <button class="btn btn-primary">팔로우</button>
                                        <button class="btn btn-outline-primary">메시지</button>
                                    </div>
                                </div>
                                <hr class="my-4" />
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe me-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                                        <span class="text-secondary">https://devbook.kr</span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github me-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                                        <span class="text-secondary">jasonjaewoo</span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter me-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                                        <span class="text-secondary">@jasonjaewoo</span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram me-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                                        <span class="text-secondary">jasonjaewoo</span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                        <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook me-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                                        <span class="text-secondary">jasonjaewoo</span>
                                    </li>
                                </ul>
                                 
                            </div>
                        </div>
                    </div>
					
                    <div class="col-lg-8">
                  		<div class="card">
                            <div class="card-body">
                            <c:if test="${user != null}">
                            <input type="hidden" name="memberIdx" value="${user.memberIdx}" />
                            </c:if>                                                                                                             	                          	
                            	<div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">아이디</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary2"> 
                                    	<input type="text" class="form-control" name="memberId" value="${user.loginId}" disabled/>									                                    	                                                                                                                  
                                    </div>									
                                </div>
                                                               
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">비밀번호</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                    <input type="password" class="form-control" name="memberPass1" />
           							</div>
                                </div>
                                
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">비밀번호 확인</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="password" class="form-control" name="memberPass2" />							
                                    </div>
                                </div> 
 
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">이름</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                    <input type="text" class="form-control" name="memberName" value="${user.userName}" />                                 
                                    <input type="hidden" name="memberName" value="${user.loginId}" />
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">이메일</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">

									<input type="text" class="form-control" name="memberEmail" value="${user.userEmail}" />
									<input type="hidden" name="memberEmail" value="${user.userEmail}" />                                   
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <a href="index.jsp"><input type="button" class="btn btn-primary px-4" value="취소" /></a>
                                        <input type="submit" class="btn btn-primary px-4" value="저장" />
                                    </div> 
                                </div>
                                <%--요청 범위에 alert가 있는 경우--%>
									<c:if 
									test="${requestScope.alert != null && requestScope.alert != ''}">
									<div class="color-error text-left">
										<%--요청범위 내 alert값 출력--%>
										<!--<td colspan="2" class="color-error text-left">-->
										<c:out value="${requestScope.alert}" />
									</div>	
									</c:if>
                        	</div>
                        </div>
                     </div>     
                  <!--   <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">

                                    </div>
                                </div>
                            </div>
                        </div>-->              
                	</div> 
            	</div> 
        	</div>
        </form>		       		 

<!--end page wrapper -->	
	

      <!-- ======  바닥글 영역 =======-->
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
        <!--=====  바닥글 종료 ======== -->

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
		var UserUpdate__submitDone = false;
	
		function UserUpdate__submit(form) {
		
			if ( UserUpdate__submitDone ) {
				alert('처리중입니다.');
					return;
			}
			
			form.memberPass1.value = form.memberPass1.value.trim();
			
			if (form.memberPass1.value.length == 0 ) {
				alert('비밀번호를 입력해주세요.')
				return;
			} 
			
			form.memberPass2.value = form.memberPass2.value.trim();
			
			if (form.memberPass2.value.length == 0 ) {
				alert('비밀번호 확인을 입력해주세요.')
				return;
			}
			
			if(!form.memberPass1.equqls(form.memberPass2)) {
				alert('비밀번호가 일치하지 않습니다.')
				return;
			}
			
			form.memberName.value = form.memberName.value.trim();
			
			if (form.memberName.value.length == 0) {
				alert('이름을 입력해주세요.')
				return;
			} 
			
			form.memberEmail.value = form.memberEmail.value.trim();
			
			if (form.memberEmail.value.length == 0) {
				alert('이메일을 입력해주세요.')
				return;
			}
			
			form.submit();
			UserUpdate__sumbitDone = true;
			alert('수정을 성공했습니다.');
		}		
			
    </script>
    
</body>

</html>