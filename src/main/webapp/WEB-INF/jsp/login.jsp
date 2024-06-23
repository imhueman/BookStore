<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Đăng Nhập</title>
    <link rel="stylesheet" href="css/style-login.css">
</head>
<body>
<div class="login-container">
    <h1>Đăng Nhập</h1>
    <form class="mess" action="/login" method="post">
        <p align="center" style="color: red; size: 9px;">${mess}</p>
        <label for="username">Tên người dùng:</label> <input type="text"
                                                             id="username" name="username" required> <label
            for="password">Mật khẩu:</label> <input type="password"
                                                    id="password" name="password" required>
        <button type="submit">Đăng nhập</button>
        <p>
            Chưa có tài khoản? <a href="register">Đăng ký ngay</a>
        </p>
    </form>
    <%-- <form:form method="Post" modelAttribute="account" action="check">
        <p align="center">${mess}</p>
        <label for="username">Tên người dùng:</label>
        <form:input path="username" id="username" />
        <label for="password">Mật khẩu:</label>
        <form:input path="password" id="password" />
        <form:button disabled="">dang nhap</form:button>
    </form:form> --%>
</div>
</body>
</html>
