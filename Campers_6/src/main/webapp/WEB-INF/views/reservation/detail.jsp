<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시판" name="title"/>
</jsp:include>

<div class="container-fluid">
        <div class="row">
            <div class="col-lg-7 col-xl-5 px-4 pb-4 ps-xl-5 pe-xl-5">
                <section class="mx-n4 mx-xl-n5 mb-4 mb-xl-5">
                    <!-- Slider main container-->
                    <div class="swiper-container booking-detail-slider">
                        <!-- Additional required wrapper-->
                        <div class="swiper-wrapper">
                            <!-- Slides-->
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Our street"></div>
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Outside"></div>
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Rear entrance"></div>
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen"></div>
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom"></div>
                            <div class="swiper-slide"><img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom"></div>
                        </div>
                        <div class="swiper-pagination swiper-pagination-white"></div>
                        <div class="swiper-button-prev swiper-button-white"></div>
                        <div class="swiper-button-next swiper-button-white"> </div>
                    </div>
                </section>
                <!-- Breadcrumbs -->
                <ol class="breadcrumb ps-0  justify-content-start">
                    <li class="breadcrumb-item"><a href="index.html">Camping</a></li>
                    <!-- <li class="breadcrumb-item"><a href="user-grid.html">지역</a></li> -->
                    <li class="breadcrumb-item active"> 경상북도, 칠곡</li>
                </ol>
                <div class="text-block">

                    <h1 class="hero-heading mb-3">
                        <a class="hovertest" href="detail-rooms.html">한티 별빛아래 관광농원 야영장</a>
                    </h1>
                </div>
                <div class="text-block">
                    <h6 class="mb-4">1 박 일정</h6>
                    <div class="row mb-3">
                        <div class="col-md-6 d-flex align-items-center mb-3 mb-md-0">
                            <div class="date-tile me-3">
                                <div class="text-uppercase"> <span class="text-sm">1월</span><br><strong class="text-lg">17</strong></div>
                            </div>
                            <p class="text-sm mb-0">수요일 check-in<br>3PM - 7PM</p>
                        </div>
                        <div class="col-md-6 d-flex align-items-center">
                            <div class="date-tile me-3">
                                <div class="text-uppercase"> <span class="text-sm">1월</span><br><strong class="text-lg">18</strong></div>
                            </div>
                            <p class="text-sm mb-0">목요일 check-out<br>11AM</p>
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <div class="row">
                        <div class="col-sm">
                            <h6>Phone</h6>
                            <p class="text-muted">010-1111-2222</p>
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <div class="row">
                        <div class="col">
                            <h6> 총 비용</h6>
                            <p class="text-muted">₩48,000 원</p>
                        </div>
                        <div class="col align-self-center">
                            <!-- <p class="text-end d-print-none"><a class="btn btn-link text-muted" href="user-invoice.html"><i class="far fa-file me-2"></i>Your invoice</a></p> -->
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <h6 class="mb-4">부대시설</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fas fa-plug text-success fa-fw text-center"></i></div>
                                <div><span class="text-sm">전기</span></div>
                            </div>
                        </li>
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fas fa-wifi text-success fa-fw text-center"></i></div>
                                <div><span class="text-sm">무선인터넷</span></div>
                            </div>
                        </li>
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-tree text-success fa-fw text-center"></i></div>
                                <div><span class="text-sm">장작판매</span></div>
                            </div>
                        </li>
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-paw text-success fa-fw text-center"></i></div>
                                <div><span class="text-sm">애완동물</span></div>
                            </div>
                        </li>
                    </ul>
                    <div class="collapse" id="amenities">
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fas fa-thermometer-three-quarters text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">온수</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fas fa-child text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">놀이터</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-dumbbell text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">운동시설</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-water text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">물놀이장</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-campground text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">캠핑장비대여</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-music text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">체험프로그램</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-smile text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">트렘폴린</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-shoe-prints text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">산책로</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-seedling text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">운동장</span></div>
                                </div>
                            </li>
                            <li class="mb-2">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-4"><i class="fa fa-cart-plus text-success fa-fw text-center"></i></div>
                                    <div><span class="text-sm">마트.편의점</span></div>
                                </div>
                            </li>

                        </ul>
                    </div>
                    <button class="btn btn-link btn-collapse ps-0 text-muted" type="button" data-bs-toggle="collapse" data-bs-target="#amenities" aria-expanded="false" aria-controls="amenities" data-expanded-text="Show less" data-collapsed-text="Show more">더 보기</button>
                </div>
                <div class="text-block">
                    <h6 class="mb-4">지켜주세요</h6>
                    <ul class="list-unstyled">
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-child text-secondary fa-fw text-center"></i></div>
                                <div><span class="text-sm">어린이 및 영유아에겐 적합하지 않아요</span></div>
                            </div>
                        </li>
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-glass-cheers text-secondary fa-fw text-center"></i></div>
                                <div><span class="text-sm">파티나 이벤트는 삼가해주세요</span></div>
                            </div>
                        </li>
                        <li class="mb-2">
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-smoking-ban text-secondary fa-fw text-center"></i></div>
                                <div><span class="text-sm">흡연은 삼가해주세요</span></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="text-block d-print-none">
                    <button class="btn btn-link ps-0" onclick="window.print()"><i class="fa fa-print me-2"></i>출력하기 </button>
                </div>
            </div>
            <div class="col-lg-5 col-xl-7 map-side-lg px-lg-0">
                <div class="map-full shadow-left" id="detailSideMap"></div>
            </div>
        </div>
    </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	