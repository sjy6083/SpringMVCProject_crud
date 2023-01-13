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
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
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
								<h1><a href="#">COUPANG</a></h1>
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
			<div id="visual">
				<!-- btnVisual -->
				<a href="#" class="btnVisual" style="top: 45px; background-image: url(/resources/img/visual_btn_01.jpg);">여성 롱 원피스</a>
				<a href="#" class="btnVisual" style="top: 101px; background-image: url(/resources/img/visual_btn_02.jpg);">베피스 최대 7천원 쿠폰</a>
				<a href="#" class="btnVisual" style="top: 157px; background-image: url(/resources/img/visual_btn_03.jpg);">다우니 3천원 할인 쿠폰</a>
				<a href="#" class="btnVisual" style="top: 213px; background-image: url(/resources/img/visual_btn_04.jpg);">트레이닝복 세트</a>
				<a href="#" class="btnVisual" style="top: 269px; background-image: url(/resources/img/visual_btn_05.jpg);">모델링 고무팩</a>
				<a href="#" class="btnVisual" style="top: 325px; background-image: url(/resources/img/visual_btn_06.jpg);">골드박스 매일 새로운 특가</a>

				<!-- bgVisual -->
				<div class="bgVisual" style="background-image: url(/resources/img/visual_01.jpg);"><a href="#" class="inner">여성 롱 원피스 : 쇼핑바로가기</a></div>
				<div class="bgVisual" style="background-image: url(/resources/img/visual_02.jpg);"><a href="#" class="inner">베피스 최대 7천원 쿠폰 : 쇼핑바로가기</a></div>
				<div class="bgVisual" style="background-image: url(/resources/img/visual_03.jpg);"><a href="#" class="inner">다우니 3천원 할인 쿠폰 : 쇼핑바로가기</a></div>
				<div class="bgVisual" style="background-image: url(/resources/img/visual_04.jpg);"><a href="#" class="inner">트레이닝복 세트 : 쇼핑바로가기</a></div>
				<div class="bgVisual" style="background-image: url(/resources/img/visual_05.jpg);"><a href="#" class="inner">모델링 고무팩 : 쇼핑바로가기</a></div>
				<div class="bgVisual" style="background-image: url(/resources/img/visual_06.jpg);"><a href="#" class="inner">골드박스 매일 새로운 특가 : 쇼핑바로가기</a></div>
			</div>
			<!-- /visual -->

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
						<h3>오늘의 발견</h3>
						<!-- /h3 -->

						<div class="sectionCnt">
							<a href="#" class="wide" style="background-image: url(/resources/img/today_01.jpg)">겨울대비 생활용품</a>
							<a href="#" class="wide" style="background-image: url(/resources/img/today_02.jpg)">맛있는 스낵 미찌</a>
							<a href="#" style="background-image: url(/resources/img/today_03.jpg)">빔프로젝터</a>
							<a href="#" style="background-image: url(/resources/img/today_04.jpg)">카시트</a>
							<a href="#" style="background-image: url(/resources/img/today_05.jpg)">전기주전자</a>
							<a href="#" style="background-image: url(/resources/img/today_06.jpg)">미세먼지 마스크</a>
							<a href="#" class="wide" style="background-image: url(/resources/img/today_07.jpg)">완구 선물관</a>
							<a href="#" style="background-image: url(/resources/img/today_08.jpg)">헤어오일</a>
							<a href="#" style="background-image: url(/resources/img/today_09.jpg)">전기면도기</a>
						</div>
						<!-- /sectionCnt -->
					</section>
					<!-- /today -->

					<section id="cart">
						<h3>장바구니 연관상품</h3>
						<!-- /h3 -->

						<div class="sectionCnt">
							<input type="radio" name="cartPage" id="cartPage1" checked>
							<input type="radio" name="cartPage" id="cartPage2">
							<input type="radio" name="cartPage" id="cartPage3">
							<!-- /input -->

							<ul>
								<!-- page1 -->
								<li class="page1 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_01.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 와인컬러 폴라 니트</span>
											<span class="price sale">39,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page1 almostSoldout">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_02.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 라이트 핑크 폴라 니트</span>
											<span class="price">24,000</span>
										</span>
									</a>
								</li>
								<li class="page1">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_03.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 폴라 니트</span>
											<span class="price">49,000<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page1 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_04.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">중년 여성 엘보패치 폴라 니트</span>
											<span class="price sale">18,000</span>
										</span>
									</a>
								</li>
								<li class="page1 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_05.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 블랙 롱 폴라 니트</span>
											<span class="price">27,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>

								<!-- page2 -->
								<li class="page2 almostSoldout">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_02.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price sale">16,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page2 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_03.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price sale">16,900</span>
										</span>
									</a>
								</li>
								<li class="page2">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_04.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900</span>
										</span>
									</a>
								</li>
								<li class="page2 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_05.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900</span>
										</span>
									</a>
								</li>
								<li class="page2">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_01.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>

								<!-- page3 -->
								<li class="page3">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_03.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price sale">16,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page3 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_04.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page3 delivaryFree">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_05.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900<i class="rocket"></i></span>
										</span>
									</a>
								</li>
								<li class="page3">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_01.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price sale">16,900</span>
										</span>
									</a>
								</li>
								<li class="page3 almostSoldout">
									<a href="#">
										<span class="thumb" style="background-image: url(/resources/img/cart_02.jpg);"></span>
										<span class="info">
											<span class="name ellipsis">여성 패션 베이지 목 폴라 니트</span>
											<span class="price">16,900</span>
										</span>
									</a>
								</li>
							</ul>
							<!-- /ul -->

							<div class="controlArea">
								<span class="pageView">/3</span>
								<label for="cartPage3" class="page1 prev">이전</label>
								<label for="cartPage2" class="page1 next">다음</label>
								<label for="cartPage1" class="page2 prev">이전</label>
								<label for="cartPage3" class="page2 next">다음</label>
								<label for="cartPage2" class="page3 prev">이전</label>
								<label for="cartPage1" class="page3 next">다음</label>
							</div>
							<!-- /controlArea -->
						</div>
						<!-- /sectionCnt -->
					</section>
					<!-- /cartList -->

					<section id="recent">
						<h3>최근 본 상품</h3>
						<!-- /h3 -->

						<div class="sectionCnt">
							<div class="cntArea">
								<input type="radio" name="recentView" id="recent1" checked>
								<!-- /input -->

								<label for="recent1" class="recentBtn">
									<span class="thumb"><img src="/resources/img/recent_thumb_01.jpg"></span>
									<span class="info">
										<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
										<span class="price">10,980</span>
										<span class="link">상세보기</span>
									</span>
								</label>
								<!-- /recentBtn -->

								<div class="recentView">
									<h4>이런 상품 어때요?</h4>
									<!-- /h4 -->

									<ul>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_01.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_02.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_03.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_04.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_05.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
									</ul>
									<!-- /ul -->
								</div>
								<!-- /recentView -->
							</div>
							<!-- /cntArea -->

							<div class="cntArea">
								<input type="radio" name="recentView" id="recent2">
								<!-- /input -->

								<label for="recent2" class="recentBtn">
									<span class="thumb"><img src="/resources/img/recent_thumb_02.jpg"></span>
									<span class="info">
										<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
										<span class="price">10,980</span>
										<span class="link">상세보기</span>
									</span>
								</label>
								<!-- /recentBtn -->

								<div class="recentView">
									<h4>이런 상품 어때요?</h4>
									<!-- /h4 -->

									<ul>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_06.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_07.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_08.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_09.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_10.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
									</ul>
									<!-- /ul -->
								</div>
								<!-- /recentView -->
							</div>
							<!-- /cntArea -->

							<div class="cntArea">
								<input type="radio" name="recentView" id="recent3">
								<!-- /input -->

								<label for="recent3" class="recentBtn">
									<span class="thumb"><img src="/resources/img/recent_thumb_03.jpg"></span>
									<span class="info">
										<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
										<span class="price">10,980</span>
										<span class="link">상세보기</span>
									</span>
								</label>
								<!-- /recentBtn -->

								<div class="recentView">
									<h4>이런 상품 어때요?</h4>
									<!-- /h4 -->

									<ul>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_11.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_12.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_13.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_14.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_15.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
									</ul>
									<!-- /ul -->
								</div>
								<!-- /recentView -->
							</div>
							<!-- /cntArea -->

							<div class="cntArea">
								<input type="radio" name="recentView" id="recent4">
								<!-- /input -->

								<label for="recent4" class="recentBtn">
									<span class="thumb"><img src="/resources/img/recent_thumb_04.jpg"></span>
									<span class="info">
										<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
										<span class="price">10,980</span>
										<span class="link">상세보기</span>
									</span>
								</label>
								<!-- /recentBtn -->

								<div class="recentView">
									<h4>이런 상품 어때요?</h4>
									<!-- /h4 -->

									<ul>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_16.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_17.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_18.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_19.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900</span>
												</span>
											</a>
										</li>
										<li>
											<a href="#">
												<span class="thumb"><img src="/resources/img/recent_20.jpg"></span>
												<span class="info">
													<span class="prodName ellipsis">여성패션 베이지 폴라 니트 (3color)</span>
													<span class="price">43,900<i class="rocket"></i></span>
												</span>
											</a>
										</li>
									</ul>
									<!-- /ul -->
								</div>
								<!-- /recentView -->
							</div>
							<!-- /cntArea -->
						</div>
						<!-- /sectionCnt -->
					</section>
					<!-- /recentList -->

					<section id="trend">
						<h3>카테고리별 인기상품</h3>
						<!-- /h3 -->

						<div class="sectionCnt">
							<div class="trendList" id="fashionW"><!-- 여성패션 -->
								<div class="titArea">
									<h4><img src="/resources/img/hot_tit_fashion_W.png" alt="여성패션"></h4>
									<!-- /h4 -->

									<a href="#"></a>
									<!-- /바로가기 -->

									<div class="hotKeyword">
										<div class="tit">HOT 키워드</div>
										<a href="#">패딩</a>
										<a href="#">코트</a>
										<a href="#">여성니트</a>
										<a href="#">앵클부츠</a>
										<a href="#">니트팬츠</a>
										<a href="#">여성트레이닝</a>
										<a href="#">여성크로스백</a>
									</div>
									<!-- /hotKeyword -->
								</div>
								<!-- /titArea -->

								<div class="cntArea">
									<div class="trendAd">
										<ul>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_01.jpg">
													<em class="adName">
														<strong>가방속 쏘옥 파우치</strong>
														<span>새로운 마음으로 취향대로 바꾸세요!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_02.jpg">
													<em class="adName">
														<strong>여성 패션 위크</strong>
														<span>여름맞이 패션 필수템! 6.4~6.10</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_03.jpg">
													<em class="adName">
														<strong>시원한게 최고! 반바지</strong>
														<span>린넨, 데님, 면 등 소재별로 골라봐요</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_04.jpg">
													<em class="adName">
														<strong>여름 맞이 시원한 린넨바지</strong>
														<span>여름맞이 패션 필수템!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_05.jpg">
													<em class="adName">
														<strong>편하고 예쁜 여름 샌들</strong>
														<span>스트랩샌들, 통굽샌들, 에스파듀 외</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_W_06.jpg">
													<em class="adName">
														<strong>군살 감추는 빅사이즈 티셔츠</strong>
														<span>체형 결점 도와주는 완소템!</span>
													</em>
												</a>
											</li>
										</ul>
										<!-- /ul -->

										<div class="adPaging">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<!-- /adPaging -->
									</div>
									<!-- /trendAd -->

									<div class="trendShop">
										<input type="radio" name="shopPage" id="shopPage1-1" checked>
										<input type="radio" name="shopPage" id="shopPage1-2">
										<input type="radio" name="shopPage" id="shopPage1-3">
										<input type="radio" name="shopPage" id="shopPage1-4">
										<input type="radio" name="shopPage" id="shopPage1-5">
										<!-- input -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage1-5" class="prev">이전</label>
											<label for="shopPage1-2" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage1-1" class="prev">이전</label>
											<label for="shopPage1-3" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage1-2" class="prev">이전</label>
											<label for="shopPage1-4" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage1-3" class="prev">이전</label>
											<label for="shopPage1-5" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_W_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage1-4" class="prev">이전</label>
											<label for="shopPage1-1" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<nav>
											<label for="shopPage1-1"></label>
											<label for="shopPage1-2"></label>
											<label for="shopPage1-3"></label>
											<label for="shopPage1-4"></label>
											<label for="shopPage1-5"></label>
										</nav>
									</div>
									<!-- /trendShop -->
								</div>
								<!-- /cntArea -->
							</div>
							<!-- /trendList -->

							<div class="trendList" id="fashionM"><!-- 남성패션 -->
								<div class="titArea">
									<h4><img src="/resources/img/hot_tit_fashion_M.png" alt="남성패션"></h4>
									<!-- /h4 -->

									<a href="#"></a>
									<!-- /바로가기 -->

									<div class="hotKeyword">
										<div class="tit">HOT 키워드</div>
										<a href="#">남자롱패딩</a>
										<a href="#">후드집업</a>
										<a href="#">긴팔티셔츠</a>
										<a href="#">남자기모바지</a>
										<a href="#">남자머플러</a>
										<a href="#">남자스니커즈</a>
									</div>
									<!-- /hotKeyword -->
								</div>
								<!-- /titArea -->

								<div class="cntArea">
									<div class="trendAd">
										<ul>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>가방속 쏘옥 파우치</strong>
														<span>새로운 마음으로 취향대로 바꾸세요!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>여성 패션 위크</strong>
														<span>여름맞이 패션 필수템! 6.4~6.10</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>시원한게 최고! 반바지</strong>
														<span>린넨, 데님, 면 등 소재별로 골라봐요</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>여름 맞이 시원한 린넨바지</strong>
														<span>여름맞이 패션 필수템!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>편하고 예쁜 여름 샌들</strong>
														<span>스트랩샌들, 통굽샌들, 에스파듀 외</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_fashion_M_01.jpg">
													<em class="adName">
														<strong>군살 감추는 빅사이즈 티셔츠</strong>
														<span>체형 결점 도와주는 완소템!</span>
													</em>
												</a>
											</li>
										</ul>
										<!-- /ul -->

										<div class="adPaging">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<!-- /adPaging -->
									</div>
									<!-- /trendAd -->

									<div class="trendShop">
										<input type="radio" name="shopPage" id="shopPage2-1" checked>
										<input type="radio" name="shopPage" id="shopPage2-2">
										<input type="radio" name="shopPage" id="shopPage2-3">
										<input type="radio" name="shopPage" id="shopPage2-4">
										<input type="radio" name="shopPage" id="shopPage2-5">
										<!-- input -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage2-5" class="prev">이전</label>
											<label for="shopPage2-2" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage2-1" class="prev">이전</label>
											<label for="shopPage2-3" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage2-2" class="prev">이전</label>
											<label for="shopPage2-4" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage2-3" class="prev">이전</label>
											<label for="shopPage2-5" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_fashion_M_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage2-4" class="prev">이전</label>
											<label for="shopPage2-1" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<nav>
											<label for="shopPage2-1"></label>
											<label for="shopPage2-2"></label>
											<label for="shopPage2-3"></label>
											<label for="shopPage2-4"></label>
											<label for="shopPage2-5"></label>
										</nav>
									</div>
									<!-- /trendShop -->
								</div>
								<!-- /cntArea -->
							</div>
							<!-- /trendList -->

							<div class="trendList" id="beauty"><!-- 뷰티 -->
								<div class="titArea">
									<h4><img src="/resources/img/hot_tit_beauty.png" alt="뷰티"></h4>
									<!-- /h4 -->

									<a href="#"></a>
									<!-- /바로가기 -->

									<div class="hotKeyword">
										<div class="tit">HOT 키워드</div>
										<a href="#">가을틴트</a>
										<a href="#">리퀴드섀도우</a>
										<a href="#">비비크림</a>
										<a href="#">보습크림</a>
										<a href="#">올인원</a>
										<a href="#">약산성샴푸</a>
									</div>
									<!-- /hotKeyword -->
								</div>
								<!-- /titArea -->

								<div class="cntArea">
									<div class="trendAd">
										<ul>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>가방속 쏘옥 파우치</strong>
														<span>새로운 마음으로 취향대로 바꾸세요!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>여성 패션 위크</strong>
														<span>여름맞이 패션 필수템! 6.4~6.10</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>시원한게 최고! 반바지</strong>
														<span>린넨, 데님, 면 등 소재별로 골라봐요</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>여름 맞이 시원한 린넨바지</strong>
														<span>여름맞이 패션 필수템!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>편하고 예쁜 여름 샌들</strong>
														<span>스트랩샌들, 통굽샌들, 에스파듀 외</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_beauty_01.jpg">
													<em class="adName">
														<strong>군살 감추는 빅사이즈 티셔츠</strong>
														<span>체형 결점 도와주는 완소템!</span>
													</em>
												</a>
											</li>
										</ul>
										<!-- /ul -->

										<div class="adPaging">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<!-- /adPaging -->
									</div>
									<!-- /trendAd -->

									<div class="trendShop">
										<input type="radio" name="shopPage" id="shopPage3-1" checked>
										<input type="radio" name="shopPage" id="shopPage3-2">
										<input type="radio" name="shopPage" id="shopPage3-3">
										<input type="radio" name="shopPage" id="shopPage3-4">
										<input type="radio" name="shopPage" id="shopPage3-5">
										<!-- input -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage3-5" class="prev">이전</label>
											<label for="shopPage3-2" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage3-1" class="prev">이전</label>
											<label for="shopPage3-3" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage3-2" class="prev">이전</label>
											<label for="shopPage3-4" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage3-3" class="prev">이전</label>
											<label for="shopPage3-5" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_beauty_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage3-4" class="prev">이전</label>
											<label for="shopPage3-1" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<nav>
											<label for="shopPage3-1"></label>
											<label for="shopPage3-2"></label>
											<label for="shopPage3-3"></label>
											<label for="shopPage3-4"></label>
											<label for="shopPage3-5"></label>
										</nav>
									</div>
									<!-- /trendShop -->
								</div>
								<!-- /cntArea -->
							</div>
							<!-- /trendList -->

							<div class="trendList" id="baby"><!-- 출산 유아동 -->
								<div class="titArea">
									<h4><img src="/resources/img/hot_tit_baby.png" alt="출산유아동"></h4>
									<!-- /h4 -->

									<a href="#"></a>
									<!-- /바로가기 -->

									<div class="hotKeyword">
										<div class="tit">HOT 키워드</div>
										<a href="#">액상분유</a>
										<a href="#">기저귀</a>
										<a href="#">보습로션</a>
										<a href="#">코튼블랭킷</a>
										<a href="#">아기레깅스</a>
										<a href="#">기저귀가방</a>
									</div>
									<!-- /hotKeyword -->
								</div>
								<!-- /titArea -->

								<div class="cntArea">
									<div class="trendAd">
										<ul>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>가방속 쏘옥 파우치</strong>
														<span>새로운 마음으로 취향대로 바꾸세요!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>여성 패션 위크</strong>
														<span>여름맞이 패션 필수템! 6.4~6.10</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>시원한게 최고! 반바지</strong>
														<span>린넨, 데님, 면 등 소재별로 골라봐요</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>여름 맞이 시원한 린넨바지</strong>
														<span>여름맞이 패션 필수템!</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>편하고 예쁜 여름 샌들</strong>
														<span>스트랩샌들, 통굽샌들, 에스파듀 외</span>
													</em>
												</a>
											</li>
											<li>
												<a href="#">
													<img src="/resources/img/hot_visual_baby_01.jpg">
													<em class="adName">
														<strong>군살 감추는 빅사이즈 티셔츠</strong>
														<span>체형 결점 도와주는 완소템!</span>
													</em>
												</a>
											</li>
										</ul>
										<!-- /ul -->

										<div class="adPaging">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<!-- /adPaging -->
									</div>
									<!-- /trendAd -->

									<div class="trendShop">
										<input type="radio" name="shopPage" id="shopPage4-1" checked>
										<input type="radio" name="shopPage" id="shopPage4-2">
										<input type="radio" name="shopPage" id="shopPage4-3">
										<input type="radio" name="shopPage" id="shopPage4-4">
										<input type="radio" name="shopPage" id="shopPage4-5">
										<!-- input -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage4-5" class="prev">이전</label>
											<label for="shopPage4-2" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage4-1" class="prev">이전</label>
											<label for="shopPage4-3" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage4-2" class="prev">이전</label>
											<label for="shopPage4-4" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage4-3" class="prev">이전</label>
											<label for="shopPage4-5" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<div class="shopList">
											<ul>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_05.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">로로텐 여성용 소매 플라워 긴팔 기모 원피스</span>
															<span class="price">20,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_06.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">28,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_01.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">파니파니 벤느 겨울 원피스</span>
															<span class="price">38,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_02.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">안녕미미 여성용 와이드 팬츠 레깅스</span>
															<span class="price">18,900</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_03.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">[코코블랑] 앤드유 프릴소매 맨투맨</span>
															<span class="price">58,000</span>
														</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="thumb"><img src="/resources/img/hot_baby_04.jpg" alt="상품이미지"></span>
														<span class="info">
															<span class="tit">지나블리스 기모 엠보 레터링 카라 긴팔 셔츠</span>
															<span class="price">18,000</span>
														</span>
													</a>
												</li>
											</ul>
											<!-- /ul -->

											<label for="shopPage4-4" class="prev">이전</label>
											<label for="shopPage4-1" class="next">다음</label>
										</div>
										<!-- /shopist -->

										<nav>
											<label for="shopPage4-1"></label>
											<label for="shopPage4-2"></label>
											<label for="shopPage4-3"></label>
											<label for="shopPage4-4"></label>
											<label for="shopPage4-5"></label>
										</nav>
										<!-- /nav -->
									</div>
									<!-- /trendShop -->
								</div>
								<!-- /cntArea -->
							</div>
							<!-- /trendList -->
						</div>
						<!-- /sectionCnt -->

						<div class="trendBar">
							<ul class="barBtnWrap">
								<li><a href="#fashionW" style="background-color: #f6699e; background-position-y: 0">여성패션</a></li>
								<li><a href="#fashionM" style="background-color: #1992df; background-position-y: -50px">남성패션</a></li>
								<li><a href="#beauty" style="background-color: #7e57c2; background-position-y: -100px">뷰티</a></li>
								<li><a href="#baby" style="background-color: #00aad4; background-position-y: -150px">출산/유아동</a></li>
								<li><a href="#food" style="background-color: #ee9200; background-position-y: -200px">식품</a></li>
								<li><a href="#kitchen" style="background-color: #62ab66; background-position-y: -250px">주방용품</a></li>
								<li><a href="#living" style="background-color: #9d7a6d; background-position-y: -300px">생활용품</a></li>
								<li><a href="#interior" style="background-color: #dd6641; background-position-y: -350px">가구/홈인테리어</a></li>
								<li><a href="#digital" style="background-color: #5868be; background-position-y: -400px">가전/디지털</a></li>
								<li><a href="#sports" style="background-color: #83be41; background-position-y: -450px">스포츠/레저</a></li>
								<li><a href="#car" style="background-color: #254e98; background-position-y: -750px">자동차용품</a></li>
								<li><a href="#hobby" style="background-color: #3e8d86; background-position-y: -700px">완구/취미</a></li>
								<li><a href="#office" style="background-color: #97563e; background-position-y: -500px">문구/오피스</a></li>
								<li><a href="#book" style="background-color: #b74b4b; background-position-y: -600px">도서/CD/DVD</a></li>
								<li><a href="#pet" style="background-color: #ab47bc; background-position-y: -550px">반려동물용품</a></li>
								<li><a href="#trip" style="background-color: #00b599; background-position-y: -650px">여행</a></li>
								<li><a href="#fashionB" style="background-color: #00aab4; background-position-y: -800px">유아동패션</a></li>
								<li><a href="#health" style="background-color: #d22e60; background-position-y: -850px">헬스/건강식품</a></li>
							</ul>
							<!-- /barBtnWrap -->

							<div class="barBtnSet">
								<input type="checkbox" id="btnSet">
								<!-- /input -->

								<label for="btnSet" class="btnSet">설정</label>
								<!-- /btnSet -->

								<form class="setDetail">
									<div class="detailTop">
										<div class="topDesc">
											<strong>카테고리 설정하기</strong>
											<span>보고싶은 카테고리의 순서를 바꿔보세요.</span>
										</div>
										<!-- /topDesc -->

										<input type="reset">
									</div>
									<!-- /detailTop -->

									<div class="detailList">
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: 0px;">여성패션</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -50px;">남성패션</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -100px;">뷰티</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -150px;">출산/유아동</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -200px;">식품</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -250px;">주방용품</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -300px;">생활용품</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -350px;">가구/홈인테리어</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -400px;">가전/디지털</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -450px;">스포츠/레저</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -750px;">자동차용품</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -700px;">완구/취미</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -500px;">문구/오피스</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -600px;">도서/CD/DVD</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -550px;">반려동물용품</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -650px;">여행</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -800px;">유아동패션</span>
										</label>
										<label>
											<input type="checkbox" checked>
											<span style="background-position-y: -850px;">헬스/건강식품</span>
										</label>
									</div>
									<!-- /detailList -->

									<div class="detailBtnArea">
										<label for="btnSet">취소</label>
										<label for="barSubmit">확인</label>
										<input type="submit" id="barSubmit" class="hidden">
									</div>
									<!-- /detailBtnArea -->
								</form>
								<!-- /setDetail -->
							</div>
							<!-- /barBtnSet -->
						</div>
						<!-- /trendBar -->
					</section>
					<!-- /trend -->
				</div>
				<!-- /inner -->
			</div>
			<!-- /content -->
		</div>
		<!-- /container -->

		<!-- footer -->
		<footer>
			<nav>
				<div class="inner">
					<a href="#">인재채용</a>
					<a href="#">입점 / 제휴문의</a>
					<a href="#">공지사항</a>
					<a href="/board/list">고객의 소리</a>
					<a href="#">이용약관</a>
					<a href="#"><b>개인정보 처리방침</b></a>
					<a href="#">신뢰관리센터</a>
				</div><!-- .inner -->
			</nav>
			<!-- /nav -->

			<div class="ftCnt">
				<div class="inner">
					<div class="cntArea">
						<h2><a href="#">coupang</a></h2>
						<div class="companyInfo">
							<address>
								<span>쿠팡(주) | 대표이사 : 김범석</span>
								<span>서울시 송파구 송파대로 570 </span>
								<span>사업자 등록번호 : 120-88-00767</span>
								<span>통신판매업신고 : 2017-서울송파-0680</span>
								<a href="#" class="licence">사업자정보 확인</a>
							</address>
							<a href="#" class="customer">
								<span><b>365고객센터</b> | 전자금융거래분쟁처리담당</span>
								<strong>1577-7011</strong>
								<span>서울특별시 금천구 두산로 70 B, 24층</span>
								<em>Fax : 02-3441-7011 | email : help@coupang.com</em>
							</a>
							<div class="policyGuide">
								<strong>우리은행 채무지급보증 안내</strong>
								<em>
									당사는 고객님이 현금 결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.
								</em>
								<a href="#" class="licence">서비스 가입사실 확인</a>
							</div>
						</div>
					</div>
					<ul class="awards">
						<li style="background-position-x: -44px;">
							<a href="#">정보보호 관리체계 ISMS인증획득</a>
						</li>
						<li style="background-position-x: -222px;">
							<a href="#">개인정보보호 관리체계 PIMS인증획득</a>
						</li>
						<li style="background-position-x: -417px;">
							<a href="#">정보보안 관리표정 ISO27001인증획득</a>
						</li>
						<li style="background-position-x: -623px;">
							<a href="#">개인정보보호우수사이트 ePRIVACY인증획득</a>
						</li>
					</ul>
				</div><!-- .inner -->
			</div>
			<!-- /ftCnt -->

			<div class="copy">
				<div class="inner">
					<p>
						개별 판매자가 등록한 마켓플레이스(오픈마켓) 상품에 대한 광고, 상품주문, 배송 및 환불의 의무와 책임은 각 판매자가 부담하고, 이에 대하여 쿠팡은 통신판매중개자로서 통신판매의 당사자가 아니므로 일체 책임을 지지 않습니다.
					</p>
					<div class="sns">
						<a href="https://www.facebook.com/" class="facebook" style="background-position-x: -220px">facebook</a>
						<a href="https://section.blog.naver.com/" class="blog" style="background-position-x: -348px">blog</a>
						<a href="https://www.instagram.com/" class="instagram" style="background-position-x: -390px">instagram</a>
					</div>
				</div><!-- .inner -->
			</div>
			<!-- /copy -->
		</footer>
		<!-- /footer -->
	</div>
</body>
</html>