<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="후기게시글 수정" name="title"/>
</jsp:include>

<section class="hero-home dark-overlay mb-5"><img class="bg-image" src="${path}/resources/img/newphoto/reviewPost-bg.jpg" alt="">
        <div class="container py-7">
            <div class="overlay-content text-center text-white">
                <h1 class="display-3 text-serif fw-bold text-shadow mb-0">Write a Review Post</h1>
            </div>
        </div>
    </section>


    <!-- Start Content-->
    <div class="container-fluid">

        <div class="col-lg-7" style="margin: auto;">
            <div class="card">
                <div class="card-body">

                    <!-- end nav-->
                    <div class="tab-content">
                        <div class="tab-pane show active" id="horizontal-form-preview">
                            <div class="form-horizontal">
                                <form>
                                    <div class="form-group row mb-3">
                                        <label for="example-readonly" class="col-3 col-form-label">No.</label>
                                        <div class="col-9">
                                            <input type="text" id="example-readonly" class="form-control" readonly="" value="1">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-3">
                                        <label for="example-readonly2" class="col-3 col-form-label">Writer</label>
                                        <div class="col-9">
                                            <input type="text" id="example-readonly2" class="form-control" readonly="" value="test111">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-3">
                                        <label for="simpleinput" class="col-3 col-form-label">Title</label>
                                        <div class="col-9">
                                            <input type="text" id="simpleinput" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-3">
                                        <label for="thumbnail" class="col-3 col-form-label">
                                            Thumbnail Image</label>
                                        <div class="col-9">
                                            <input type="file" id="thumbnail" class="form-control-file">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-3">
                                        <label for="example-fileinput" class="col-3 col-form-label">File</label>
                                        <div class="col-9">
                                            <input type="file" id="example-fileinput" class="form-control-file">
                                        </div>
                                    </div>

                                    <div class="form-group row mb-3">
                                        <label for="example-fileinput" class="col-3 col-form-label">Contents</label>
                                        <!-- basic summernote-->
                                        <div id="summernote-basic"></div>
                                        <!-- end preview-->
                                    </div>
                                </form>
                                <!-- end card-body -->
                                <br>
                                <br>
                                <div class="form-group mb-0 justify-content-end">
                                    <div style="text-align: center;">
                                        <button type="submit" class="btn btn-primary">수정</button>
                                        <button type="submit" class="btn btn-primary">목록으로</button>
                                    </div>
                                </div>
                            </div>
                            <!-- end preview-->
                        </div>
                        <!-- end tab-content-->
                    </div>
                    <!-- end card-body -->
                </div>
                <!-- end card -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- content -->


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
