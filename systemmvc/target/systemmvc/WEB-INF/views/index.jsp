<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Chat</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/main.css" />" />
</head>
<body>
<noscript>
    <h2>Xin lỗi! Trình duyệt bạn không hỗ trợ nhóm chat này.</h2>
</noscript>
<div id="username-page">
    <div class="username-page-container">
        <h1 class="title">Hãy nhập tên của bạn</h1>
        <form id="usernameForm" name="usernameForm">
            <div class="form-group">
                <input type="text" id="name" placeholder="Tên truy cập" autocomplete="off" class="form-control" />
            </div>
            <div class="form-group">
                <button type="submit" class="accent username-submit">Bắt đầu chiến nào</button>
            </div>
        </form>
    </div>
</div>

<div id="chat-page" class="hidden">
    <div class="chat-container">
        <div class="chat-header">
            <h2>Nhóm chat nhảm nhí</h2>
        </div>
        <div class="connecting">
            Đang kết nối...
        </div>
        <ul id="messageArea">

        </ul>
        <form id="messageForm" name="messageForm">
            <div class="form-group">
                <div class="input-group clearfix">
                    <input type="text" id="message" placeholder="Hãy viết gì đó nào..." autocomplete="off" class="form-control"/>
                    <button type="submit" class="primary">Gửi</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="<c:url value="/resources/js/sockjs.min.js" />"></script>
<script src="<c:url value="/resources/js/stomp.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
</body>
</html>
