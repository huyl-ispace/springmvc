<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>404</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/error/bootstrap.css" />" />
    <link rel="stylesheet" href="<c:url value="/resources/css/error/page.error.css" />" />
</head>
<body>
    <section class="page_error_web">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 ">
                    <div class="col-sm-10 col-sm-offset-1  text-center">
                        <div class="four_zero_four_bg">
                            <h1 class="text-center">404</h1>
                        </div>
                        <div class="constant_box_error_web">
                            <h3 class="h2">RẤT TIẾC</h3>
                            <p>Nội dung của bạn đang tìm không tồn tại nhé!</p>
                            <a href="<c:url value="/" />" class="link_error_web">Trang chủ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
