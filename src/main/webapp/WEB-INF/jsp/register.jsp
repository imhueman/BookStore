<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

  <title>Đăng ký tài khoản</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/register.css">
  <style >
    /* styles.css */

    body {
      font-family: Arial, sans-serif;
      background-color: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 400px;
      max-width: 100%;
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      margin-bottom: 5px;
    }

    .form-group input {
      width: calc(100% - 22px);
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    .form-group input[type="submit"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .form-group input[type="submit"]:hover {
      background-color: #0056b3;
    }

    .mess {
      color: red;
      text-align: center;
      margin-bottom: 15px;
    }

    .error {
      color: red;
      margin-top: 2px;
    }

    @media (max-width: 600px) {
      .container {
        width: 100%;
        padding: 10px;
      }
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Đăng ký tài khoản</h2>
  <%-- <form action="register" method="POST">
      <h3 class="mess" align="center">${mess}</h3>
      <div class="form-group">
          <label for="form-label">Tên tài khoản:</label> <input type="text"
              id="username" name="username" required>
      </div>

      <div class="form-group">
          <label for="form-label">Mật khẩu:</label> <input type="password"
              id="password" name="password" required>
      </div>

      <div class="form-group">
          <label for="form-label">Nhập lại mật khẩu:</label> <input
              type="password" id="againPassword" name="againPassword" required>
      </div>
      <div class="form-group">
          <label for="form-label">Ngày sinh:</label> <input type="date"
              id="dob" name="dob" required>
      </div>
      <div class="form-group">
          <label for="form-label">Email:</label> <input type="email"
              id="email" name="email" required>
      </div>
      <div class="form-group">
          <label for="form-label">dia chi:</label> <input type="text"
              id="address" name="address" required>
      </div>

      <div class="form-group">
          <input type="submit" value="Đăng ký">
      </div>
  </form> --%>

  <h3 class="mess" align="center">${mess}</h3>
  <form:form id="registerForm" modelAttribute="useForm">
  <div class="form-group">
    <form:label path="username">Tên tài khoản:</form:label>
    <form:input path="username" id="username" required="true"/>
    <div id="usernameError" class="error"></div>
    <form:errors path="username" cssClass="error"/>
  </div>
  <div class="form-group">
    <form:label path="password">Mật khẩu:</form:label>
    <form:password path="password" id="password" />
    <div id="passwordError" class="error"></div>
    <form:errors path="password" cssClass="error"/>
  </div>
  <div class="form-group">
    <form:label path="againPassword">Nhập lại mật khẩu:</form:label>
    <form:password path="againPassword" id="againPassword"/>
    <div id="againPasswordError" class="error"></div>
    <form:errors path="againPassword" cssClass="error"/>
  </div>
  <div class="form-group">
    <form:label path="dob">Ngày sinh:</form:label>
    <form:input path="dob" type="date" id="dob" required="true"/>
    <div id="dobError" class="error"></div>
    <form:errors path="dob" cssClass="error"/>
  </div>
  <div class="form-group">
    <form:label path="email">Email:</form:label>
    <form:input path="email" type="email" id="email" required="true"/>
    <div id="emailError" class="error"></div>
    <form:errors path="email" cssClass="error"/>
  </div>
  <div class="form-group">
    <form:label path="address">Địa chỉ:</form:label>
    <form:input path="address" id="address" required="true"/>
    <div id="addressError" class="error"></div>
    <form:errors path="address" cssClass="error"/>
  </div>
  <div class="form-group">
    <!--  <button type="submit" value="Đăng ký">Đăng Ký</button> -->
    <button  value="Đăng ký">Đăng Ký</button>
  </div>
  </form:form>
  <!-- 	</div>
      <script src="js/validation.js"></script>
      <script>
          document
                  .addEventListener(
                          'DOMContentLoaded',
                          function() {
                              // Mong muốn của chúng ta
                              Validator({
                                  form : '#form-1',
                                  formGroupSelector : '.form-group',
                                  errorSelector : '.form-message',
                                  rules : [
                                          Validator
                                                  .isRequired('#fullname',
                                                          'Vui lòng nhập tên đầy đủ của bạn'),
                                          Validator.isEmail('#email'),
                                          Validator.minLength('#password', 6),
                                          Validator
                                                  .isRequired('#password_confirmation'),
                                          Validator
                                                  .isConfirmed(
                                                          '#password_confirmation',
                                                          function() {
                                                              return document
                                                                      .querySelector('#form-1 #password').value;
                                                          },
                                                          'Mật khẩu nhập lại không chính xác') ],
                                  onSubmit : function(data) {
                                      // Call API
                                      console.log(data);
                                  }
                              });

                          });
      </script> -->



  <script>
    $(document).ready(function() {
      console.log('Document ready!');
      $('#registerForm').on('submit', function(event) {
        /* event.preventDefault();  */
        $.ajax({
          type: 'POST',
          url: '${pageContext.request.contextPath}/register',
          /*  url: '/register', */
          data: $(this).serialize(),
          dataType: 'json',
          success: function(response) {
            console.log(response);
            /* event.preventDefault(); */
            $('.error').html(''); // Clear previous errors
            if (response.status === 'error') {
              for (const field in response) {
                if (field !== 'status') {
                  console.log(response[field])
                  $('#' + field + 'Error').html(response[field]);
                }
              }
            } else if (response.status === 'success') {
              /* window.location.href = '${pageContext.request.contextPath}/register-success?email='+ response.email1; */
              console.log('Redirecting to login page...');
              $('.mess').html('dang ky thanh cong')
              window.location.href = '${pageContext.request.contextPath}/login';
            }
          }
        });
      });
    });
  </script>
</body>
</html>