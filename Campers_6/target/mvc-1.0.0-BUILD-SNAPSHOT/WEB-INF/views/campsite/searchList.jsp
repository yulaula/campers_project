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
            <div class="col-lg-6 py-4 p-xl-5">
                <h2 class="mb-4">경상북도</h2>
                <hr class="my-4">
                <form action="#" autocomplete="off">
                    <div class="row">
                        <div class="col-xl-4 col-md-6 mb-4">
                            <label class="form-label" for="form_dates">일정</label>
                            <div class="datepicker-container datepicker-container-left">
                                <input class="form-control" type="text" name="bookingDate" id="form_dates" placeholder="">
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <label class="form-label" for="form_guests">인원수</label>
                            <select class="selectpicker form-control" name="guests" id="form_guests" data-style="btn-selectpicker" title=" ">
                  <option value="guests_0">1    </option>
                  <option value="guests_1">2    </option>
                  <option value="guests_2">3    </option>
                  <option value="guests_3">4    </option>
                  <option value="guests_4">5    </option>
                </select>
                        </div>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <label class="form-label" for="form_type">타입</label>
                            <select class="selectpicker form-control" name="type" id="form_type" multiple data-style="btn-selectpicker" data-none-selected-text="">
                  <option value="type_0">전체   </option>
                  <option value="type_1">캠핑    </option>
                  <option value="type_2">글램핑    </option>
                  <option value="type_3">오토캠핑    </option>
                  <option value="type_4">카라반    </option>
                </select>
                        </div>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <label class="form-label">가격</label>
                            <div class="text-primary" id="slider-snap"></div>
                            <div class="nouislider-values">
                                <div class="min">최저 <span id="slider-snap-value-from"></span>원</div>
                                <div class="max">최고 <span id="slider-snap-value-to"></span>원</div>
                            </div>
                            <input type="hidden" name="pricefrom" id="slider-snap-input-from" value="40000">
                            <input type="hidden" name="priceto" id="slider-snap-input-to" value="400000">
                        </div>
                        <div class="col-12 pb-4">
                            <div class="collapse" id="moreFilters">
                                <div class="filter-block">
                                    <h6 class="mb-3">지역</h6>
                                    <div class="row">
                                        <div class="col-xl-4 col-md-6 mb-4 mb-xl-0">
                                            <label class="form-label" for="form_neighbourhood">시군구</label>
                                            <select class="selectpicker form-control" name="neighbourhood" id="form_neighbourhood" multiple data-style="btn-selectpicker" data-live-search="true" data-selected-text-format="count &gt; 1" data-none-selected-text="">
                          <option value="neighbourhood_0">Battery Park City    </option>
                          <option value="neighbourhood_1">Bowery    </option>
                          <option value="neighbourhood_2">Carnegie Hill    </option>
                          <option value="neighbourhood_3">Central Park    </option>
                          <option value="neighbourhood_4">Chelsea    </option>
                          <option value="neighbourhood_5">Chinatown    </option>
                          <option value="neighbourhood_6">Civic Center    </option>
                          <option value="neighbourhood_7">East Harlem    </option>
                          <option value="neighbourhood_8">Financial District    </option>
                          <option value="neighbourhood_9">Flatiron    </option>
                          <option value="neighbourhood_10">Garment District    </option>
                          <option value="neighbourhood_11">Gramercy Park    </option>
                          <option value="neighbourhood_12">Greenwich Village    </option>
                          <option value="neighbourhood_13">East Village    </option>
                          <option value="neighbourhood_14">West Village    </option>
                          <option value="neighbourhood_15">Hamilton Heights    </option>
                          <option value="neighbourhood_16">Harlem    </option>
                          <option value="neighbourhood_17">Hell's Kitchen / Clinton    </option>
                          <option value="neighbourhood_18">Inwood    </option>
                          <option value="neighbourhood_19">Kips Bay    </option>
                          <option value="neighbourhood_20">Lenox Hill    </option>
                          <option value="neighbourhood_21">Little Italy    </option>
                          <option value="neighbourhood_22">Lower Eastside    </option>
                          <option value="neighbourhood_23">Madison Square    </option>
                          <option value="neighbourhood_24">Manhattan Valley    </option>
                          <option value="neighbourhood_25">Meatpacking District    </option>
                          <option value="neighbourhood_26">Midtown    </option>
                          <option value="neighbourhood_27">Morningside Heights    </option>
                          <option value="neighbourhood_28">Murray Hill    </option>
                          <option value="neighbourhood_29">NoHo    </option>
                          <option value="neighbourhood_30">NoLita    </option>
                          <option value="neighbourhood_31">Roosevelt Island    </option>
                          <option value="neighbourhood_32">SoHo    </option>
                          <option value="neighbourhood_33">Stuyvesant Town (Stuyvesant Square)    </option>
                          <option value="neighbourhood_34">Sutton Place    </option>
                          <option value="neighbourhood_35">Times Square    </option>
                          <option value="neighbourhood_36">Tribeca    </option>
                          <option value="neighbourhood_37">Turtle Bay    </option>
                          <option value="neighbourhood_38">Upper Eastside    </option>
                          <option value="neighbourhood_39">Upper Westside    </option>
                          <option value="neighbourhood_40">Washington Heights    </option>
                          <option value="neighbourhood_41">Yorkville    </option>
                        </select>
                                        </div>
                                        <div class="col-xl-8">
                                            <label class="form-label">입지 구분</label>
                                            <ul class="list-inline mt-xl-1 mb-0">
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_0" name="type[]">
                                                        <label class="form-check-label" for="type_0">산                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_1" name="type[]">
                                                        <label class="form-check-label" for="type_1">숲                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_2" name="type[]">
                                                        <label class="form-check-label" for="type_2">계곡                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_3" name="type[]">
                                                        <label class="form-check-label" for="type_3">도심                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_4" name="type[]">
                                                        <label class="form-check-label" for="type_4">해변                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_5" name="type[]">
                                                        <label class="form-check-label" for="type_5">섬                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_6" name="type[]">
                                                        <label class="form-check-label" for="type_6">호수                                            </label>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="type_7" name="type[]">
                                                        <label class="form-check-label" for="type_7">강                                            </label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <h6 class="mb-3">부대시설</h6>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                                <label class="form-check-label" for="amenities_0">전기                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                                <label class="form-check-label" for="amenities_1">무선인터넷                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                                <label class="form-check-label" for="amenities_2">장작판매                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                                <label class="form-check-label" for="amenities_3">온수                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                                <label class="form-check-label" for="amenities_4">놀이터                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                                <label class="form-check-label" for="amenities_5">운동시설                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_6" name="amenities[]">
                                                <label class="form-check-label" for="amenities_6">물놀이장                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_7" name="amenities[]">
                                                <label class="form-check-label" for="amenities_7">캠핑장비대여                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_8" name="amenities[]">
                                                <label class="form-check-label" for="amenities_8">체험프로그램                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_9" name="amenities[]">
                                                <label class="form-check-label" for="amenities_9">애완동물                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_10" name="amenities[]">
                                                <label class="form-check-label" for="amenities_10">트렘폴린                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_11" name="amenities[]">
                                                <label class="form-check-label" for="amenities_11">산책로                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_12" name="amenities[]">
                                                <label class="form-check-label" for="amenities_12">운동장                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="amenities_13" name="amenities[]">
                                                <label class="form-check-label" for="amenities_13">마트.편의점                               </label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="filter-block">
                                    <h6 class="mb-3">테마</h6>
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_0" name="facilities[]">
                                                <label class="form-check-label" for="facilities_0">일출명소                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_1" name="facilities[]">
                                                <label class="form-check-label" for="facilities_1">일몰명소                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_2" name="facilities[]">
                                                <label class="form-check-label" for="facilities_2">봄꽃여행                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_3" name="facilities[]">
                                                <label class="form-check-label" for="facilities_3">여름물놀이                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_4" name="facilities[]">
                                                <label class="form-check-label" for="facilities_4">가을단풍명소                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_5" name="facilities[]">
                                                <label class="form-check-label" for="facilities_5">겨울눈꽃명소                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_6" name="facilities[]">
                                                <label class="form-check-label" for="facilities_6">수상레저                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_7" name="facilities[]">
                                                <label class="form-check-label" for="facilities_7">항공레저                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_8" name="facilities[]">
                                                <label class="form-check-label" for="facilities_8">걷기길                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_9" name="facilities[]">
                                                <label class="form-check-label" for="facilities_9">스키                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_10" name="facilities[]">
                                                <label class="form-check-label" for="facilities_10">낚시                               </label>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="facilities_11" name="facilities[]">
                                                <label class="form-check-label" for="facilities_11">액티비티                               </label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 mb-4 order-2 order-sm-1">
                            <button class="btn btn-primary" type="submit"> <i class="fas fa-search me-1"></i>검색</button>
                        </div>
                        <div class="col-sm-6 mb-4 text-sm-end order-1 order-sm-2">
                            <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="간편 검색" data-collapsed-text="상세 검색">상세 검색</button>
                        </div>
                    </div>
                </form>
                <hr class="my-4">
                <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                    <div class="me-3">
                        <p class="mb-3 mb-md-0"><strong>12</strong> 개의 캠핑장을 찾았어요!</p>
                    </div>
                    <div>
                        <label class="form-label me-2" for="form_sort">정렬</label>
                        <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                <option value="sortBy_0">추천순   </option>
                <option value="sortBy_1">최신순   </option>
                <option value="sortBy_2">거리순   </option>
              </select>
                    </div>
                </div>
                <div class="row">
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$121</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$75</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$93</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$115</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- place item-->
                    <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
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
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary">$123</span> per night</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Pagination -->
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination-template d-flex justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-6 map-side-lg pe-lg-0" style="padding-top:30px">
                <div class="map-full shadow-left" id="categorySideMap"></div>
            </div>
        </div>
    </div>
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	