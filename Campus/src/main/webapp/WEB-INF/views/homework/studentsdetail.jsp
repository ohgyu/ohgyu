<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/module/header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="wrapper">
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
			<table class="table">
				<tr>
					<td style="color: #444; background-color: #f8f9fa;">
						<h1>${homework.hwName}</h1>
						<br>
						<h2>기한 : 
							<fmt:formatDate value="${homework.hwStartDate}" pattern="yyyy-MM-dd HH:mm" /> ~ 
							<fmt:formatDate value="${homework.hwEndDate}" pattern="yyyy-MM-dd HH:mm" />
						</h2>
						<br>
						${homework.hwDesc}
						<br><br>
						<ul>
							<li>제출 마감일을 꼭 지켜주세요.</li>
							<li>파일명은 학번_이름_과제명 형식으로 저장해주세요.</li>
							<li>내용을 간단히 요약해서 제출란에 기입 바랍니다.</li>
						</ul>
					</td>
				</tr>

				<tr>
					<td>
						<form method="post" action="/campus/homework/submit"
							enctype="multipart/form-data"
							onsubmit="return confirm('과제를 제출하시겠습니까?');">

							<div class="text-right">
								<button type="submit" class="btn btn-info" style="margin-right: 10px;">제출</button>
								<a href="/campus/homeworklist" class="btn btn-secondary">목록</a>
							</div>
							<br>

							<input type="hidden" name="hwNo" value="${homework.hwNo}" />

							<textarea name="hsDetail" class="form-control mb-2" rows="6"
								placeholder="내용을 입력하세요">${submitDetail}</textarea>

							<div class="mb-2">
								<label class="btn btn-outline-secondary">
									파일선택
									<input type="file" name="uploadFile" id="uploadFile" hidden>
								</label>
								<span id="file-name">선택된 파일이 없습니다.</span>
							</div>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</section>
</div>

<script>
	document.getElementById('uploadFile').addEventListener('change', function () {
		const fileName = this.files.length > 0 ? this.files[0].name : '선택된 파일이 없습니다.';
		document.getElementById('file-name').textContent = fileName;
	});
</script>
