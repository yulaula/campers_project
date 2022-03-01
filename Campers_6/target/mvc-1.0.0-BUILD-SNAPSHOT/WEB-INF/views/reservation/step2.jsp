<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="예약 step2" name="title"/>
</jsp:include>

<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
        <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <p class="subtitle text-primary">Book your holiday home</p>
                    <h1 class="h2 mb-5"> 결제 <span class="text-muted float-end">Step 2</span> </h1>
                    <div class="text-block">
                        <form action="#">
                            <div class="d-flex justify-content-between align-items-end mb-4">
                                <h5 class="mb-0">결제 방법</h5>
                                <div class="text-muted"><i oclass="fab fa-cc-amex fa-2x me-2"> </i><i class="fab fa-cc-visa fa-2x me-2"> </i><i class="fab fa-cc-mastercard fa-2x"></i></div>
                            </div>

                            <!--<button class="btn btn-link btn-collapse ps-0 text-muted" type="button" data-bs-toggle="collapse" data-bs-target="#addNewPay" aria-expanded="false" aria-controls="addNewPay" data-expanded-text="닫기" data-collapsed-text="카카오페이 결제"><img src="img/newphoto/payment_icon.png" alt="kakaopay"/></button>-->
                            <button class="btn btn-link btn-collapse ps-0 text-muted" type="button" data-bs-toggle="collapse" data-bs-target="#addNewPay" aria-expanded="false" aria-controls="addNewPay"><img src="img/newphoto/payment_icon.png" alt="kakaopay" style="width: 50%;"/></button>
                            <div class="row collapse" id="addNewPay" style="background-color: #ffdd0069;">
                                <a class="navbar-brand py-1" href="#">
                                    <div class="mb-4 col-md-6">
                                        <label class="form-label" for="card-name">휴대폰 번호</label>
                                        <input class="form-control" type="text" name="card-name" placeholder="-없이 입력" id="card-name">
                                    </div>
                                    <div class="mb-4 col-md-6">
                                        <label class="form-label" for="card-number">생년월일</label>
                                        <input class="form-control" type="text" name="card-number" placeholder="예)930624" id="card-number">
                                    </div>
                                </a>
                            </div>
                            <button class="btn btn-link btn-collapse ps-0 text-muted TmoneyRoundWindExtraBold" type="button" data-bs-toggle="collapse" data-bs-target="#addNewCard" aria-expanded="false" aria-controls="addNewCard" data-expanded-text="닫기" data-collapsed-text="카드 결제">카드 결제</button>
                            <div class="row collapse" id="addNewCard" style="background-color: #fae8c8b4;">
                                <div class="mb-4 col-md-6">
                                    <label class="form-label" for="card-name">카드 선택</label>
                                    <input class="form-control" type="text" name="card-name" placeholder="Name on card" id="card-name">
                                </div>
                                <div class="mb-4 col-md-6">
                                    <label class="form-label" for="card-number">카드 번호</label>
                                    <input class="form-control" type="text" name="card-number" placeholder="Card number" id="card-number">
                                </div>
                                <div class="mb-4 col-md-4">
                                    <label class="form-label" for="expiry-date">유효기간</label>
                                    <input class="form-control" type="text" name="expiry-date" placeholder="MM/YY" id="expiry-date">
                                </div>
                                <div class="mb-4 col-md-4">
                                    <label class="form-label" for="cvv">CVC</label>
                                    <input class="form-control" type="text" name="cvc" placeholder="···" id="cvc">
                                </div>
                                <div class="mb-4 col-md-4">
                                    <label class="form-label" for="zip">비밀번호 앞 2자리</label>
                                    <input class="form-control" type="text" name="zip" placeholder="··" id="zip">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="text-block">
                        <p class="text-sm text-muted">개인정보 제공 동의
                            <br>1. 개인정보를 제공받는 자 : 서비스 판매자
                            <br>2. 제공하는 개인정보 항목 : 이름, 캠퍼스 아이디, 전화번호, 결제수단
                            <br>3. 개인정보를 제공받는 자의 이용목적 : 판매자와 구매자의 원화한 거래 진행,
                            <br>본인의사 확인, 고객상담 및 불만처리/부정이용 방지 등의 고객관리
                        </p>
                        <p class="text-sm text-muted"></p>
                        <h6>결제 내용을 확인하였으며, 정보 제공 등에 동의합니다.</h6>
                    </div>
                    <div class="row form-block flex-column flex-sm-row">
                        <div class="col text-center text-sm-start">
                            <a class="btn btn-link text-muted" href="user-booking-1.html"> <i class="fa-chevron-left fa me-2"></i>back</a>
                        </div>
                        <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" href="user-booking-4.html">next step<i class="fa-chevron-right fa ms-2"></i></a></div>
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
	
	