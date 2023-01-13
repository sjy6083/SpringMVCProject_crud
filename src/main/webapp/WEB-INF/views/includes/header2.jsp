<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>쿠팡!</title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/table.css">
	<!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
</head>
<body>
	
	<div id="wrap">
		<input type="radio" id="btn_banner">

		<!-- header -->
		<header>
			<div id="banner">
				<a href="#"><img src="/resources/img/banner.jpg" alt="쿠팡캐쉬 3% 무제한 적립"></a>
				<label for="btn_banner">닫기</label>
			</div>
			<!-- /banner -->

			<div class="hdWrap">
				<div class="gnb">
					<div class="inner">
						<ul class="favorite">
							<li><a href="#">즐겨찾기</a></li>
							<li>
								<a href="#">입점신청</a>
								<div class="detail">
									<a href="#">배송상품</a>
									<a href="#">여행·문화</a>
									<a href="#">로켓배송</a>
								</div>
								<!-- /detail -->
							</li>
						</ul>
						<!-- /favorite -->

						<ul class="member">
							<sec:authorize access="isAuthenticated()">
	                       		<li><a href="/customLogout"><i class="fa fa-sign-out fa-fw"></i> 로그아웃</a></li>
	                        	</sec:authorize>
	                        	<sec:authorize access="isAnonymous()">
	                        	<li><a href="/customLogin"><i class="fa fa-sign-out fa-fw"></i> 로그인</a></li>
                        	</sec:authorize>
                        	<sec:authorize access="isAnonymous()">
                        		<li><a href="/customRegister"><i class="fa fa-sign-out fa-fw">회원가입</i></a></li>
                        	</sec:authorize>
							<li>
								<a href="#">고객센터</a>
								<div class="detail">
									<a href="#">자주묻는 질문</a>
									<a href="#">1:1 채팅문의</a>
									<a href="/board/list">고객의 소리</a>
									<a href="#">취소 / 반품 안내</a>
									<a href="#">WOW 서비스</a>
								</div>
								<!-- /detail -->
							</li>
						</ul>
						<!-- /member -->
					</div>
					<!-- /inner -->
				</div>
				<!-- /gnb -->

				<div class="hdCnt">
					<div class="inner">
						<div class="cateWrap">
							<p class="category">카테고리</p>
							<!-- /category -->

							<div class="cate">
								<!-- catelist1 -->
								<ul class="cateList1">
									<li class="cateItem1" style="background-position-y: -27px;">
										<a href="#" class="cateName1">패션의류/잡화</a>
										<ul class="cateList2">
											<!-- bglink -->
											<li class="bgLink"><a href="#"></a></li>

											<!-- cateitem2 -->
											<li class="cateItem2">
												<a href="#" class="cateName2">시즌관</a>

												<!-- catelist3 -->
												<ul class="cateList3">
													<li class="cateItem3"><a href="#" class="cateName3">여성패션</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">남성패션</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">베이비여아(0~3세)</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">베이비남아(0~3세)</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">키즈여아(3~8세)</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">키즈남아(3~8세)</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">주니어여아(9~17세)</a></li>
													<li class="cateItem3"><a href="#" class="cateName3">주니어남아(9~17세)</a></li>
												</ul>
											</li>
											<li class="cateItem2"><a href="#" class="cateName2">여성패션</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">남성패션</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">베이비패션 (0~3세)</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">여아패션 (3세 이상)</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">남아패션 (3세 이상)</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">스포츠패션</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">신발</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">가방/잡화</a></li>
											<li class="cateItem2"><a href="#" class="cateName2">명품패션</a></li>
										</ul>
									</li>
									<li class="cateItem1" style="background-position-y: -111px;"><a href="#" class="cateName1">뷰티</a></li>
									<li class="cateItem1" style="background-position-y: -153px;"><a href="#" class="cateName1">출산/유아동</a></li>
									<li class="cateItem1" style="background-position-y: -195px;"><a href="#" class="cateName1">식품</a></li>
									<li class="cateItem1" style="background-position-y: -237px;"><a href="#" class="cateName1">주방용품</a></li>
									<li class="cateItem1" style="background-position-y: -279px;"><a href="#" class="cateName1">생활용품</a></li>
									<li class="cateItem1" style="background-position-y: -321px;"><a href="#" class="cateName1">홈인테리어</a></li>
									<li class="cateItem1" style="background-position-y: -363px;"><a href="#" class="cateName1 new">가전디지털</a></li>
									<li class="cateItem1" style="background-position-y: -405px;"><a href="#" class="cateName1">스포츠/레저</a></li>
									<li class="cateItem1" style="background-position-y: -741px;"><a href="#" class="cateName1">자동차용품</a></li>
									<li class="cateItem1" style="background-position-y: -531px;"><a href="#" class="cateName1 new">도서/음반/DVD</a></li>
									<li class="cateItem1" style="background-position-y: -699px;"><a href="#" class="cateName1">완구/취미</a></li>
									<li class="cateItem1" style="background-position-y: -447px;"><a href="#" class="cateName1">문구/오피스</a></li>
									<li class="cateItem1" style="background-position-y: -489px;"><a href="#" class="cateName1">반려동물용품</a></li>
									<li class="cateItem1" style="background-position-y: -825px;"><a href="#" class="cateName1">헬스/건강식품</a></li>
								</ul>

								<!-- catelist1 -->
								<ul class="cateList1">
									<li class="cateItem1" style="background-position-y: -573px;"><a href="#" class="cateName1 new">여행</a></li>
									<li class="cateItem1" style="background-position-y: -657px;"><a href="#" class="cateName1 new">공연/전시/체험</a></li>
									<li class="cateItem1" style="background-position-y: -783px;"><a href="#" class="cateName1">기프트카드</a></li>
								</ul>

								<!-- catelist1 -->
								<ul class="cateList1">
									<li class="cateItem1" style="background-position-y: -867px;"><a href="#" class="cateName1 new">테마관 </a></li>
								</ul>
							</div>
							<!-- /cate -->
						</div>
						<!-- /cateWrap -->

						<div class="cntArea">
							<div class="searchWrap clearfix">
								<h1><a href="/">COUPANG</a></h1>
								<!-- h1 -->

								<div class="barWrap">
									<div class="barSelect">
										<!-- input -->
										<input type="checkbox" id="btnSelect">
										<input type="radio" name="grpSelect" id="bar_all">
										<input type="radio" name="grpSelect" id="bar_season">
										<input type="radio" name="grpSelect" id="bar_woman">
										<input type="radio" name="grpSelect" id="bar_man">
										<input type="radio" name="grpSelect" id="bar_baby">
										<input type="radio" name="grpSelect" id="bar_girl">
										<input type="radio" name="grpSelect" id="bar_boy">
										<input type="radio" name="grpSelect" id="bar_sports">
										<input type="radio" name="grpSelect" id="bar_shoes">
										<input type="radio" name="grpSelect" id="bar_bag">
										<input type="radio" name="grpSelect" id="bar_luxury">
										<input type="radio" name="grpSelect" id="bar_beauty">

										<!-- label -->
										<label for="btnSelect" class="selected"></label>

										<div class="selectDetail">
											<ul>
												<li><label for="bar_all">전체</label></li>
												<li><label for="bar_season">시즌관</label></li>
												<li><label for="bar_woman">여성패션</label></li>
												<li><label for="bar_man">남성패션</label></li>
												<li><label for="bar_baby">베이비패션 (0~3세)</label></li>
												<li><label for="bar_girl">여아패션 (3세 이상)</label></li>
												<li><label for="bar_boy">남아패션 (3세 이상)</label></li>
												<li><label for="bar_sports">스포츠패션</label></li>
												<li><label for="bar_shoes">신발</label></li>
												<li><label for="bar_bag">가방/잡화</label></li>
												<li><label for="bar_luxury">명품패션</label></li>
												<li><label for="bar_beauty">뷰티</label></li>
											</ul>
										</div>
										<!-- /selectDetail -->
									</div>
									<!-- /barSelect -->

									<input type="text" placeholder="찾고 싶은 상품을 검색해보세요!">
									<!-- /input -->

									<label class="mic">
										<input type="checkbox">
										<i>마이크</i>
									</label>
									<!-- /mic -->

									<input type="submit" value="검색">
									<!-- /input -->
								</div>
								<!-- /barWrap -->
							</div>
							<!-- /searchWrap -->

							<nav>
								<ul>
									<li class="rocket"><a href="#">로켓배송</a></li>
									<li><a href="#">로켓직구</a></li>
									<li><a href="#">골드박스</a></li>
									<li><a href="#">정기배송</a></li>
									<li><a href="#">이벤트/쿠폰</a></li>
									<li><a href="#">기획전</a></li>
									<li><a href="#">기프트카드</a></li>
								</ul>
							</nav>
							<!-- /nav -->
						</div>
						<!-- /cntArea -->

						<div class="userPage">
							<div class="pageList myPage">
								<a href="#"><span>마이쿠팡</span></a>
							</div>
							<!-- /myPage -->

							<div class="pageList cart">
								<a href="#"><span>장바구니</span></a>
								<!-- /a -->

								<div class="cartDetail">
									<div class="detailFrm">
										<ul>
											<li>
												<a href="#">
													<span class="thumb"><img src="/resources/img/aside_01.jpg"></span>
													<span class="prodName">수빈이가 좋아하는 데코레이션 꾸미기</span>
												</a>
											</li>
											<li>
												<a href="#">
													<span class="thumb"><img src="/resources/img/aside_01.jpg"></span>
													<span class="prodName">수빈이가 좋아하는 데코레이션 꾸미기</span>
												</a>
											</li>
											<li>
												<a href="#">
													<span class="thumb"><img src="/resources/img/aside_01.jpg"></span>
													<span class="prodName">수빈이가 좋아하는 데코레이션 꾸미기</span>
												</a>
											</li>
										</ul>
										<!-- /ul -->

										<a href="#" class="viewCart">장바구니 전체보기</a>
										<!-- /viewCart -->
									</div>
									<!-- /detailFrm -->
								</div>
								<!-- /cartDetail -->

								<i class="itemLength"></i>
								<!-- /itemLength -->
							</div>
							<!-- /cart -->
						</div>
						<!-- /userPage -->
					</div>
					<!-- /inner -->
				</div>
				<!-- /hdCnt -->
			</div>
			<!-- /hdWrap -->
		</header>
		<!-- /header -->
		
		<!-- container -->
		<div id="container">
		
			<div id="content">
				<div class="inner">
					<aside>
						<a href="#" class="banner">기프트카드~언제 어디서나 쉽고 간단한 선물!</a>
						<!-- /banner -->

						<div class="util">
							<div class="cart"><a href="#" class="asideBtn">장바구니</a></div>
							<!-- /cart -->

							<div class="recent">
								<a href="#" class="asideBtn">최근 본상품</a>
								<!-- /asideBtn -->

								<div class="recentDetail">
									<input type="radio" name="recentPage" id="page1" checked>
									<input type="radio" name="recentPage" id="page2">
									<input type="radio" name="recentPage" id="page3">
									<!-- /input -->

									<ul>
										<!-- page1 -->
										<li class="page1">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_01.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page1">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_02.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page1">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_03.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page1">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_04.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>

										<!-- page2 -->
										<li class="page2">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_05.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page2">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_06.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page2">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_07.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
										<li class="page2">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_08.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>

										<!-- page3 -->
										<li class="page3">
											<a href="#">
												<span class="info">
													<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
													<span class="price"><em>16,900</em>원</span>
												</span>
												<span class="thumb" style="background-image: url(/resources/img/recent_09.jpg)"></span>
											</a>
											<i class="btnClose">닫기</i>
										</li>
									</ul>
									<!-- /ul -->

									<div class="controlArea">
										<div class="pageView">/</div>
										<!-- /pageView -->

										<div class="pageArrow">
											<label for="page3" class="page1 prev">이전</label>
											<label for="page2" class="page1 next">다음</label>
											<label for="page1" class="page2 prev">이전</label>
											<label for="page3" class="page2 next">다음</label>
											<label for="page2" class="page3 prev">이전</label>
											<label for="page1" class="page3 next">다음</label>
										</div>
										<!-- /pageArrow -->
									</div>
									<!-- /controlArea -->
								</div>
								<!-- /recentDetail -->
							</div>
							<!-- /recent -->
						</div>
					</aside>
					<!-- /aside -->

					<section id="today">
					
	
	<!-- ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>