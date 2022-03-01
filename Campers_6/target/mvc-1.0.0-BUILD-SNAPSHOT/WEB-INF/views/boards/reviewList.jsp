<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="후기게시판 목록" name="title"/>
</jsp:include>
	
	<section class="hero-home dark-overlay mb-5"><img class="bg-image" src="${path}/resources/img/newphoto/blog-bg.jpg" alt="">
        <div class="container py-7">
            <div class="overlay-content text-center text-white">
                <h1 class="display-3 text-serif fw-bold text-shadow mb-0">Review Board</h1>
            </div>
        </div>
    </section>
    <section class="py-6">
        <div class="container" style="margin-top: -5rem;">
            <div class="row" style="padding-left: 50rem; ">
                <div class="col-lg-3 d-flex align-items-center form-group no-divider ">
                    <select class="selectpicker form-control " title="전체 " data-style="btn-form-control " style="border: 1px solid #ced4da; ">
                        <option value="city_0 ">작성자</option>
                        <option value="city_1 ">제목</option>
                        <option value="city_2 ">내용</option>
                    </select>
                </div>
                <div class="input-label-absolute input-label-absolute-left w-50 mb-5 mt-5 ">
                    <label class="label-absolute ms-1 " for="searchcollapsed_search "><i class="fa fa-search "></i><span class="sr-only ">What are you looking for?</span></label>
                    <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200 " id="searchcollapsed_search " placeholder="Search " aria-label="Search " type="search ">
                </div>
                <div class="col-lg-3 d-flex align-items-center form-group no-divider ">
                    <button type="submit" class="btn btn-primary" onclick="location.href = 'post-write.html';">글쓰기</button>
                </div>
            </div>

            <div class="row mb-5 ">
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="${path}/resources/img/newphoto/blog1.jpg" alt="... " /></a>
                        <div class="card-body ">
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">좋았습니다.</a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>1월 16일, 2022</p>
                            <p class="my-2 text-muted text-sm ">굿굿굿...</p><a class="btn btn-link ps-0 " href="post.html ">더보기<i class="fa fa-long-arrow-alt-right ms-2 "></i></a>
                        </div>
                    </div>
                </div>
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="${path}/resources/img/newphoto/blog2.jpg" alt="... " /></a>
                        <div class="card-body ">
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">카누글램핑 최고에요</a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>1월 1일, 2022</p>
                            <p class="my-2 text-muted text-sm ">카누 n번째 방문인데...</p><a class="btn btn-link ps-0 " href="post.html ">더보기<i class="fa fa-long-arrow-alt-right ms-2 "></i></a>
                        </div>
                    </div>
                </div>
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="${path}/resources/img/newphoto/blog3.jpg" alt="... " /></a>
                        <div class="card-body ">
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">바XXX 나왔습니다</a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>12월 29일, 2021</p>
                            <p class="my-2 text-muted text-sm ">관리 소홀, 벌레, 최악...</p><a class="btn btn-link ps-0 " href="post.html ">더보기<i class="fa fa-long-arrow-alt-right ms-2 "></i></a>
                        </div>
                    </div>
                </div>
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="${path}/resources/img/photo/photo-1499695867787-121ffb7950bf.jpg " alt="... " /></a>
                        <div class="card-body "><a class="text-uppercase text-muted text-sm letter-spacing-2 " href="# ">Living </a>
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">Pellentesque habitant morbi          </a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>January 16, 2016</p>
                            <p class="my-2 text-muted text-sm ">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestib...</p><a class="btn btn-link ps-0 " href="post.html ">Read more<i class="fa fa-long-arrow-alt-right
            ms-2 "></i></a>
                        </div>
                    </div>
                </div>
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="${path}/resources/img/photo/photo-1495562569060-2eec283d3391.jpg " alt="... " /></a>
                        <div class="card-body "><a class="text-uppercase text-muted text-sm letter-spacing-2 " href="# ">Travel </a>
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">10 Free things to do in Venice          </a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>January 16, 2016</p>
                            <p class="my-2 text-muted text-sm ">Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Mauris placerat eleif...</p><a class="btn btn-link ps-0 " href="post.html ">Read more<i class="fa fa-long-arrow-alt-right
            ms-2 "></i></a>
                        </div>
                    </div>
                </div>
                <!-- blog item-->
                <div class="col-lg-4 col-sm-6 mb-4 hover-animate ">
                    <div class="card shadow border-0 h-100 ">
                        <a href="post.html "><img class="img-fluid card-img-top " src="img/photo/photo-1514890547357-a9ee288728e0.jpg " alt="... " /></a>
                        <div class="card-body "><a class="text-uppercase text-muted text-sm letter-spacing-2 " href="# ">Guides </a>
                            <h5 class="my-2 "><a class="text-dark " href="post.html ">Best of this year's Biennale          </a></h5>
                            <p class="text-gray-500 text-sm my-3 "><i class="far fa-clock me-2 "></i>January 16, 2016</p>
                            <p class="my-2 text-muted text-sm ">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestib...</p><a class="btn btn-link ps-0 " href="post.html ">Read more<i class="fa fa-long-arrow-alt-right
            ms-2 "></i></a>
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
    </section>
	

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	
	