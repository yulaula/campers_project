<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="후기게시글 상세조회" name="title"/>
</jsp:include>

<section class="hero-home dark-overlay mb-5"><img class="bg-image" src="${path}/resources/img/newphoto/post-bg.jpg" alt="">
        <div class="container py-7">
            <div class="overlay-content text-center text-white">
                <h1 class="display-3 mb-3 TmoneyRoundWindExtraBold">카누 최고에요</h1>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <p class="py-3 mb-5 text-muted text-end fw-light">
                        작성자&nbsp;&nbsp;<a class="fw-bold" href="#">test1234</a><span class="mx-1">&nbsp;&nbsp;|&nbsp;&nbsp;</span>2022년 1월 1일
                        <a class="fw-bold" href="blog.html"></a>
                        <br><br> 조회수&nbsp;&nbsp;
                        <a class="text-muted" href="#">12</a><span class="mx-1">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a class="text-muted" href="#">댓글 2</a>
                    </p>
                    <p class="lead mb-5">As am hastily invited <strong>settled at limited</strong> civilly fortune me. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor
                        sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. </p>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-10 mx-auto"><img class="img-fluid mb-5" src="${path}/resources/img/photo/photo-1471189641895-16c58a695bcb.jpg" alt=""></div>
            </div>
            <div class="row">
                <div class="col-xl-8 col-lg-10 mx-auto">
                    <div class="text-content">
                        <p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas
                            semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean
                            fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
                        <figure class="figure mb-3"><img class="figure-img img-fluid w-100" src="${path}/resources/img/photo/photo-1482463084673-98272196658a.jpg" alt="Example blog post alt.">
                            <figcaption class="figure-caption text-center">Photo by Jack Tran, New York </figcaption>
                        </figure>
                        <h2>Header Level 2</h2>
                        <ol>
                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li>Aliquam tincidunt mauris eu risus.</li>
                        </ol>
                        <blockquote class="blockquote blockquote-primary">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada
                            tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</blockquote>
                        <h3>Header Level 3</h3>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum,
                            eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam
                            erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
                        <ul>
                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li>Aliquam tincidunt mauris eu risus.</li>
                        </ul>
                        <p><img class="img-fluid" src="${path}/resources/img/photo/photo-1499695867787-121ffb7950bf.jpg" alt="Example blog post alt"></p>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                            mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. </p>
                        <p>Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas
                            augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus </p>

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
                    </div>
                    <!-- comments-->
                    <div class="mt-5">
                        <h6 class="text-uppercase text-muted mb-4">댓글 2개</h6>
                        <!-- comment-->
                        <div class="d-flex mb-4 row">
                            <div class="col-lg-9">
                                <h5>idid111</h5>
                                <p class="text-uppercase text-sm text-muted"><i class="far fa-clock"></i>2022년 1월 2일 12:00 am</p>
                                <p class="text-muted">멋있습니다. 잘봤어요.</p>
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
                                <p class="text-muted">사진 너무 예뻐요!</p>
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
    </section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	