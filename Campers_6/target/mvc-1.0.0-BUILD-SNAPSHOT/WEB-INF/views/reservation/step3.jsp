<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="예약 step3" name="title"/>
</jsp:include>

<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
        <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <p class="subtitle text-primary">Book your holiday home</p>
                    <h1 class="h2 mb-5"> 예약 완료 <span class="text-muted float-end">complete!</span> </h1>
                    <div class="text-block text-md-center py-4">
                        <p class="text-muted mb-5"></p>
                        <p class="text-center mb-5">
                            <a class="btn btn-primary mx-2 mb-2" href="user-booking-detail.html"> <i class="far fa-file me-2"></i>예약 내역</a><a class="btn btn-outline-muted mb-2" href="index.html">홈화면으로</a></p>
                        <p class="mb-5 text-center"><img class="img-fluid" src="img/newphoto/booking_camping.png" alt="" style="width: 400px;"></p>
                    </div>
                </div>
                <div class="col-lg-5 ps-xl-5">
                    <div class="card border-0 shadow">
                        <div class="card-body p-4">
                            <div class="text-block pb-3">
                                <div class="d-flex align-items-center">
                                    <div>
                                        <h6> <a class="text-reset" href="detail-rooms.html">가가 캠핑장</a></h6>
                                        <p class="text-muted text-sm mb-0">강원도 춘천시 ㅇㅇ면 12-1</p>
                                        <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                                        </div>
                                    </div>
                                    <a class="flex-shrink-0" href="detail-rooms.html"><img class="ms-3 rounded" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="" width="100"></a>
                                </div>
                            </div>
                            <div class="text-block py-3">
                                <ul class="list-unstyled mb-0">
                                    <li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>3 명</li>
                                    <li class="mb-0"><i class="far fa-calendar fa-fw text-muted me-2"></i>2021년 4월 17일<i class="fas fa-arrow-right fa-fw text-muted mx-3"></i>2021년 4월 18일</li>
                                </ul>
                            </div>
                            <div class="text-block pt-3 pb-0">
                                <table class="w-100">
                                    <tbody>
                                        <tr>
                                            <th class="fw-normal py-2">60,000원 x 1 박</th>
                                            <td class="text-end py-2">60,000원</td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr class="border-top">
                                            <th class="pt-3">총 금액</th>
                                            <td class="fw-bold text-end pt-3">60,000원</td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer bg-warning-light py-4 border-0">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h6 class="text-primary">주의사항 – 예약취소</h6>
                                    <p class="text-sm text-primary opacity-8 mb-0">48시간 이전에 취소시 전액 환불 <a href="#" class="text-reset ms-3">더 보기</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	