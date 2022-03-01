<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="문의내역 상세" name="title"/>
</jsp:include>

<section class="py-5">
        <div class="container">
            <div class="d-flex flex-column flex-md-row justify-content-md-between align-items-md-center mb-4">
                <h1 class="mb-3 mb-md-0 hero-heading mb-0">1:1 문의 내역</h1>
                <div><a class="btn btn-link ps-0 text-primary" href="user-messages.html"><i class="fa fa-arrow-left me-2"></i> 리스트로 돌아가기</a></div>
            </div>
            <div class="card border-0 shadow mb-4">
                <div class="card-body p-4">
                    <div class="text-block pb-3">
                        <div class="d-flex align-items-center justify-content-between">
                            <div>
                                <h4><a class="text-reset" href="detail-rooms.html">춘천 왕터리조트카라반</a></h4>
                                <p class="text-muted text-base mb-0">강원도 춘천</p>
                                <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                                </div>
                            </div>
                            <a href="detail-rooms.html"><img class="ms-3 rounded flex-shrink-0" src="${path}/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="" width="100"></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Chat Box-->
            <div class="px-4 py-5">
                <div class="row">
                    <!-- Sender Message-->
                    <!--<div class="d-flex col-md-9 col-xl-7 mb-3"><img class="avatar avatar-border-white flex-shrink-0" src="img/avatar/avatar-1.jpg" alt="user">
                        <div class="ms-3">
                            <div class="bg-gray-200 rounded p-4 mb-2">
                                <p class="text-sm mb-0">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly,
                                    slightly domed and divided by arches into stiff sections</p>
                            </div>
                            <p class="small text-muted ms-3">12:00 PM | Aug 13</p>
                        </div>
                    </div>-->
                    <!-- Reciever Message-->
                    <div style="float: right;">
                        <div class="col-md-9 col-xl-7 me-0 mb-3" style="float: right;">
                            <div class="me-5" style="float: right;">
                                <div class="bg-kakhi rounded p-4 mb-2">
                                    <p class="text-sm mb-0 text-white">안녕하세요. 문의드립니다~!</p>
                                </div>
                                <p class="small text-muted ms-3">2022년 2월 1일 12:00 PM</p>
                            </div>
                        </div>
                    </div>
                    <!-- Sender Message-->
                    <div class="d-flex col-md-9 col-xl-7 mb-3">
                        <div class="ms-3">
                            <div class="bg-beige rounded p-4 mb-2">
                                <p class="text-sm mb-0">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.</p>
                            </div>
                            <p class="small text-muted ms-3">2022년 2월 1일 12:00 PM</p>
                        </div>
                    </div>
                    <!-- Reciever Message-->
                    <div style="float: right;">
                        <div class="col-md-9 col-xl-7 me-0 mb-3" style="float: right;">
                            <div class="me-5" style="float: right;">
                                <div class="bg-kakhi rounded p-4 mb-2">
                                    <p class="text-sm mb-0 text-white">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>
                                </div>
                                <p class="small text-muted ms-3" style="float: right;">2022년 2월 1일 12:00 PM</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Typing area-->
            <form class="bg-light rounded shadow-sm" action="#">
                <div class="input-group">
                    <textarea class="form-control border-0 p-4 bg-light text-sm" placeholder="Type a message" aria-describedby="button-sendMessage"></textarea>
                    <button class="btn btn-link" id="button-sendMessage" type="submit"><i class="fa fa-paper-plane"></i></button>
                </div>
            </form>
        </div>
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	