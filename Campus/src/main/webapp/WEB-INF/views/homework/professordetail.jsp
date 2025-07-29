<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/module/header.jsp"%>
<div class="wrapper">

	<!-- Preloader -->
	<div
		class="preloader flex-column justify-content-center align-items-center">
		<img class="animation__shake"
			src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/Camp_usLogo.png"
			alt="Camp_usLogo" height="120" width="240">
	</div>

	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="index3.html" class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">Contact</a></li>
		</ul>

		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Navbar Search -->
			<li class="nav-item"><a class="nav-link"
				data-widget="navbar-search" href="#" role="button"> <i
					class="fas fa-search"></i>
			</a>
				<div class="navbar-search-block">
					<form class="form-inline">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
								<button class="btn btn-navbar" type="button"
									data-widget="navbar-search">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
					</form>
				</div></li>

			<!-- Messages Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
					<span class="badge badge-danger navbar-badge">3</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
								class="img-size-50 mr-3 img-circle">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Brad Diesel <span class="float-right text-sm text-danger"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">Call me whenever you can...</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
								class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									John Pierce <span class="float-right text-sm text-muted"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">I got your message bro</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <!-- Message Start -->
						<div class="media">
							<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
								class="img-size-50 img-circle mr-3">
							<div class="media-body">
								<h3 class="dropdown-item-title">
									Nora Silvester <span class="float-right text-sm text-warning"><i
										class="fas fa-star"></i></span>
								</h3>
								<p class="text-sm">The subject goes here</p>
								<p class="text-sm text-muted">
									<i class="far fa-clock mr-1"></i> 4 Hours Ago
								</p>
							</div>
						</div> <!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All
						Messages</a>
				</div></li>
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
					class="badge badge-warning navbar-badge">15</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i
						class="fas fa-envelope mr-2"></i> 4 new messages <span
						class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
						8 friend requests <span class="float-right text-muted text-sm">12
							hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
						3 new reports <span class="float-right text-muted text-sm">2
							days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All
						Notifications</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				data-widget="fullscreen" href="#" role="button"> <i
					class="fas fa-expand-arrows-alt"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				data-widget="control-sidebar" data-controlsidebar-slide="true"
				href="#" role="button"> <i class="fas fa-th-large"></i>
			</a></li>
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-white-primary elevation-4">
		<!-- Brand Logo -->
		<a href="" class="brand-link"> <img
			src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/Camp_usLogo.png"
			alt="camp_us Logo" class="brand-image custom-logo" />
		</a>



		<!-- SidebarSearch Form -->


		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item"><a href="" class="nav-link"> <span
						class="nav-icon custom-img-icon"></span> &nbsp;&nbsp;&nbsp;&nbsp;
						<p class="fas">HOME</p>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fas gang-img-icon"></i>
						<p class="fas">
							&nbsp; 강의실 <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="./index.html" class="nav-link">
								<i class="far fas nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;강의계획서</p>
						</a></li>
						<li class="nav-item"><a href="./index2.html" class="nav-link">
								<i class="far fas nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;공지사항</p>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <i
								class="far fas nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;실시간 강의</p>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <i
								class="far nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;온라인 강의</p>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <i
								class="far nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;출결</p>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <i
								class="far nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;자료실</p>
						</a></li>
						<li class="nav-item"><a href="" class="nav-link"> <i
								class="far nav-icon"></i>
								<p>&nbsp;&nbsp;&nbsp;과제제출</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fas pro-img-icon"></i>
						<p class="fas">
							&nbsp; 프로젝트 <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="./index.html" class="nav-link">
								<i class="far nav-icon"></i>
								<p>팀 목록</p>
						</a></li>
						<li class="nav-item"><a href="./index2.html" class="nav-link">
								<i class="far fas nav-icon"></i>
								<p>로드맵</p>
						</a></li>
					</ul></li>

				<li class="nav-item"><a href="pages/widgets.html"
					class="nav-link"> <i class="nav-icon fas post-img-icon"></i>
						<p class="fas">&nbsp; 게시판</p>
				</a></li>
				<li class="nav-item"><a href="pages/widgets.html"
					class="nav-link"> <i class="nav-icon fas cal-img-icon"></i>
						<p class="fas">&nbsp; 캘린더</p>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fas mes-img-icon"></i>
						<p class="fas">
							&nbsp; 커뮤니티 <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="./index.html" class="nav-link">
								<i class="far nav-icon"></i>
								<p>공지사항</p>
						</a></li>
						<li class="nav-item"><a href="./index2.html" class="nav-link">
								<i class="far nav-icon"></i>
								<p>질의응답</p>
						</a></li>
					</ul></li>
		</nav>
		<!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>

	<div class="content-wrapper">
  <section class="content-header">
    <div class="container-fluid">
      <h1>과제 제출</h1>
    </div>
  </section>

  <section class="content">
    <div class="container-fluid">

      <!-- 과제 정보 -->
      <div class="card">
        <div class="card-body">
          <h4>[7주차] 7주차 과제입니다.</h4>
          <p><strong>기간:</strong> 2025-07-25 16:00 ~ 2025-07-31 23:59</p>
          <p>각 조는 택 1 주제를 선택하여 찬성/반대 중 하나의 입장을 정하고, 논리적 근거를 바탕으로 토론 준비<br>
            팀원 간 역할 분담 (서론/논점 정리, 주장, 반론 대응 등) 필수<br>
            토론 직후 개인별로 간단한 자기평가서(자유양식, A4 1장 내외) 제출
          </p>
        </div>
      </div>

      <!-- 제출 목록 -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">제출 목록</h3>
        </div>
        <div class="card-body">
          <table class="table table-bordered text-center">
            <thead>
              <tr>
                <th>No.</th>
                <th>제목</th>
                <th>제출자</th>
                <th>제출일자</th>
                <th>첨부파일</th>
                <th>제출여부</th>
                <th>평가여부</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><a href="#" onclick="openDetailPopup('1')">7주차 과제입니다.</a></td>
                <td>김민주</td>
                <td>2025-07-30 23:00</td>
                <td><i class="fas fa-paperclip"></i></td>
                <td><span class="badge bg-success">제출</span></td>
                <td><span class="badge bg-success">완료</span></td>
              </tr>
              <tr>
                <td>2</td>
                <td><a href="#" onclick="openDetailPopup('2')">과제 제출 합니다.</a></td>
                <td>윤용선</td>
                <td>2025-07-30 23:50</td>
                <td><i class="fas fa-paperclip"></i></td>
                <td><span class="badge bg-success">제출</span></td>
                <td><span class="badge bg-success">완료</span></td>
              </tr>
              <tr>
                <td>3</td>
                <td><a href="#" onclick="openDetailPopup('3')">20191396 김원희 과제 제출합니다.</a></td>
                <td>김원희</td>
                <td>2025-07-31 02:30</td>
                <td><i class="fas fa-paperclip"></i></td>
                <td><span class="badge bg-success">제출</span></td>
                <td><span class="badge bg-success">완료</span></td>
              </tr>
              <tr>
                <td>4</td>
                <td><a href="#" onclick="openDetailPopup('4')">과제 제출</a></td>
                <td>김선범</td>
                <td>2025-07-31 03:50</td>
                <td><i class="fas fa-paperclip"></i></td>
                <td><span class="badge bg-success">제출</span></td>
                <td><span class="badge bg-success">완료</span></td>
              </tr>
              <tr>
                <td>5</td>
                <td><a href="#" onclick="openDetailPopup('5')">과제 제출 합니다.</a></td>
                <td>권오규</td>
                <td>2025-08-01 00:03</td>
                <td><i class="fas fa-paperclip"></i></td>
                <td><span class="badge bg-secondary">미제출</span></td>
                <td><span class="badge bg-warning">미등록</span></td>
              </tr>
            </tbody>
          </table>

          <!-- 목록 버튼 -->
          <div class="text-right mt-3">
            <a href="<%=request.getContextPath()%>/prohomeworklist" class="btn btn-success">목록</a>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<script>
  function openDetailPopup(id) {
    window.open(
      "<%=request.getContextPath()%>/homework/detail?no=" + id,
      "제출 상세보기",
      "width=800,height=600,scrollbars=yes,resizable=no"
    );
  }
</script>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<%@ include file="/WEB-INF/views/module/footer.jsp"%>
<!-- jQuery -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jqvmap/jquery.vmap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/moment/moment.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard.js"></script>
</body>
</html>
