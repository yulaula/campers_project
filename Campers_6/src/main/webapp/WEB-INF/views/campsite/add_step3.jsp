<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="캠핑장 추가 step3" name="title"/>
</jsp:include>


<div class="progress rounded-0 sticky-top" style="height: 8px; top: 100px;">
        <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
        <div class="container">
            <p class="subtitle text-primary">Add new listing</p>
            <h1 class="h2 mb-5">부대시설 추가<span class="text-muted float-end">Step 3</span> </h1>
            <form>
                <div class="row form-block">
                    <div class="col-lg-4">
                        <h4>필수 부대시설</h4>
                    </div>
                    <div class="col-lg-7 ms-auto">
                        <div class="row">
                            <div class="col-lg-4">
                                <label class="form-label">상주관리인원</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-lg-4">
                                <label class="form-label">화장실</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <label class="form-label">샤워실</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <label class="form-label">개수대</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-lg-3">
                                <label class="form-label">소화기</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="form-label">방화수</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="form-label">방화사</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <label class="form-label">화재탐지기</label>
                                <div class="d-flex align-items-center">
                                    <div class="btn btn-items btn-items-decrease">-</div>
                                    <input class="form-control input-items" type="text" value="1" disabled>
                                    <div class="btn btn-items btn-items-increase">+</div>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="mb-4 col-lg-6">
                                <label class="form-label" for="form_type">화로대</label>
                                <select class="selectpicker form-control" name="type" id="form_type" data-style="btn-selectpicker" title="선택" aria-describedby="propertyTypeHelp">
                                  <option value="type_0">개별</option>
                                  <option value="type_1">불가</option>
                                </select>
                            </div>
                            <div class="mb-4 col-lg-6">
                                <label class="form-label" for="form_type">애완동물</label>
                                <select class="selectpicker form-control" name="type" id="form_type" data-style="btn-selectpicker" title="선택" aria-describedby="propertyTypeHelp">
                                  <option value="type_0">가능</option>
                                  <option value="type_1">불가능</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row form-block">
                    <div class="col-lg-4">
                        <h4>기타 부대시설</h4>
                    </div>
                    <div class="col-lg-7 ms-auto">
                        <div class="mb-4">
                            <label class="form-label">부대시설</label>
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_0">전기    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_1">무선인터넷    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_2">장작판매    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_3">온수    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_4">놀이터    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_5">운동시설    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_6" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_6">물놀이장    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_7" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_7">캠핑장비대여    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_8" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_8">체험프로그램    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_9" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_9">트렘폴린    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_10" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_10">산책로    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_11" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_11">운동장    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_12" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_12">마트.편의점    </label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="amenities_13" name="amenities[]">
                                        <label class="form-check-label text-muted" for="amenities_13">애완동물 </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row form-block flex-column flex-sm-row">
                    <div class="col text-center text-sm-start">
                        <a class="btn btn-link text-muted" href="user-add-2.html"> <i class="fa-chevron-left fa me-2"></i>Back</a>
                    </div>
                    <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" href="user-add-4.html"> Next step<i class="fa-chevron-right fa ms-2"></i></a></div>
                </div>
            </form>
        </div>
    </section>
    

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	