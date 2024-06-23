<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <script
          src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
<script>
  function sendFormData() {
    // Creating XMLHttpRequest object
    var zhttp = new XMLHttpRequest();
    const mFormEle = document.querySelector("#mForm")
    // Creating FormData object
    const myForm = new FormData(mFormEle);
    // Creating call back function to handle the response
    zhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 201) {
        document.getElementById("example").innerHTML = this.responseText;
        console.log("Form Data Posted Successfully")
      }
    };
    // Post/Add form data on the server
    zhttp.open("POST", "http://localhost:8080/admin/them", true);
    // Sending the request to the server
    zhttp.send(new FormData(mFormEle));
  }
</script>
<!--Creating simple form-->
<form id="mFormm">
  <h2>Enter the requested Data</h2>
  <label for="Utitle">Title</label> <input id="Utitle" type="text"
                                           name="title"><br> <label for="UId">UserId</label> <input
        id="UId" type="number" name="UserID"><br> <label
        for="Ubody">Body</label> <input id="Ubody" type="text" name="body"><br>

  <label for="Uage">Age</label> <input id="Uage" type="number"
                                       name="age"><br>

  <button type="button" onclick="sendFormData()">Submit Record</button>
</form>
<div id="example"></div>


<form method="post" action="admin/them" id="mForm" name="frmDiscount">
  <div class="form-group">
    <input type="hidden" class="form-control" name="action"
           placeholder="" value="themmagiamgia">
  </div>
  <div class="form-group">
    <label>Mã giảm giá *</label> <input name="code" id="code" />
  </div>

  <div class="form-group">
    <label>Giá trị %</label> <input name="value" id="value" />
  </div>
  <div class="form-group">
    <button id="save" type="button" class="btn btn-primary"
            onclick="sendFormData()">Thêm mã giảm giá</button>
  </div>
</form>
</body>

</html>