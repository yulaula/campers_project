<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="캠핑장 상세조회" name="title"/>
</jsp:include>
	
	<section>
        <!-- Slider main container-->
        <div class="swiper-container detail-slider slider-gallery">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper">
                <!-- Slides-->
                <div class="swiper-slide">
                    <a href="${path}/resources/img/newphoto/camp_image1.JPG" data-toggle="gallery-top" title="Rear entrance"><img class="img-fluid" src="${path}/resources/img/newphoto/camp_image1.JPG" alt="Rear entrance"></a>
                </div>
                <div class="swiper-slide">
                    <a href="https://gocamping.or.kr/upload/camp/3429/thumb/thumb_720_7798D931eCFr52PoJOTNrEdo.jpg" data-toggle="gallery-top" title="Our street"><img class="img-fluid" src="https://gocamping.or.kr/upload/camp/3429/thumb/thumb_720_7798D931eCFr52PoJOTNrEdo.jpg" alt="Our street"></a>
                </div>
                <div class="swiper-slide">
                    <a href="${path}/resources/img/newphoto/login_image2.png" data-toggle="gallery-top" title="Outside"><img class="img-fluid" src="${path}/resources/img/newphoto/login_image2.png" alt="Outside"></a>
                </div>
                <!-- <div class="swiper-slide">
                    <a href="img/photo/photo-1484154218962-a197022b5858.jpg" data-toggle="gallery-top" title="Kitchen"><img class="img-fluid" src="img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen"></a>
                </div>
                <div class="swiper-slide">
                    <a href="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom"></a>
                </div>
                <div class="swiper-slide">
                    <a href="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom"></a>
                </div> -->
            </div>
            <div class="swiper-pagination swiper-pagination-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
            <div class="swiper-button-next swiper-button-white"></div>
        </div>
    </section>
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-8">
                <div class="text-block">
                    <p class="text-primary"><i class="fa-map-marker-alt fa me-1"></i> 경상북도, 칠곡군</p>
                    <h1>한티 별빛아래 관광농원 야영장</h1>
                    <ul class="list-inline text-sm mb-4">
                        <li class="list-inline-item me-3"><i class="fa fa-users me-1 text-secondary"></i> 상주관리인원</li>
                        <li class="list-inline-item me-3"><i class="fa fa-moon me-1 text-secondary"></i> 테마환경 </li>
                        <li class="list-inline-item me-3"><i class="fa fa-seedling me-1 text-secondary"></i> 여행시기</li>
                    </ul>
                    <p class="text-muted fw-bolder">발 아래로 내려다보는 풍경이 일품
                    </p>
                    <h6 class="mb-3">소개</h6>
                    <p class="text-muted fw-normal">한티 별빛아래 오토캠핑장은 경북 칠곡군 가산면에 자리해 있어요. 칠곡군청을 기점으로 33㎞가량 떨어졌으며, 자동차에 몸을 싣고 호국로, 남원로, 79번 지방도를 차례로 달리면 닿아요. 도착까지 걸리는 시간은 50분 안팎이예요. 이곳은 ‘높은 고개’란 의미를 지닌 한티재 인근에 위치해 있으며, 고지대인 덕택에 한여름 낮 시간에는 다른 지역에 비해 무덥지 않아요. 해가 진 저녁에는 닭살이 살짝 돋는 선선함을 느낄
                        정도예요. 게다가 캠핑장에서 발 아래로 내려다보는 풍경은 감탄사를 자아낼 정도로 멋져요. 캠핑장에는 48면의 자동차 야영장을 마련했으며, 바닥 형태는 파쇄석이고, 사이트 크기는 가로 6m 세로 9m예요. 개인 트레일러는 물론 카라반 동반 입장이 가능해요. 주말 운영을 원칙으로 사계절 내내 문을 열어요. 캠핑장 인근에 치산관광지, 팔공산도립공원, 블루데이식물원 등이 있어 연계관광이 용이하며, 팔공산 주변에
                        여러 음식점도 성업 중이라 먹을거리를 찾아 나서기에 부담이 없어요. </p>
                </div>
                <div class="text-block">
                    <h4 class="mb-4">부대시설</h4>
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-unstyled text-muted">
                                <li class="mb-2"> <i class="fa fa-plug text-secondary w-1rem me-3 text-center"></i><span class="text-sm">전기</span></li>
                                <li class="mb-2"> <i class="fa fa-wifi text-secondary w-1rem me-3 text-center"></i><span class="text-sm">무선인터넷</span></li>
                                <li class="mb-2"> <i class="fa fa-tree text-secondary w-1rem me-3 text-center"></i><span class="text-sm">장작판매</span></li>
                                <li class="mb-2"> <i class="fa fa-paw text-secondary w-1rem me-3 text-center"></i><span class="text-sm">애완동물</span></li>
                                <li class="mb-2"> <i class="fa fa-thermometer-three-quarters text-secondary w-1rem me-3 text-center"></i><span class="text-sm">온수</span></li>
                                <li class="mb-2"> <i class="fa fa-child text-secondary w-1rem me-3 text-center"></i><span class="text-sm">놀이터</span></li>
                                <li class="mb-2"> <i class="fa fa-dumbbell text-secondary w-1rem me-3 text-center"></i><span class="text-sm">운동시설</span></li>
                                <li class="mb-2"> <i class="fa fa-water text-secondary w-1rem me-3 text-center"></i><span class="text-sm">물놀이장</span></li>
                                <li class="mb-2"> <i class="fa fa-campground text-secondary w-1rem me-3 text-center"></i><span class="text-sm">캠핑장비대여</span></li>
                                <li class="mb-2"> <i class="fa fa-music text-secondary w-1rem me-3 text-center"></i><span class="text-sm">체험프로그램</span></li>
                                <li class="mb-2"> <i class="fa fa-smile text-secondary w-1rem me-3 text-center"></i><span class="text-sm">트렘폴린</span></li>
                                <li class="mb-2"> <i class="fa fa-shoe-prints text-secondary w-1rem me-3 text-center"></i><span class="text-sm">산책로</span></li>
                                <li class="mb-2"> <i class="fa fa-seedling text-secondary w-1rem me-3 text-center"></i><span class="text-sm">운동장</span></li>
                                <li class="mb-2"> <i class="fa fa-cart-plus text-secondary w-1rem me-3 text-center"></i><span class="text-sm">마트.편의점</span></li>
                                <!-- <li class="mb-2"> <i class="fa fa-tv text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Cable TV</span></li> -->
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <h5 class="mb-4">위치</h5>
                    <div class="map-wrapper-300 mb-3">
                        <div class="h-100" id="detailMap"></div>
                    </div>
                </div>
                <div class="text-block">
                    <h5 class="mb-4">갤러리</h5>
                    <div class="row gallery mb-3 ms-n1 me-n1">
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-fancybox="gallery" title="Our street"><img class="img-fluid" src="img/photo/photo-1426122402199-be02db90eb90.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-fancybox="gallery" title="Outside"><img class="img-fluid" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" data-fancybox="gallery" title="Rear entrance"><img class="img-fluid" src="img/photo/photo-1494526585095-c41746248156.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-fancybox="gallery" title="Kitchen"><img class="img-fluid" src="img/photo/photo-1484154218962-a197022b5858.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..."></a>
                        </div>
                        <div class="col-lg-4 col-6 px-1 mb-2">
                            <a href="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="..."></a>
                        </div>
                    </div>
                </div>
                <div class="text-block">
                    <p class="subtitle text-sm text-primary">Reviews</p>
                    <h5 class="mb-4">리뷰 리스트</h5>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"></div>
                        <div>
                            <h6 class="mt-2 mb-1">장원영</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                            </div>
                            <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly
                                domed and divided by arches into stiff sections </p>
                            <span class="text-uppercase text-muted text-sm">2022년 2월 9일</span>
                        </div>
                    </div>
                    <div class="d-flex d-block d-sm-flex review">
                        <div class="text-md-center flex-shrink-0 me-4 me-xl-5"></div>
                        <div>
                            <h6 class="mt-2 mb-1">최웅</h6>
                            <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                            </div>
                            <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot;
                                he thought. It wasn't a dream. </p>
                            <span class="text-uppercase text-muted text-sm">2022년 2월 1일</span>
                        </div>
                    </div>
                    <div class="py-5">
                        <button class="btn btn-outline-success" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">리뷰 남기기</button>
                        <div class="collapse mt-4" id="leaveReview">
                            <h5 class="mb-4">리뷰 남기기</h5>
                            <form class="form" id="contact-form" method="get" action="#">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label" for="name">Your ID *</label>
                                            <input class="form-control" type="text" name="name" id="name" value="test124" required="required">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="mb-4">
                                            <label class="form-label" for="rating">Your rating *</label>
                                            <select class="form-select focus-shadow-0" name="rating" id="rating">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label" for="review">Review text *</label>
                                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                                </div>
                                <button class="btn btn-primary" type="submit">리뷰 게시하기</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="p-4 shadow ms-lg-4 rounded sticky-top" style="top: 100px;">
                    <p class="text-muted"><span class="text-primary h2">₩48,000  </span> /박</p>
                    <hr class="my-4">
                    <form class="form" id="booking-form" method="get" action="#" autocomplete="off">
                        <div class="mb-4">
                            <label class="form-label" for="bookingDate">일정 예약 *</label>
                            <div class="datepicker-container datepicker-container-right">
                                <input class="form-control" type="text" name="bookingDate" id="bookingDate" placeholder="날짜를 선택해주세요" required="required">
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="guests">Guests *</label>
                            <select class="form-control" name="guests" id="guests">
                                <option option value="1">1 명</option>
                                <option value="2">2 명</option>
                                <option value="3">3 명</option>
                                <option value="4">4 명</option>
                                <option value="5">5 명</option>
                            </select>
                        </div>
                        <div class="d-grid mb-4">
                            <a class="btn btn-primary" href="user-booking-1.html">예약하기</a>
                        </div>
                    </form>
                    <p class="text-muted text-sm text-center">예약 확정 전에는 요금이 청구되지 않아요.</p>
                    <hr class="my-4">
                    <div class="text-center">
                        <p>
                            <a class="text-info text-sm" href="user-messages-detail.html"> <i class="fa fa-comment-dots"></i> 문의하기</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="py-6 bg-gray-100">
        <div class="container">
            <p class="subtitle text-sm text-primary">You may also like </p>
            <h5 class="mb-0">경상북도에 여긴 어떠세요?</h5>
            <!-- Slider main container-->
            <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
                <!-- Additional required wrapper-->
                <div class="swiper-wrapper pb-5">
                    <!-- Slides-->
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">글램핑</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">캠핑</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">글램핑</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">오토캠핑</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">캠핑</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-bottom z-index-20">
                                        <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-11.jpg" alt="Stuart" />
                                            <div>Stuart</div>
                                        </div>
                                    </div>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
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

        <div class="container">
            <p class="subtitle text-sm text-primary">You may also like </p>
            <h5 class="mb-0">글램핑에 여긴 어떠세요?</h5>
            <!-- Slider main container-->
            <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
                <!-- Additional required wrapper-->
                <div class="swiper-wrapper pb-5">
                    <!-- Slides-->
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">전라남도 여수</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">강원도 강릉시</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">경기도 청평</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">경기도 가평</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">충청북도 제천시</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan" />
                                    <a class="tile-link" href="detail-rooms.html"></a>
                                    <div class="card-img-overlay-top text-end">
                                        <a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                            <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                                    </div>
                                </div>
                                <div class="card-body d-flex align-items-center">
                                    <div class="w-100">
                                        <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                                        <div class="d-flex card-subtitle mb-3">
                                            <p class="flex-grow-1 mb-0 text-muted text-sm">강원도 춘천시</p>
                                            <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                            </p>
                                        </div>
                                        <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span> 1박</p>
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
    </div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	