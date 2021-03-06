<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="URL" value="${pageContext.request.requestURL}" />




<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시판" name="title" />
</jsp:include>

<div class="container-fluid">
	<form id="searchCampsite" name="searchCampsite"
		action="${path }/searchList3" method="GET"
		enctype="multipart/form-data" autocomplete="off">
		<div class="row">
			<div class="col-lg-6 py-4 p-xl-5">
				<c:if test="${searchSite eq 'gnrlsite'}">
					<h2 class="mb-4">캠핑 - 캠핑장 검색</h2>
					<input type="hidden" class="class" name="searchSite"
						id="searchSite" type="text" value="일반야영장">
				</c:if>
				<c:if test="${searchSite eq 'autosite' }">
					<h2 class="mb-4">오토캠핑 - 캠핑장 검색</h2>
					<input type="hidden" class="class" name="searchSite"
						id="searchSite" type="text" value="자동차야영장">
				</c:if>
				<c:if test="${searchSite eq 'glampsite' }">
					<h2 class="mb-4">글램핑 - 캠핑장 검색</h2>
					<input type="hidden" class="class" name="searchSite"
						id="searchSite" type="text" value="글램핑">
				</c:if>
				<c:if test="${searchSite eq 'caravsite' }">
					<h2 class="mb-4">카라반 - 캠핑장 검색</h2>
					<input type="hidden" class="class" name="searchSite"
						id="searchSite" type="text" value="카라반">
				</c:if>
				<hr class="my-4">

				<div class="row">
					<div class="col-xl-4 col-md-6 mb-4">
						<label class="form-label" for="form_location">지역</label> <select
							class="selectpicker form-control" name="location" id="location"
							onchange="changesSiGunGu(this.value);" data-none-selected-text="">
							<option value="*">전체</option>
							<option value="서울시">서울시</option>
							<option value="경기도">경기도</option>
							<option value="인천시">인천시</option>
							<option value="강원도">강원도</option>
							<option value="제주도">제주도</option>
							<option value="대전시">대전시</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="부산시">부산시</option>
							<option value="울산시">울산시</option>
							<option value="경상남도">경상남도</option>
							<option value="대구시">대구시</option>
							<option value="경상북도">경상북도</option>
							<option value="광주시">광주시</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
						</select>
					</div>
					<div class="col-xl-4 col-md-6 mb-4">
						<label class="form-label" for="form_dates">일정</label>
						<div class="datepicker-container datepicker-container-left">
							<input class="form-control" type="text" name="bookingDate"
								id="form_dates" placeholder="">
						</div>
					</div>
					<div class="col-xl-4 col-md-6 mb-4">
						<label class="form-label" for="form_guests">인원수</label> <select
							class="selectpicker form-control" name="guests" id="form_guests"
							data-style="btn-selectpicker" title=" ">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
					<div class="col-xl-4 col-md-6 mb-4">
						<label class="form-label">가격</label>
						<div class="text-primary" id="slider-snap"></div>
						<div class="nouislider-values">
							<div class="min">
								최저 <span id="slider-snap-value-from"></span>원
							</div>
							<div class="max">
								최고 <span id="slider-snap-value-to"></span>원
							</div>
						</div>
						<input type="hidden" name="pricefrom" id="slider-snap-input-from"
							value="40000"> <input type="hidden" name="priceto"
							id="slider-snap-input-to" value="400000">
					</div>
					<div class="col-12 pb-4">
						<div class="collapse" id="moreFilters">
							<div class="filter-block">
								<h6 class="mb-3">지역</h6>
								<div class="row">
									<div class="col-xl-4 col-md-6 mb-4 mb-xl-0">
										<label class="form-label" for="form_neighbourhood">시군구</label>
										<select class="selectpicker form-control" name="neighbourhood"
											id="neighbourhood" data-live-search="false"
											data-selected-text-format="count &gt; 1"
											data-none-selected-text="">
											<option value="">전체</option>
										</select>
									</div>
									<div class="col-xl-8">
										<label class="form-label">입지 구분</label>
										<ul class="list-inline mt-xl-1 mb-0">
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_0"
														name="type" value="산"> <label
														class="form-check-label" for="type_0">산 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_1"
														name="type" value="숲"> <label
														class="form-check-label" for="type_1">숲 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_2"
														name="type" value="계곡"> <label
														class="form-check-label" for="type_2">계곡 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_3"
														name="type" value="도심"> <label
														class="form-check-label" for="type_3">도심 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_4"
														name="type" value="해변"> <label
														class="form-check-label" for="type_4">해변 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_5"
														name="type" value="섬"> <label
														class="form-check-label" for="type_5">섬 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_6"
														name="type" value="호수"> <label
														class="form-check-label" for="type_6">호수 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="type_7"
														name="type" value="강"> <label
														class="form-check-label" for="type_7">강 </label>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="filter-block">
								<h6 class="mb-3">부대시설</h6>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_0" name="amenities" value="전기"> <label
												class="form-check-label" for="amenities_0">전기 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_1" name="amenities" value="무선인터넷"> <label
												class="form-check-label" for="amenities_1">무선인터넷 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_2" name="amenities" value="장작판매"> <label
												class="form-check-label" for="amenities_2">장작판매 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_3" name="amenities" value="온수"> <label
												class="form-check-label" for="amenities_3">온수 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_4" name="amenities" value="놀이터"> <label
												class="form-check-label" for="amenities_4">놀이터 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_5" name="amenities" value="운동시설"> <label
												class="form-check-label" for="amenities_5">운동시설 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_6" name="amenities" value="물놀이장"> <label
												class="form-check-label" for="amenities_6">물놀이장 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_7" name="amenities" value="캠핑장비대여"> <label
												class="form-check-label" for="amenities_7">캠핑장비대여 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_8" name="amenities" value="체험프로그램"> <label
												class="form-check-label" for="amenities_8">체험프로그램 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_9" name="amenities" value="애완동물"> <label
												class="form-check-label" for="amenities_9">애완동물 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_10" name="amenities" value="트램폴린"> <label
												class="form-check-label" for="amenities_10">트렘폴린 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_11" name="amenities" value="산책로"> <label
												class="form-check-label" for="amenities_11">산책로 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_12" name="amenities" value="운동장"> <label
												class="form-check-label" for="amenities_12">운동장 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="amenities_13" name="amenities" value="마트.편의점"> <label
												class="form-check-label" for="amenities_13">마트.편의점 </label>
										</div>
									</li>
								</ul>
							</div>
							<div class="filter-block">
								<h6 class="mb-3">테마</h6>
								<ul class="list-inline mb-0">
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_0" name="facilities" value="일출명소"> <label
												class="form-check-label" for="facilities_0">일출명소 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_1" name="facilities" value="일몰명소"> <label
												class="form-check-label" for="facilities_1">일몰명소 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_2" name="facilities" value="봄꽃여행"> <label
												class="form-check-label" for="facilities_2">봄꽃여행 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_3" name="facilities" value="여름물놀이"> <label
												class="form-check-label" for="facilities_3">여름물놀이 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_4" name="facilities" value="가을단풍명소">
											<label class="form-check-label" for="facilities_4">가을단풍명소
											</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_5" name="facilities" value="겨울눈꽃명소">
											<label class="form-check-label" for="facilities_5">겨울눈꽃명소
											</label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_6" name="facilities" value="수상레저"> <label
												class="form-check-label" for="facilities_6">수상레저 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_7" name="facilities" value="항공레저"> <label
												class="form-check-label" for="facilities_7">항공레저 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_8" name="facilities" value="걷기길"> <label
												class="form-check-label" for="facilities_8">걷기길 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_9" name="facilities" value="스키"> <label
												class="form-check-label" for="facilities_9">스키 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_10" name="facilities"> <label
												class="form-check-label" for="facilities_10">낚시 </label>
										</div>
									</li>
									<li class="list-inline-item">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="facilities_11" name="facilities" value="액티비티"> <label
												class="form-check-label" for="facilities_11">액티비티 </label>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 mb-4 order-2 order-sm-1">
						<button class="btn btn-primary" type="submit">
							<i class="fas fa-search me-1"></i> 검색
						</button>
					</div>
					<div class="col-sm-6 mb-4 text-sm-end order-1 order-sm-2">
						<button class="btn btn-link btn-collapse ps-0 text-secondary"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#moreFilters" aria-expanded="false"
							aria-controls="moreFilters" data-expanded-text="간편 검색"
							data-collapsed-text="상세 검색">상세 검색</button>
					</div>
				</div>
	</form>
	<hr class="my-4">
	<div
		class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
		<div class="me-3">

			<p class="mb-3 mb-md-0">
				이주의 <strong>추천</strong> 캠핑장
			</p>

		</div>
	</div>
	<div class="row">
		<!-- place item-->

		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e33b1527bfe2abaf92">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/3339/thumb/thumb_720_0160R6RpZQBpHa9Bg4bfyyaz.jpg"
						alt="Modern, Well-Appointed Room" /> <a class="tile-link"
						href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">하늘구름길 캠핑장</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">일반야영장</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">296000</span> 원
							<!-- 127.3878958/35.6259446 -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- place item-->
		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e322f3375db4d89128">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/7207/thumb/thumb_720_2033sIlu0glLOoGvF7I6KWnd.jpg"
						alt="Cute Quirky Garden apt, NYC adjacent" /> <a
						class="tile-link" href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">제암산자연휴양림 야영장</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">일반야영장</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-gray-300"> </i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">385000</span> 원
							<!-- 126.9874841/34.6998159 -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- place item-->
		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e3a31e62979bf147c9">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/3178/thumb/thumb_720_1697bqTqASwaQe2mk1E6KdnY.jpg"
						alt="Modern Apt - Vibrant Neighborhood!" /> <a class="tile-link"
						href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">파래소캠핑장</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">일반야영장</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-gray-300"> </i><i
									class="fa fa-star text-gray-300"> </i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">88000</span> 원
							<!-- 129.0093185/35.5235475 -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- place item-->
		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e3503eb77d487e8082">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/100008/thumb/thumb_720_6107z9OQLZWk9dvIhx8OblHM.jpg"
						alt="Sunny Private Studio-Apartment" /> <a class="tile-link"
						href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">림스 글램핑</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">일반야영장,자동차야영장,카라반,글램핑</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-gray-300"> </i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">207000</span> 원
							<!-- 126.73735696299647/34.603342021569816 -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- place item-->
		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e39aa2eed0626e485d">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/2315/thumb/thumb_720_0564B5PCoR3N314rQjRbrkVH.jpg"
						alt="Mid-Century Modern Garden Paradise" /> <a class="tile-link"
						href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">오투캐빈</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">자동차야영장</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">67000</span> 원
							<!-- 128.4605077/37.8174819 -->
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- place item-->
		<div class="col-sm-6 mb-5 hover-animate"
			data-marker-id="59c0c8e39aa2edasd626e485d">
			<div class="card h-100 border-0 shadow">
				<div class="card-img-top overflow-hidden gradient-overlay">
					<img class="img-fluid"
						src="https://gocamping.or.kr/upload/camp/7556/thumb/thumb_720_1110jHXkVJit5Ipp3Rw0lx4Z.jpg"
						alt="Brooklyn Life, Easy to Manhattan" /> <a class="tile-link"
						href="detail-rooms.html"></a>
					
				</div>
				<div class="card-body d-flex align-items-center">
					<div class="w-100">
						<h6 class="card-title">
							<a class="text-decoration-none text-dark"
								href="detail-rooms.html">아르보리아파크 캠핑장</a>
						</h6>
						<div class="d-flex card-subtitle mb-3">
							<p class="flex-grow-1 mb-0 text-muted text-sm">일반야영장,카라반</p>
							<p class="flex-shrink-1 mb-0 card-stars text-xs text-end">
								<i class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-warning"></i><i
									class="fa fa-star text-gray-300"> </i>
							</p>
						</div>
						<p class="card-text text-muted">
							1박 <span class="h4 text-primary">251000</span> 원
							<!-- 126.5074352/37.6104188 -->
						</p>
					</div>
				</div>
			</div>
		</div>

		<nav aria-label="Page navigation example ">
			<ul
				class="pagination pagination-template d-flex justify-content-left ">

				<li class="page-item"><a class="page-link"
					href="${ path }/campsite/searchList?searchLoc=${searchLoc}&searchType=${searchType}&searchValue=${searchValue}&page=${ pageInfo.prvePage }">
						<i class="fa fa-angle-left "></i>
				</a></li>

				<c:forEach begin="${ pageInfo.startPage }"
					end="${ pageInfo.endPage }" step="1" varStatus="status">

					<c:if test="${ pageInfo.currentPage == status.current}">
						<li class="page-item active"><a class="page-link " href="# "><c:out
									value="${ status.current }" /></a></li>
					</c:if>
					<c:if test="${ pageInfo.currentPage != status.current}">
						<li class="page-item "><a class="page-link "
							href="${ path }/campsite/searchList?searchLoc=${searchLoc}&searchType=${searchType}&searchValue=${searchValue}&page=${ status.current }"><c:out
									value="${ status.current }" /></a></li>

					</c:if>
				</c:forEach>

				<li class="page-item "><a class="page-link "
					href="${ path }/campsite/searchList?searchLoc=${searchLoc}&searchType=${searchType}&searchValue=${searchValue}&page=${ pageInfo.nextPage }">
						<i class="fa fa-angle-right "></i>
				</a></li>

			</ul>
		</nav>

	</div>
	<div class="col-lg-6 map-side-lg pe-lg-0" style="padding-top: 30px">
		<div class="map-full shadow-left" id="categorySideMap"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55b6be4dd88e467de806ae5586aa2142"></script>
	</div>
