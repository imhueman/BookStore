<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Thanh toán</title>
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
        <a class="breadcrumb-item text-dark" href="#">Home</a> <a
              class="breadcrumb-item text-dark" href="#">Shop</a> <span
              class="breadcrumb-item active">Checkout</span>
      </nav>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->


<!-- Checkout Start -->
<div class="container-fluid">
  <form action="checkout" method="post">
    <input type="hidden" name="username"
           value="${sessionScope.acc.getUsername()}">
    <div class="row px-xl-5">
      <div class="col-lg-6">
        <h5 class="section-title position-relative text-uppercase mb-3">
          <span class="bg-secondary pr-3">Billing Address</span>
        </h5>
        <div class="bg-light p-30 mb-5">
          <div class="row">
            <div class="col-md-6 form-group">
              <label>Name</label> <input class="form-control" type="text"
                                         name="name" placeholder="John"
                                         value="${sessionScope.acc.getUsername()}">
            </div>

            <div class="col-md-6 form-group">
              <label>E-mail</label> <input class="form-control" type="text"
                                           name="mail" placeholder="example@email.com"
                                           value="${sessionScope.acc.getEmail()}">
            </div>
            <div class="col-md-6 form-group">
              <label>Mobile No</label> <input class="form-control" type="text"
                                              name="phone" placeholder="+123 456 789">
            </div>
            <div class="col-md-6 form-group">
              <label>Address</label> <input class="form-control" type="text"
                                            name="address" placeholder="123 Street"
                                            value="${sessionScope.acc.getAddress() }">
            </div>

          </div>
        </div>
      </div>

      <div class="col-lg-6">
        <h5 class="section-title position-relative text-uppercase mb-3">
          <span class="bg-secondary pr-3">Order Total</span>
        </h5>
        <div class="bg-light p-30 mb-5">
          <div class="border-bottom">


            <table>

              <thead>

              <tr>
                <td scope="row" width="300" class="h5">Sản phẩm</td>
                <td scope="row" width="100" align="center" class="h5">Số
                  lương</td>
                <td scope="row" width="200" align="center" class="h5">Đơn
                  giá</td>
                <td scope="row" width="100" align="right" class="h6">Thành
                  tiền</td>
              </tr>
              </thead>

              <tbody>
              <c:forEach items="${ListCart}" var="cart">
                <tr>
                  <td align="left">${cart.getProductName()}</td>
                  <td align="center">${cart.getAmount()}</td>
                  <td align="center">$ ${cart.getPrice()}</td>
                  <td align="right">$ ${cart.getPrice()*cart.getAmount()}</td>
                </tr>
              </c:forEach>
              </tbody>

            </table>

            <div class="border-bottom pt-3 pb-2"></div>
            <div class="pt-2">
              <div class="d-flex justify-content-between mt-2">
                <h5>Total</h5>
                <h5>$ ${TotalPrice}</h5>
              </div>
              <div class="d-flex justify-content-between mt-2">
                <h5>Giam gia</h5>
                <h5>$ ${TotalPrice*ValueOfCode/100}</h5>
              </div>
              <div class="d-flex justify-content-between mt-2">
                <h5></h5>
                <h5>$ ${TotalPrice-TotalPrice*ValueOfCode/100}</h5>
              </div>
            </div>
          </div>
          <div class="mb-5">
            <input type="hidden" name="giagoc" value="${TotalPrice}">
            <input type="hidden" name="giamgia"
                   value="${TotalPrice*ValueOfCode/100}"> <input
                  type="hidden" name="thanhtien"
                  value="${TotalPrice-TotalPrice*ValueOfCode/100}">
            <button class="btn btn-block btn-primary font-weight-bold py-3"
                    type="submit">Thanh toán</button>

          </div>
        </div>
      </div>
    </div>
  </form>
  <form class="mb-30" action="discount" method="get">
    <div class="input-group">
      <input name="code" type="text"
             class="form-control border-0-1 p-4 bg-gray"
             placeholder="Coupon Code" value="${code}">
      <div class="input-group-append">
        <button type="submit" class="btn btn-primary">Apply Coupon</button>
      </div>
    </div>
  </form>
</div>

<!-- Checkout End -->


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