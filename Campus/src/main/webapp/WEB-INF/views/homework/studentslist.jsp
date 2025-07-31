<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/module/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Content Header (Page header) -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">과제제출</h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active">과제제출</li>
				</ol>
			</div>
		</div>
	</div>
</div>

<!-- Main content -->
<section class="content">
	<div class="container-fluid">

		<!-- 검색창 -->
		<div class="d-flex justify-content-end mb-3">
			<form method="get" class="form-inline">
				<input type="text" name="keyword" class="form-control mr-2"
					placeholder="제목을 입력해주세요" value="${pageMaker.keyword}">
				<button type="submit" class="btn btn-primary">
					<i class="fas fa-search"></i>
				</button>
			</form>
		</div>

		<!-- 과제 목록 테이블 -->
		<div class="card">
			<div class="card-body table-responsive p-0">
				<table class="table table-hover text-center">
					<thead class="thead-light">
						<tr>
							<th>주차</th>
							<th>제목</th>
							<th>기간</th>
							<th>제출여부</th>
							<th>진행</th>
							<th>평가</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="homework" items="${homeworklist}">
							<tr>
								<td>${homework.hwNo}</td>
								<td><a href="homeworklist/detail.do?hwNo=${homework.hwNo}">
										${homework.hwName} </a></td>
								<td><fmt:formatDate value="${homework.hwStartDate}"
										pattern="yyyy-MM-dd HH:mm" /> ~ <fmt:formatDate
										value="${homework.hwEndDate}" pattern="yyyy-MM-dd HH:mm" /></td>
								<td><span class="badge badge-success">제출</span></td>
								<td><span class="badge badge-secondary">종료</span></td>
								<td>평가완료</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- 페이징 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center mt-4">
				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link"
						href="?page=${pageMaker.startPage - 1}&keyword=${pageMaker.keyword}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>

				<c:forEach var="i" begin="${pageMaker.startPage}"
					end="${pageMaker.endPage}">
					<li class="page-item ${i == pageMaker.page ? 'active' : ''}">
						<a class="page-link"
						href="?page=${i}&keyword=${pageMaker.keyword}">${i}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link"
						href="?page=${pageMaker.endPage + 1}&keyword=${pageMaker.keyword}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</c:if>
			</ul>
		</nav>

	</div>
</section>

</body>
</html>