</div>
</div>


<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
	<!-- Main block - menus, subscribe form-->
	<div class="py-3 bg-gray-200 text-muted">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div class="mb-3">
						<img
							src="${path}/resources/img/newphoto/camper_logo_text_removebg.png"
							alt="Directory logo">
					</div>
				</div>

				<div class="col-lg-6 col-md-6 mb-5 mt-3 mb-lg-0"
					style="text-align: center;">
					<ul class="list-inline">
						<li class="list-inline-item"><a class="text-muted"
							href="team.html">팀 소개</a></li>
						<li class="list-inline-item">|</li>
						<li class="list-inline-item"><a class="text-muted"
							href="knowledge-base.html">FAQ</a></li>
						<li class="list-inline-item">|</li>
						<li class="list-inline-item"><a class="text-muted" href="">개인정보처리방침</a></li>
						<li class="list-inline-item">|</li>
						<li class="list-inline-item"><a class="text-muted" href="">캠핑장
								등록안내</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-5 mt-3 mb-lg-0">
					<ul class="list-inline">
						<li class="list-inline-item"><a
							class="text-muted text-primary-hover" href="#" target="_blank"
							title="instagram"><i class="fab fa-instagram"></i></a></li>
						<li class="list-inline-item"><a
							class="text-muted text-primary-hover" href="#" target="_blank"
							title="github"><i class="fab fa-github"></i></a></li>
						<li class="list-inline-item"><a
							class="text-muted text-primary-hover" href="#" target="_blank"
							title="aws"><i class="fab fa-aws"></i></a></li>
						<li class="list-inline-item"><a
							class="text-muted text-primary-hover" href="#" target="_blank"
							title="app-store-ios"><i class="fab fa-app-store-ios"></i></a></li>
						<li class="list-inline-item"><a
							class="text-muted text-primary-hover" href="#" target="_blank"
							title="google-play"><i class="fab fa-google-play"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="py-3 bg-gray-200 text-muted">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<!--<h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>-->
					<p class="mb-3 sans-serif">
						서울 강남구 테헤란로14길 6 남도빌딩 2층, 3층, 4층 KH정보교육원 강남지원 <br>TEL:1544-9970&emsp;EMAIL:webmaster@campers.com
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Copyright section of the footer-->
	<div class="py-4 fw-light bg-gray-800 text-gray-300">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 text-center text-md-start">
					<p class="text-sm mb-md-0">&copy; 2021, Your company. All
						rights reserved.</p>
				</div>
				<div class="col-md-6">
					<ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
						<li class="list-inline-item"><img class="w-2rem"
							src="${path}/resources/img/visa.svg" alt="..."></li>
						<li class="list-inline-item"><img class="w-2rem"
							src="${path}/resources/img/mastercard.svg" alt="..."></li>
						<li class="list-inline-item"><img class="w-2rem"
							src="${path}/resources/img/paypal.svg" alt="..."></li>
						<li class="list-inline-item"><img class="w-2rem"
							src="${path}/resources/img/western-union.svg" alt="..."></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- JavaScript files-->
