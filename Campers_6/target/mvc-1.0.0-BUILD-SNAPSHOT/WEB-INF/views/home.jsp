<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Main Page" name="title"/>
</jsp:include>

<section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(${path}/resources/img/newphoto/main1.png);">
        <div class="container py-6 py-lg-7 text-white overlay-content">
            <div class="row">
                <div class="col-xl-8">
                    <h1 class="display-4 text-shadow yangjin">슬기로운 캠퍼생활</h1>
                    <p class="text-xl mb-6 yangjin">일상에 자연 한 스푼</p>
                </div>
            </div>
        </div>
    </section>
    <div class="container position-relative mt-n6 z-index-20">
        <ul class="nav nav-tabs search-bar-nav-tabs" role="tablist">
            <li class="nav-item me-2"><a class="nav-link active GmarketSansMedium" href="#buy" data-bs-toggle="tab" role="tab">캠핑장</a></li>
            <li class="nav-item me-2"><a class="nav-link GmarketSansMedium" href="#rent" data-bs-toggle="tab" role="tab">캠핑용품</a></li>
        </ul>
        <div class="search-bar search-bar-with-tabs p-3 p-lg-4">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="buy" role="tabpanel">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker form-control" title="지역" data-style="btn-form-control">
                                    <option value="city_0">전체</option>
                                    <option value="city_1">서울</option>
                                    <option value="city_2">경기</option>
                                    <option value="city_3">인천</option>
                                    <option value="city_4">강원</option>
                                    <option value="city_5">제주</option>
                                    <option value="city_6">대전</option>
                                    <option value="city_7">충북</option>
                                    <option value="city_8">충남</option>
                                    <option value="city_9">부산</option>
                                    <option value="city_10">울산</option>
                                    <option value="city_11">경남</option>
                                    <option value="city_12">대구</option>
                                    <option value="city_13">경북</option>
                                    <option value="city_14">광주</option>
                                    <option value="city_15">전북</option>
                                    <option value="city_16">전남</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title="타입" data-style="btn-form-control">
                                    <option value="type_0">전체</option>
                                    <option value="type_1">캠핑</option>
                                    <option value="type_2">글램핑</option>
                                    <option value="type_3">오토캠핑</option>
                                    <option value="type_4">카라반</option>
                                </select>
                            </div>
                            <div class="col-md-3 col-lg-4 d-flex align-items-center form-group no-divider">
                                <div class="datepicker-container datepicker-container-left">
                                    <input class="form-control-1" type="text" name="bookingDate" id="form_dates" placeholder="일정">
                                </div>
                            </div>
                            <div class="col-lg-2 d-grid form-group mb-0">
                                <button class="btn btn-primary h-100" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="tab-pane fade" id="rent" role="tabpanel">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-7 d-flex align-items-center form-group no-divider input-label-absolute input-label-absolute-left">
                                <label class="label-absolute" for="search_search"><i class="fa fa-search" style="margin-left: 0.5rem;"></i><span class="sr-only">What are you looking for?</span></label>
                                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" placeholder="어떤 캠핑용품을 찾으시나요?" aria-label="Search" type="search">
                            </div>
                            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title="전체" data-style="btn-form-control">
                                     <option value="category_0">텐트</option>
                                     <option value="category_1">랜턴</option>
                                     <option value="category_2">취사용품</option>
                                     <option value="category_3">아이스박스</option>
                                     <option value="category_4">기타캠핑용품</option>
                                </select>
                            </div>
                            <div class="col-lg-2 d-grid form-group mb-0">
                                <button class="btn btn-primary h-100" type="submit">Search </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <section class="py-6">
        <div class="container">
            <div class="row mb-lg-6">
                <div class="col-md-8">
                    <p class="subtitle text-secondary Cafe24SsurroundAir">당신의 취향저격 BEST</p>
                    <h2 class="mb-md-0">겨울 추천 캠핑장</h2>
                </div>
                <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-2-rooms.html">
               더보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
            </div>
        </div>
        <div class="container-fluid">
            <!-- Slider main container-->
            <div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
                <!-- Additional required wrapper-->
                <div class="swiper-wrapper pb-5">
                    <!-- Slides-->
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">선샤인글램핑카라반</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>경기도 가평</p>
                                        <p class="text-sm text-muted text-uppercase">글램핑 · 카라반</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">80,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">카누글램핑</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>강원도 화천</p>
                                        <p class="text-sm text-muted text-uppercase">글램핑</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">100,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">좋은 카라반</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>경남 밀양</p>
                                        <p class="text-sm text-muted text-uppercase">카라반</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">90,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">카라반캠프</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>경기도 화성</p>
                                        <p class="text-sm text-muted text-uppercase">캠핑</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">90,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">카라반캠프</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>경기도 화성</p>
                                        <p class="text-sm text-muted text-uppercase">캠핑</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">90,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">카라반캠프</a></h6>
                                        <p class="text-sm text-kakhi card-subtitle"><i class="fa fa-map-marker text-kakhi opacity-4 me-1"></i>경기도 화성</p>
                                        <p class="text-sm text-muted text-uppercase">캠핑</p>
                                        <p class="card-text d-flex justify-content-end text-gray-800 text-sm">
                                            <span class="h5 text-primary">90,000원</span>&nbsp;/1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">House</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">Apartment</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">House</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">Apartment</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">House</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                                        <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                                        <p class="text-sm text-muted text-uppercase">Apartment</p>
                                        <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span>
                                            <span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- If we need pagination-->
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <!-- Our picks section-->
    <section class="py-6 bg-gray-100">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8">
                    <p class="subtitle text-primary">여긴 어때요?</p>
                    <h2>지금 캠핑가기 좋은 지역</h2>
                </div>
                <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-2-rooms.html">
               더보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
            </div>
            <div class="row">
                <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
                    <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/newphoto/jeju.jpg) no-repeat; background-size: cover;">
                        <a class="tile-link" href="category.html"> </a>
                        <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                            <h3 class="text-shadow text-uppercase mb-0">제주</h3>
                        </div>
                    </div>
                </div>
                <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                    <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/newphoto/gapyeong.jpg) no-repeat; background-size: cover;">
                        <a class="tile-link" href="category.html"> </a>
                        <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                            <h3 class="text-shadow text-uppercase mb-0">가평</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                    <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/newphoto/gangwon.jpg) no-repeat; background-size: cover;">
                        <a class="tile-link" href="category.html"> </a>
                        <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                            <h3 class="text-shadow text-uppercase mb-0">강원</h3>
                        </div>
                    </div>
                </div>
                <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                    <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/newphoto/busan.png) no-repeat; background-size: cover;">
                        <a class="tile-link" href="category.html"> </a>
                        <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                            <h3 class="text-shadow text-uppercase mb-0">부산</h3>
                        </div>
                    </div>
                </div>
                <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
                    <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(${path}/resources/img/newphoto/chungbuk.jpg) no-repeat; background-size: cover;">
                        <a class="tile-link" href="category.html"> </a>
                        <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
                            <h3 class="text-shadow text-uppercase mb-0">충청</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Instagram-->
    <section>
        <div class="container-fluid px-0">
            <div class="swiper-container instagram-slider">
                <div class="swiper-wrapper">
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta1.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta2.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta3.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta4.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta5.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/newphoto/insta6.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-7.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-8.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-9.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-10.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-11.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-12.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-13.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-14.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-10.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-11.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-12.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-13.jpg" alt=" "></a>
                    </div>
                    <div class="swiper-slide overflow-hidden">
                        <a href="#"><img class="img-fluid hover-scale" src="${path}/resources/img/instagram/instagram-14.jpg" alt=" "></a>
                    </div>
                </div>
            </div>
        </div>
    </section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>