<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="캠핑장-마이페이지" name="title"/>
</jsp:include>


<section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 me-lg-auto">
                    <div class="card border-0 shadow mb-6 mb-lg-0">
                        <div class="card-header bg-gray-100 py-4 border-0 text-center">
                            <a class="d-inline-block" href="#"><img class="d-block avatar avatar-xxl p-2 mb-2" src="${path}/resources/img/avatar/avatar-10.jpg" alt=""></a>
                            <h5>Camping1</h5>
                            <!--<p class="text-muted text-sm mb-0">Los Angeles, CA </p>-->
                        </div>
                        <div class="card-body p-4">
                            <!--1개의 캠핑장ID가 소유한 캠핑장의 모든 리뷰 개수-->
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-2">
                                    <svg class="svg-icon text-success svg-icon-md">
                                        <use xlink:href="#diploma-1"> </use>
                                    </svg>
                                </div>
                                <div>
                                    <p class="mb-0">2877개의 리뷰</p>
                                </div>
                            </div>
                            <!--if. 영업배상책입보험 : Y-->
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-2">
                                    <svg class="svg-icon text-success svg-icon-md">
                                        <use xlink:href="#checkmark-1"> </use>
                                    </svg>
                                </div>
                                <div>
                                    <p class="mb-0">영업배상책임보험 가입 완료</p>
                                </div>
                            </div>
                            <!--if. 영업배상책입보험 : N-->
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-danger-light flex-shrink-0 me-2">
                                    <svg class="svg-icon text-danger svg-icon-md">
                                        <use xlink:href="#close-1"></use>
                                    </svg>
                                </div>
                                <div>
                                    <p class="mb-0">영업배상책임보험 가입 필요</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-3">
                                <div class="icon-rounded icon-rounded-sm bg-success-light flex-shrink-0 me-2">
                                    <svg class="svg-icon text-success svg-icon-md">
                                        <use xlink:href="#label-tag-1"></use>
                                    </svg>
                                </div>
                                <div>
                                    <p class="mb-0">사업자번호 403-39-61259</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 ps-lg-5">
                    <div class="text-block">
                        <h4 class="mb-5 d-xl-inline-block">Camper1의 캠핑장 리스트</h4>
                        <a class="btn btn-primary d-xl-inline-block float-xl-end mx-3 fs-6 TmoneyRoundWindExtraBold" href="user-list-host.html">예약현황</a>
                        <a class="btn btn-primary d-xl-inline-block float-xl-end fs-6 TmoneyRoundWindExtraBold" href="user-add-0.html">캠핑장 추가하기</a>
                        <div class="row">
                            <!-- place item-->
                            <div class="col-sm-6 col-lg-4 mb-30px hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                                <div class="card h-100 border-0 shadow">
                                    <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${path}/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room" />
                                        <a class="tile-link" href="detail-rooms.html"></a>
                                        <!--<div class="card-img-overlay-bottom z-index-20">
                                            <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-0.jpg" alt="Pamela" />
                                                <div>Pamela</div>
                                            </div>
                                        </div>-->
                                    </div>
                                    <div class="card-body d-flex align-items-center">
                                        <div class="w-100">
                                            <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">가가 캠핑장</a></h6>
                                            <div class="d-flex card-subtitle mb-3">
                                                <p class="flex-grow-1 mb-0 text-muted text-sm">강원도 홍천시</p>
                                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                                </p>
                                            </div>
                                            <p class="card-text text-muted"><span class="h4 text-primary">80,000원</span>&nbsp;1박</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-block">
                        <h5 class="mb-4">후기 리스트</h5>
                        <div class="d-flex d-block d-sm-flex review">
                            <div>
                                <h6 class="mt-2 mb-1">리뷰 작성한 회원 ID</h6>
                                <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                                    <p class="text-muted text-sm">가가 캠핑장</p>
                                </div>
                                <p class="text-muted text-sm">후기 내용</p>
                                <span class="text-uppercase text-muted text-sm">2022년 1월 1일</span>
                            </div>
                        </div>
                        <div class="d-flex d-block d-sm-flex review">
                            <div>
                                <h6 class="mt-2 mb-1">리뷰 작성한 회원 ID</h6>
                                <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                                    <p class="text-muted text-sm">가가 캠핑장</p>
                                </div>
                                <p class="text-muted text-sm">후기 내용</p>
                                <span class="text-uppercase text-muted text-sm">2022년 1월 1일</span>
                            </div>
                        </div>
                        <div class="d-flex d-block d-sm-flex review">
                            <div>
                                <h6 class="mt-2 mb-1">리뷰 작성한 회원 ID</h6>
                                <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                                    <p class="text-muted text-sm">가가 캠핑장</p>
                                </div>
                                <p class="text-muted text-sm">후기 내용</p>
                                <span class="text-uppercase text-muted text-sm">2022년 1월 1일</span>
                            </div>
                        </div>
                        <!--@@ Code with user image @@
                        <div class="d-flex d-block d-sm-flex review">
                            <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-4.jpg" alt="Jabba Hut"><span class="text-uppercase text-muted text-sm">2022년 1월 1일</span></div>
                            <div>
                                <h6 class="mt-2 mb-1">리뷰 작성한 회원 ID</h6>
                                <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                                    <p class="text-muted text-sm">가가 캠핑장</p>
                                </div>
                                <p class="text-muted text-sm">후기 내용</p>
                            </div>
                        </div>
                        -->
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	