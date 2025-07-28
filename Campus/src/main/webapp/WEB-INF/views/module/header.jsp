<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
<style>
.custom-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/CPhome.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .custom-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/home_hv.png');
}
.gang-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/gang.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .gang-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/gang_hv.png');
}
.pro-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/pro.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .pro-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/pro_hv.png');
}
.post-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/post.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .post-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/post_hv.png');
}
.cal-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/cal.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .cal-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/cal_hv.png');
}
.mes-img-icon {
  display: inline-block;
  width: 18px;   /* 이미지 크기 조절 */
  height: 18px;
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/mes.png');
  background-size: contain;
  background-repeat: no-repeat;
  transition: background-image 0.3s;
}

.nav-link:hover .mes-img-icon {
  background-image: url('<%=request.getContextPath() %>/resources/bootstrap/dist/img/mes_hv.png');
}
.nav-link:hover p {
  color: #2ec4b6;
  font-weight: bold;
}
.brand-link {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100px;          /* 로고 영역 높이 제한 */
  padding: 0;
  overflow: hidden;
}

.brand-image {
  height: 400px;          /* 이미지 실제 크기 제한 */
  width: auto;           /* 비율 유지 */
  display: block;
  object-fit: cover;   /* 혹시 필요할 경우 */
}
.custom-logo {
  max-height: none !important;
  height: 60px; /* 원하는 크기 */
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">