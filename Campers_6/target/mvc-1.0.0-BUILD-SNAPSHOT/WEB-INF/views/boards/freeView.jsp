<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="자유게시글 상세" name="title"/>
</jsp:include>

	<section>
        <div class="container">
            <div class="list-group shadow mb-5">
                <div class="row">
                    <div class="col-xl-8 col-lg-10 mx-auto" style="margin-top: 10rem;">
                        <h1 class="hero-heading" style="text-align: center;"><c:out value="${ freeBoard.title }" /></h1>
                        <p class="py-3 mb-5 text-muted text-end fw-light">작성자&nbsp;&nbsp;<a class="fw-bold" href="#"><c:out value="${ freeBoard.writerId }" /></a><span class="mx-1">&nbsp;&nbsp;|&nbsp;&nbsp;</span>2022년 1월 1일
                            <a class="fw-bold" href="blog.html"></a>
                            <br><br> 조회수&nbsp;&nbsp;
                            <a class="text-muted" href="#">12</a><span class="mx-1">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a class="text-muted" href="#">댓글 2</a>
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-8 col-lg-10 mx-auto">
                        <div class="text-content">
                            <h4>어떤 텐트가 좋나요?</h4>
                        </div>
                        <br><br>
                        <br><br>
                        <div class="form-group mb-0 justify-content-end">
                            <div style="text-align: end;">
                                <button type="submit" class="btn btn-primary">수정</button>
                                <button type="submit" class="btn btn-primary">삭제</button>
                                <button type="submit" class="btn btn-primary">목록으로</button>
                            </div>
                        </div>
                        <hr>
                        <!-- comments-->
                        <div class="mt-5">
                            <h6 class="text-uppercase text-muted mb-4">댓글 2개</h6>
                            <!-- comment-->
                            <div class="d-flex mb-4 row">
                                <div class="col-lg-9">
                                    <h5>idid111</h5>
                                    <p class="text-uppercase text-sm text-muted"><i class="far fa-clock"></i>2022년 1월 2일 12:00 am</p>
                                    <p class="text-muted">코스트코 가성비 좋아요</p>
                                    <!--<p><a class="btn btn-link text-primary" href="#"><i class="fa fa-reply"></i> Reply</a></p>-->

                                </div>
                                <div class="col-lg-3">
                                    <button class="btn btn-outline-secondary" type="button">수정</button>
                                    <button class="btn btn-outline-secondary" type="button">삭제</button>
                                </div>
                            </div>
                            <!-- /comment-->
                            <!-- comment-->
                            <div class="d-flex mb-4 row">
                                <div class="col-lg-9">
                                    <h5>lala33</h5>
                                    <p class="text-uppercase text-sm text-muted"><i class="far fa-clock"></i>2022년 1월 5일 12:35 pm</p>
                                    <p class="text-muted">노르딕꺼 추천합니다.</p>
                                    <!--<p><a class="btn btn-link text-primary" href="#"><i class="fa fa-reply"></i> Reply</a></p>-->
                                </div>
                                <div class="col-lg-3">
                                    <button class="btn btn-outline-secondary" type="button">수정</button>
                                    <button class="btn btn-outline-secondary" type="button">삭제</button>
                                </div>
                            </div>
                            <!-- /comment-->
                        </div>
                        <!-- /comments-->
                        <!-- comment form-->
                        <div class="mb-5">
                            <button class="btn btn-outline-success" type="button" data-bs-toggle="collapse" data-bs-target="#leaveComment" aria-expanded="false" aria-controls="leaveComment">댓글 남기기</button>
                            <div class="collapse" id="leaveComment">
                                <div class="mt-4">
                                    <h5 class="mb-4">댓글 남기기</h5>
                                    <form class="form" id="comment-form" method="post" action="#">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-4">
                                                    <label class="form-label" for="userId">ID<span class="required">*</span></label>
                                                    <input class="form-control" id="userId" type="text" value="test123">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-4">
                                            <label class="form-label" for="comment">Comment <span class="required">*</span></label>
                                            <textarea class="form-control" id="comment" rows="4"></textarea>
                                        </div>
                                        <button class="btn btn-primary" type="submit"><i class="far fa-comment"></i> Comment                                   </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /comment form-->
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	