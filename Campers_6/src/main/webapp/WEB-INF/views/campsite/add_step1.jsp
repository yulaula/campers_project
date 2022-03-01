<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="캠핑장 추가 step1" name="title"/>
</jsp:include>


<div class="progress rounded-0 sticky-top" style="height: 8px; top: 100px;">
        <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
        <div class="container">
            <p class="subtitle text-primary">캠핑장 추가하기</p>
            <h1 class="h2 mb-5 yg-jalnan">캠핑장 기본정보<span class="text-muted float-end">Step 1</span> </h1>
            <form>
                <div class="row form-block">
                    <div class="col-lg-4">
                        <h4>기본정보</h4>
                    </div>
                    <div class="col-lg-7 ms-auto">
                        <div class="mb-4">
                            <label class="form-label" for="form_name">캠핑장 이름</label>
                            <input class="form-control" name="name" id="form_name">
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="camp_tel">전화번호</label>
                            <input class="form-control" name="name" id="camp_tel">
                        </div>

                        <div class="row">
                            <div class="mb-4">
                                <label class="form-label" for="form_type">타입</label>
                                <select class="selectpicker form-control" name="type" id="form_type" data-style="btn-selectpicker" title="선택" aria-describedby="propertyTypeHelp">
                              <option value="type_0">캠핑                         </option>
                              <option value="type_1">글램핑                        </option>
                              <option value="type_2">오토캠핑                        </option>
                              <option value="type_3">카라반                        </option>
                            </select>
                            </div>
                            <!--<div class="mb-4 col-lg-6">
                                <label class="form-label" for="form_type">객실 수</label>
                                <input class="form-control" name="name" id="camping_number" placeholder="">
                            </div>-->
                        </div>
                        <div class="row">
                            <!--일반 야영장-->
                            <div class="col-lg-3">
                                <label class="form-label">캠핑장</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="0" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <!--글램핑장-->
                            <div class="col-lg-3">
                                <label class="form-label">글램핑장</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="0" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <!--자동차 야영장-->
                            <div class="col-lg-3">
                                <label class="form-label">오토캠핑장</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="0" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <!--카라반-->
                            <div class="col-lg-3">
                                <label class="form-label">카라반</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="0" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="mb-4">
                            <label class="form-label" for="form_name">사업자번호</label>
                            <input class="form-control" name="name" id="business_number">
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="form_type">입지구분</label>
                            <select class="selectpicker form-control" name="type" id="induty" data-style="btn-selectpicker" title="전체" aria-describedby="propertyTypeHelp">
                            <option value="type_0">해변                         </option>
                            <option value="type_1">섬                        </option>
                            <option value="type_2">산                        </option>
                            <option value="type_3">숲                        </option>
                            <option value="type_4">계곡                        </option>
                            <option value="type_5">강                      </option>
                            <option value="type_6">호수                        </option>
                            <option value="type_7">도심                        </option>
                          </select>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">영업배상책임보험 유무</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="guests_0" name="guests">
                                <label class="form-check-label" for="guests_0">유</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="guests_1" name="guests">
                                <label class="form-check-label" for="guests_1">무</label>
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="form_name">전체 면적(㎡)</label>
                            <input class="form-control" name="name" id="allar">
                        </div>

                        <div class="row">
                            <!--봄,여름,가을,겨울 check로 변경하기-->
                            <div class="mb-4 col-lg-6">
                                <label class="form-label" for="form_type">운영기간</label>
                                <select class="selectpicker form-control" name="type" id="form_type" data-style="btn-selectpicker" title="선택" aria-describedby="propertyTypeHelp">
                            <option value="type_0">캠핑                         </option>
                            <option value="type_1">글램핑                        </option>
                            <option value="type_2">오토캠핑                        </option>
                            <option value="type_3">카라반                        </option>
                          </select>
                            </div>
                            <!--평일, 주말 check로 변경하기-->
                            <div class="mb-4 col-lg-6">
                                <label class="form-label" for="form_type">운영일</label>
                                <select class="selectpicker form-control" name="type" id="form_type" data-style="btn-selectpicker" title="선택" aria-describedby="propertyTypeHelp">
                                  <option value="type_0">캠핑                         </option>
                                  <option value="type_1">글램핑                        </option>
                                  <option value="type_2">오토캠핑                        </option>
                                  <option value="type_3">카라반                        </option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row form-block">
                    <div class="col-lg-4">
                        <h4>주소</h4>
                    </div>
                    <div class="col-lg-7 ms-auto">
                        <!-- Country-->
                        <div class="mb-4">
                            <label class="form-label" for="form_country">시/도</label>
                            <select class="selectpicker form-control" name="country" id="form_country" data-style="btn-selectpicker" title=" " data-live-search="true">
                              <option value="country_#{index}">서울             </option>
                              <option value="country_#{index}">경기             </option>
                              <option value="country_#{index}">인천             </option>
                              <option value="country_#{index}">강원             </option>
                              <option value="country_#{index}">제주             </option>
                              <option value="country_#{index}">대전             </option>
                              <option value="country_#{index}">충북             </option>
                              <option value="country_#{index}">충남             </option>
                              <option value="country_#{index}">부산             </option>
                              <option value="country_#{index}">울산             </option>
                              <option value="country_#{index}">경남             </option>
                              <option value="country_#{index}">대구             </option>
                              <option value="country_#{index}">경북             </option>
                              <option value="country_#{index}">광주             </option>
                              <option value="country_#{index}">전북             </option>
                              <option value="country_#{index}">전남             </option>
                            </select>
                        </div>
                        <!-- Street-->
                        <div class="mb-4">
                            <label class="form-label" for="form_street">시/군/구</label>
                            <input class="form-control" name="name" id="form_street">
                        </div>
                        <!-- City + State-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4">
                                    <label class="form-label" for="form_city">주소</label>
                                    <input class="form-control" name="name" id="form_city">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-4">
                                    <label class="form-label" for="form_state">주소 상세</label>
                                    <input class="form-control" name="name" id="form_state">
                                </div>
                            </div>
                        </div>
                        <!-- ZIP Code-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-4">
                                    <label class="form-label" for="form_zip">우편번호</label>
                                    <input class="form-control" name="name" id="form_zip">
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="form_description">오시는길</label>
                            <textarea class="form-control" name="name" id="form_description" rows="5" aria-describedby="descriptionHelp"></textarea>
                        </div>
                        <small class="mb-4">지도에서 선택</small>
                        <div class="map-wrapper-300 mb-3">
                            <div class="h-100" id="detailMap"></div>
                        </div>
                    </div>
                </div>
                <div class="row form-block flex-column flex-sm-row">
                    <div class="col text-center text-sm-start">
                    </div>
                    <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" href="user-add-2.html"> Next step<i class="fa-chevron-right fa ms-2"></i></a></div>
                </div>
            </form>
        </div>
    </section>
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	