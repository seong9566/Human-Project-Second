<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>
<input id="companyId" type="hidden" value="${companyInfo.companyId}">
<input id="jobPostingBoardId" type="hidden"
	value="${jobPostingPS.jobPostingBoardId}">
<div class="container">
	<section id="about" class="about">
		<div class="row">
			<div class="col-lg-4" data-aos="fade-right">
				
				<div id="image_container">
					<img id="oldImg" src="/img/${companyInfo.companyPicture}">
				</div>
			</div>
			<div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
				<h2 style="margin-left: 80px">회사 정보</h2>

				<div class="row">
					<div class="col-lg-6"></div>
					<div class="col-lg-6">
						<ul>
							<li style="margin-bottom: 10px"><i
								class="bi bi-chevron-right"></i> <strong>회사 이름 :</strong> <span>${companyInfo.companyName}</span></li>
							<li style="margin-bottom: 10px"><i
								class="bi bi-chevron-right"></i> <strong> 전화번호 :</strong> <span>${companyInfo.companyPhoneNumber}</span></li>
							<li style="margin-bottom: 10px"><i
								class="bi bi-chevron-right"></i> <strong>회사 이메일 :</strong> <span>
									${companyInfo.companyEmail}</span></li>
							<li style="margin-bottom: 10px"><i
								class="bi bi-chevron-right"></i> <strong>회사 주소:</strong>
								 <span>${address.roadJibunAddr}${address.detailAddress}</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container mt-3" style="border: 3px solid #000000">
		<h2>현재 채용중인 공고</h2>
		<div class="row row-cols-1 row-cols-md-3 g-4">
					<div id="box1" class="col">
						<div class="card h-100">
							<img src="/image/농심.png" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>
					<div id="box2" class="col">
						<div class="card h-100">
							<img src="/image/농심.png" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>
					<div id="box3" class="col">
						<div class="card h-100">
							<img src="/image/농심.png" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>
				</div>

		</div>
		<c:choose>
				<c:when test="${empty sessionScope.subscribe}">
					<div class="btn-update">
						<button id="btnSub" style="float:right; margin:10px 5px; background-color: rgba(0, 195, 98, 255); border: none;" type="button" class="btn btn-primary" value="${companyInfo.companyId}">구독하기</button>
					</div>
				</c:when>
				<c:otherwise>
					<c:set var="loop_flag" value="false" />
					<c:forEach var="sub" items="${sessionScope.subscribe}">
						<c:if test="${not loop_flag}">
							<c:if test="${sub.companyId == companyInfo.companyId}">
								<div class="btn-update">
									<button id="btnSub" type="button" class="btn btn-primary" style="float:right; margin:10px 5px; background-color: rgba(0, 195, 98, 255); border: none;"
										value="${sub.subscribeId}">구독취소</button>
								</div>
								<c:set var="loop_flag" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
					<c:if test="${not loop_flag}">
						<div class="btn-update">
							<button id="btnSub" type="button" class="btn btn-primary" value="${companyInfo.companyId}">구독하기</button>
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
	</div>
		<script src="/js/subscribe.js"></script>

		<%@ include file="../layout/footer.jsp" %>