<!-- JavaScript files-->
<script>
        // ------------------------------------------------------- //
        //   Inject SVG Sprite - 
        //   see more here 
        //   https://css-tricks.com/ajaxing-svg-sprite/
        // ------------------------------------------------------ //
        function injectSvgSprite(path) {

            var ajax = new XMLHttpRequest();
            ajax.open("GET", path, true);
            ajax.send();
            ajax.onload = function(e) {
                var div = document.createElement("div");
                div.className = 'd-none';
                div.innerHTML = ajax.responseText;
                document.body.insertBefore(div, document.body.childNodes[0]);
            }
        }
        // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
        // use your own URL in production, please :)
        // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
        //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
        injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');
    </script>
<!-- jQuery-->
<script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script
	src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script
	src="${path}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script
	src="${path}/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script
	src="${path}/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="${path}/resources/vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>
        var basePath = ''
    </script>
<!-- Main Theme JS file    -->
<script src="${path}/resources/js/theme.js"></script>
<!-- Map-->
<!-- <script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
	integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
	crossorigin=""></script> -->

<script>
		var container = document.getElementById('categorySideMap');
		var options = {
			center: new kakao.maps.LatLng(36.9910113, 127.9259497),
			level: 3
		};

		var categorySideMap = new kakao.maps.Map(container, options);
		var positions = [
		    {
		        title: '하늘구름길 캠핑장', 
		        latlng: new kakao.maps.LatLng(35.6259446, 127.3878958)
		    },
		    {
		        title: '제암산자연휴양림 야영장', 
		        latlng: new kakao.maps.LatLng(34.6998159, 126.9874841)
		    },
		    {
		        title: '파래소캠핑장', 
		        latlng: new kakao.maps.LatLng(35.5235475, 129.0093185)
		    },
		    {
		        title: '림스 글램핑',
		        latlng: new kakao.maps.LatLng(34.603342021569816, 126.73735696299647)
		    },
		    {
		        title: '오투캐빈',
		        latlng: new kakao.maps.LatLng(37.8174819, 128.4605077)
		    },
		    {
		        title: '아르보리아파크 캠핑장',
		        latlng: new kakao.maps.LatLng(37.6104188,126.5074352)
		    }
		];
		
		var bounds = new kakao.maps.LatLngBounds();  
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		for (var i = 0; i < positions.length; i ++) {
		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: categorySideMap, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    marker.setMap(categorySideMap);
		    bounds.extend(positions[i].latlng);
		}
		
		function setBounds() {
		    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
		    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
		    categorySideMap.setBounds(bounds);
		}

	</script>
