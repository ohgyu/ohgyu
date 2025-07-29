<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>과제 등록하기</title>

    <!-- Bootstrap & Summernote CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-lite.min.css" rel="stylesheet">

    <!-- jQuery, Bootstrap, Summernote JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/summernote-lite.min.js"></script>

    <style>
        body {
            padding: 20px;
            background-color: #f5f7fa;
            font-family: 'Noto Sans KR', sans-serif;
        }
        .modal-title {
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .form-control, .form-select {
            margin-bottom: 15px;
        }
        .note-editor.note-frame {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <h2 class="modal-title">과제 등록하기</h2>

    <!-- 폼 시작 (확인창 alert 포함) -->
    <form method="post" action="registerSubmit.do" onsubmit="return confirmRegister();">
        
        <!-- 주차: 자유 입력 텍스트 -->
        <input type="text" name="week" class="form-control" placeholder="예: 1, 1-1, 5 등">

        <!-- 제목 -->
        <input type="text" name="title" class="form-control" placeholder="제목을 입력해주세요.">

        <!-- 기간 -->
        <div class="d-flex align-items-center">
            <input type="date" name="startDate" class="form-control me-2">
            <input type="time" name="startTime" class="form-control me-2">
            <span>~</span>
            <input type="date" name="endDate" class="form-control mx-2">
            <input type="time" name="endTime" class="form-control">
        </div>

        <!-- 내용 (summernote) -->
        <textarea id="summernote" name="content"></textarea>

        <!-- 버튼 -->
        <div class="d-flex justify-content-end mt-3">
            <button type="button" class="btn btn-secondary me-2" onclick="window.close();">취소</button>
            <button type="submit" class="btn btn-primary">등록</button>
        </div>
    </form>

    <!-- Summernote 초기화 & 확인창 함수 -->
    <script>
        $(document).ready(function () {
            $('#summernote').summernote({
                placeholder: '내용을 입력해주세요.',
                tabsize: 2,
                height: 300,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'italic', 'underline', 'clear']],
                    ['fontname', ['fontname']],
                    ['fontsize', ['fontsize']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['fullscreen', 'codeview']]
                ]
            });
        });

        function confirmRegister() {
            return confirm("과제를 등록하시겠습니까?");
        }
    </script>
</body>
</html>
