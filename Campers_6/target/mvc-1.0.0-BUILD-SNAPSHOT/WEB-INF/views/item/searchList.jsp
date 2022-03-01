<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="캠핑용품커머스 | 검색결과" name="title"/>
</jsp:include>

	<!-- Start Content-->
    <div class="container-xl">
        <div class="mt-sm-4 container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <h3 class="page-title">캠핑용품 검색결과</h3>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-sm-4 app-search dropdown m-md-auto my-md-5">
                                    <form>
                                        <div class="input-group">
                                            <!---->
                                            <input type="text" class="form-control" placeholder="" id="top-search" value="텐트">
                                            <span class="mdi mdi-magnify search-icon"></span>
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit">Search</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <div class="row">
                                    <div class="col-md-2 py-4">
                                        <p>&nbsp;&nbsp;검색결과 13개</p>
                                    </div>
                                    <div class="col-md-2 col-lg-2 d-flex align-items-center form-group no-divider">
                                        <select class="selectpicker GmarketSansMedium" title="검색필터" data-style="btn-form-control">
                                        <option value="type_0">낮은가격순</option>
                                        <option value="type_1">높은가격순</option>
                                    </select>
                                    </div>

                                </div>
                                <!--<table class="table table-centered w-100 dt-responsive nowrap"  id="products-datatable">-->
                                <table class="table table-centered w-100 dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th class="all" style="width: 20px;">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                    <label class="custom-control-label" for="customCheck1">&nbsp;</label>
                                                </div>
                                            </th>
                                            <th class="all" style="width: 80px;"></th>
                                            <th>상품</th>
                                            <th>가격</th>
                                            <th>판매처</th>
                                            <th>카테고리</th>
                                            <th>브랜드</th>
                                            <th>제조사</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                    <label class="custom-control-label" for="customCheck2">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td>
                                                <img src="${path}/resources/img/newphoto/item_1.png" alt="contact-img" title="contact-img" class="rounded mr-3" height="80" />
                                            </td>
                                            <td>
                                                <p class="m-0 d-inline-block align-middle font-16">
                                                    <a href="" class="text-body">크레이지 아이디어 팝업 텐트</a>
                                                    <br/>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                </p>
                                            </td>
                                            <td>
                                                <span class="badge badge-success">63,900원</span>
                                            </td>
                                            <td>
                                                코스트코
                                            </td>
                                            <td>
                                                스포츠/레저 > 캠핑 > 텐트
                                            </td>
                                            <td>
                                                브랜드
                                            </td>
                                            <td>
                                                제조사
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck3">
                                                    <label class="custom-control-label" for="customCheck3">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td>
                                                <img src="${path}/resources/img/newphoto/item_2.png" alt="contact-img" title="contact-img" class="rounded mr-3" height="80" />
                                            </td>
                                            <td>
                                                <p class="m-0 d-inline-block align-middle font-16">
                                                    <a href="apps-ecommerce-products-details.html" class="text-body">노르디스크 비무르 5.6 텐트</a>
                                                    <br/>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star-half"></span>
                                                </p>
                                            </td>
                                            <td>
                                                <span class="badge badge-success">1,140,000원</span>
                                            </td>
                                            <td>
                                                캠핑리스트
                                            </td>
                                            <td>
                                                스포츠/레저 > 캠핑 > 텐트
                                            </td>
                                            <td>
                                                노르디스크
                                            </td>
                                            <td>
                                                제조사
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                    <label class="custom-control-label" for="customCheck4">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td>
                                                <img src="${path}/resources/img/newphoto/item_3.png" alt="contact-img" title="contact-img" class="rounded mr-3" height="80" width="80" />

                                            </td>
                                            <td>
                                                <p class="m-0 d-inline-block align-middle font-16">
                                                    <a href="apps-ecommerce-products-details.html" class="text-body">Branded Wooden Chair</a>
                                                    <br/>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star-outline"></span>
                                                </p>
                                            </td>
                                            <td>
                                                <span class="badge badge-success">300,000원</span>
                                            </td>
                                            <td>
                                                판매처
                                            </td>
                                            <td>
                                                스포츠/레저 > 캠핑 > 텐트
                                            </td>
                                            <td>
                                                브랜드
                                            </td>
                                            <td>
                                                제조사
                                            </td>
                                            <!--<td>
                                            <span class="badge badge-success">Active</span>
                                        </td>-->

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck5">
                                                    <label class="custom-control-label" for="customCheck5">&nbsp;</label>
                                                </div>
                                            </td>
                                            <td>
                                                <img src="${path}/resources/img/newphoto/item_4.png" alt="contact-img" title="contact-img" class="rounded mr-3" height="80" />
                                            </td>
                                            <td>
                                                <p class="m-0 d-inline-block align-middle font-16">
                                                    <a href="apps-ecommerce-products-details.html" class="text-body">Designer Awesome Chair</a>
                                                    <br/>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star"></span>
                                                    <span class="text-warning mdi mdi-star-half"></span>
                                                    <span class="text-warning mdi mdi-star-outline"></span>
                                                </p>
                                            </td>
                                            <td>
                                                <span class="badge badge-success">300,000원</span>
                                            </td>
                                            <td>
                                                판매처
                                            </td>
                                            <td>
                                                스포츠/레저 > 캠핑 > 텐트
                                            </td>
                                            <td>
                                                브랜드
                                            </td>
                                            <td>
                                                제조사
                                            </td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- end card-body-->
                    </div>
                    <!-- end card-->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
    </div>
    <!-- container -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>