<!-- Available tile layers-->
<script src="${path}/resources/js/map-layers.js">
    </script>
<script src="${path}/resources/js/map-category.js">
    </script>
<script>
        createListingsMap({
            mapId: 'categorySideMap',
            jsonFile: 'js/rooms-geojson.json',
            mapPopupType: 'rental',
            useTextIcon: true,
            //tileLayer: tileLayers[5]  - uncomment for a different map styling
        });
    </script>
<!-- Daterange picker-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js">
    </script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js">
    </script>
<script src="${path}/resources/js/datepicker-category.js">
    </script>
<!-- Price Slider-->
<script src="${path}/resources/vendor/nouislider/nouislider.min.js"></script>
<script>
        var snapSlider = document.getElementById('slider-snap');

        noUiSlider.create(snapSlider, {
            start: [40000, 400000],
            snap: false,
            connect: true,
            step: 10000,
            range: {
                'min': 40000,
                'max': 400000
            }
        });
        var snapValues = [
            document.getElementById('slider-snap-value-from'),
            document.getElementById('slider-snap-value-to')
        ];
        var inputValues = [
            document.getElementById('slider-snap-input-from'),
            document.getElementById('slider-snap-input-to')
        ];
        snapSlider.noUiSlider.on('update', function(values, handle) {
            snapValues[handle].innerHTML = values[handle];
            inputValues[handle].value = values[handle];
        })
    </script>

