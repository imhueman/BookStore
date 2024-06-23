<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Giỏ hàng</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">

  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link
          href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
          rel="stylesheet">

  <!-- Font Awesome -->
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css"
        rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
</head>

<body>
<!-- Topbar Start -->
<jsp:include page="menu.jsp"></jsp:include>
<!-- Topbar End -->


<!-- Navbar Start -->
<!-- Navbar End -->


<!-- Breadcrumb Start -->
<div class="container-fluid">
  <div class="row px-xl-5 py-4">
    <div class="col-12">
      <nav class="breadcrumb bg-light mb-30">
        <a class="breadcrumb-item text-dark text-decoration-none"
           href="home">Trang chủ</a> <a
              class="breadcrumb-item text-dark text-decoration-none" href="shop">Danh
        mục</a> <span class="breadcrumb-item active" style="text-decoration:">Shopping
						Cart</span>
      </nav>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->


<!-- Cart Start -->
<div class="container-fluid">
  <div class="row px-xl-5">
    <div class="col-lg-8 table-responsive mb-5">
      <div class="mess px-xl-5">
        <div>
          <h5 class="align-middle text-danger text-center">${mess}</h5>
        </div>

      </div>

      <table
              class="table table-light table-borderless table-hover text-center mb-0">
        <thead class="thead-dark">
        <tr>
          <th>Mã sản phẩm</th>
          <th>Tên sản phẩm</th>
          <th>Đơn giá</th>
          <th>Số lượng</th>
          <th>Tổng</th>
          <th>Xóa</th>
        </tr>
        </thead>
        <tbody class="align-middle">
        <c:forEach items="${ListCart}" var="cart">
          <tr>
            <td class="align-middle">${cart.getProductID()}</td>
            <td class="text-left"><img class=""
                                       src="img/${cart.getImgPath()}" alt="" style="width: 50px;">${cart.getProductName()}</td>
            <td class="align-middle">$ ${cart.getPrice()}</td>
            <td class="align-middle">
              <div class="input-group quantity mx-auto" style="width: 100px;">
                <div class="input-group-btn">
                  <a
                          href="cart?action=giamsoluong&ProductID=${cart.getProductID()}&code=${code}"
                          class="btn btn-sm btn-primary btn-minus"> <i
                          class="fa fa-minus"></i>
                  </a>
                </div>
                <input type="text"
                       class="form-control form-control-sm bg-secondary border-0 text-center"
                       value="${cart.getAmount()}">
                <div class="input-group-btn">
                  <a
                          href="cart?action=tangsoluong&ProductID=${cart.getProductID()}&code=${code}"
                          class="btn btn-sm btn-primary btn-plus"> <i
                          class="fa fa-plus"></i>
                  </a>
                </div>
              </div>
            </td>
            <td class="align-middle">$
                ${cart.getPrice()*cart.getAmount()}</td>
            <td class="align-middle"><a
                    href="cart?action=deleteProduct&ProductID=${cart.getProductID()}&code=${code}"
                    class="btn btn-sm btn-danger"> <i class="fa fa-times"></i>
            </a></td>
          </tr>
        </c:forEach>

        </tbody>
      </table>
    </div>
    <div class="col-lg-4">

      <h5 class="section-title position-relative text-uppercase mb-3">
        <span class="bg-secondary pr-3">Cart Summary</span>
      </h5>
      <div class="bg-light p-30 mb-5">
        <div class="border-bottom pb-2">
          <div class="d-flex justify-content-between mb-3">
            <h6>Subtotal</h6>
            <h6>$${totalPrice}</h6>
          </div>
          <div class="d-flex justify-content-between">
            <h6 class="font-weight-medium">Shipping</h6>
            <h6 class="font-weight-medium">$10</h6>
          </div>
          <div class="d-flex justify-content-between">
            <h6 class="font-weight-medium">Discount</h6>
            <h6 class="font-weight-medium">${ValueOfCode}%</h6>
          </div>
        </div>
        <div class="pt-2">
          <div class="d-flex justify-content-between mt-2">
            <h5>Total</h5>
            <h5>$${totalPrice-(totalPrice*(ValueOfCode/100))}</h5>
          </div>
          <a href="checkout"
             class="btn btn-block btn-primary font-weight-bold my-3 py-3">Tạo
            đơn hàng</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Cart End -->


<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i
        class="fa fa-angle-double-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
</body>

</html>