<script>
 <!-- type checkbox -->
 var checkType = new Array();
 var num = null;
 var vnum = null;
 <!-- 지역따라 시군구 바꾸기 -->
 
function changesSiGunGu(value){
	
	var select = document.getElementById("location");
 //   var value = select.options[select.selectedIndex].value;

    alert(value);
	
    if(value == "") { // 대분류 value에 따른 소분류 array
        num = ["전체"];
        vnum = [""];
    }else if(value == "서울시") {
        num = ["전체","강동구","강북구","구로구","노원구","도봉구","마포구","서초구","성동구","은평구","중랑구"];
        vnum = ["","강동구","강북구","구로구","노원구","도봉구","마포구","서초구","성동구","은평구","중랑구"];
    }else if(value == "경기도") {
        num = ["전체","가평군","고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","양평군","여주시","연천군","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시"];
        vnum = ["","가평군","고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","양평군","여주시","연천군","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시"];
    }else if(value == "인천시") {
        num = ["전체","강화군","계양구","남동구","서구","연수구","옹진군","중구"];
        vnum = ["","강화군","계양구","남동구","서구","연수구","옹진군","중구"];
    }else if(value == "강원도") {
        num = ["전체","강릉시","고성군","동해시","삼척시","속초시","양구군","양양군","영월군","원주시","인제군","정선군","철원군","춘천시","태백시","펑창군","홍천군","화천군","횡성군"];
        vnum = ["","강릉시","고성군","동해시","삼척시","속초시","양구군","양양군","영월군","원주시","인제군","정선군","철원군","춘천시","태백시","펑창군","홍천군","화천군","횡성군"];
    }else if(value == "제주도") {
        num = ["전체","서귀포시","제주시"];
        vnum = ["","서귀포시","제주시"];
    }else if(value == "대전시") {
        num = ["전체","대덕구","동구","서구","유성구","중구"];
        vnum = ["","대덕구","동구","서구","유성구","중구"];
    }else if(value == "충청북도") {
        num = ["전체","괴산군","단양군","보은군","영동군","옥천군","음성군","제천시","증평군","진천군","청주시","충주시"];
        vnum = ["","괴산군","단양군","보은군","영동군","옥천군","음성군","제천시","증평군","진천군","청주시","충주시"];
    }else if(value == "충청남도") {
        num = ["전체","공주시","금산군","논산시","당진시","보령시","부여군","서산시","서천군","아산시","예산군","천안시","청양군","태안군","홍성군"];
        vnum = ["","공주시","금산군","논산시","당진시","보령시","부여군","서산시","서천군","아산시","예산군","천안시","청양군","태안군","홍성군"];
    }else if(value == "부산시") {
        num = ["전체","강서구","기장군","북구","사상구"];
        vnum = ["","강서구","기장군","북구","사상구"];
    }else if(value == "울산시") {
        num = ["전체","동구","북구","울주군","중구"];
        vnum = ["","동구","북구","울주군","중구"];
    }else if(value == "경상남도") {
        num = ["전체","거제시","거창군","고성군","김해시","남해군","밀양시","사천시","산청군","양산시","의령군","진주시","창녕군","창원시","통영시","하동군","함안군","함양군","합천군"];
        vnum = ["","거제시","거창군","고성군","김해시","남해군","밀양시","사천시","산청군","양산시","의령군","진주시","창녕군","창원시","통영시","하동군","함안군","함양군","합천군"];
    }else if(value == "대구시") {
        num = ["전체","달서구","달성군","동구","북구","수성구"];
        vnum = ["","달서구","달성군","동구","북구","수성구"];
    }else if(value == "경상북도") {
        num = ["전체","경산시","경주시","고령군","구미시","군위군","김천시","문경시","봉화군","상주시","성주군","안동시","영덕군","영양군","영주시","영천시","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군","포항시"];
        vnum = ["","경산시","경주시","고령군","구미시","군위군","김천시","문경시","봉화군","상주시","성주군","안동시","영덕군","영양군","영주시","영천시","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군","포항시"];
    }else if(value == "광주시") {
        num = ["전체","광산구","남구","북구","서구"];
        vnum = ["","광산구","남구","북구","서구"];
    }else if(value == "전라북도") {
        num = ["전체","고창군","군산시","김제시","남원시","무주군","부안군","순창군","완주군","익산시","임실군","장수군","전주시","정읍시","진안군"];
        vnum = ["","고창군","군산시","김제시","남원시","무주군","부안군","순창군","완주군","익산시","임실군","장수군","전주시","정읍시","진안군"];
    }else if(value == "전라남도") {
        num = ["전체","강진군","고흥군","곡성군","광양시","구례군","나주시","담양군","무안군","보성군","순천시","신안군","여수시","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
        vnum = ["","강진군","고흥군","곡성군","광양시","구례군","나주시","담양군","무안군","보성군","순천시","신안군","여수시","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
    }

    var selectObj = document.getElementById("neighbourhood"); 
    if ( selectObj == null ) 
    	return; // 객체가 존재하지 않으면 취소
   
    selectObj.options.length = 0; // 길이를 0으로 하면 초기화
    $('#neighbourhood').empty();  // 소분류 카테고리를 비움
    
    
    for(var count = 0; count < num.length; count++){ // 만든 num과 vnum 중 선택된 대분류 value에 해당하는 것을 소분류 select박스에 삽입                 
        var option = $("<option value='"+vnum[count]+"'>"+num[count]+"</option>");
        $('#neighbourhood').append(option);
    }
}

</script>


</body>

</html>