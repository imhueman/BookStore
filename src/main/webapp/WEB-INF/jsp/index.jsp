<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Trang chủ</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">
  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link
          href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

  <!-- Font Awesome -->
  <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="lib/owlcarousel/assets/owl.carousel.min.css"
        rel="stylesheet">
  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link
          href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
          rel="stylesheet">
  <!-- icon -->
  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
        integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e"
        crossorigin="anonymous">

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
<jsp:include page="menu.jsp"></jsp:include>

<!-- Navbar Start -->

<div class="container-fluid bg-dark mb-30"></div>
<!-- Navbar End -->


<!-- Carousel Start -->
<div class="container-fluid mb-3">
  <div class="row px-xl-5">
    <div class="col-lg-8">
      <div id="header-carousel"
           class="carousel slide carousel-fade mb-30 mb-lg-0"
           data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#header-carousel" data-slide-to="0"
              class="active"></li>
          <li data-target="#header-carousel" data-slide-to="1"></li>
          <li data-target="#header-carousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item position-relative active"
               style="height: 430px;">
            <img class="position-absolute w-100 h-100" src="images/banner/sky-book-banner.jpg"
                 style="object-fit: cover;">
            <div
                    class="carousel-caption d-flex flex-column align-items-center justify-content-center">
              <div class="p-3" style="max-width: 700px;">
                <a
                        class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
                        href="shop?action=category&CategoryID=1">Shop Now</a>
              </div>
            </div>
          </div>
          <div class="carousel-item position-relative"
               style="height: 430px;">
            <img class="position-absolute w-100 h-100" src="images/banner/nxb-tre-banner.jpg"
                 style="object-fit: cover;">
            <div
                    class="carousel-caption d-flex flex-column align-items-center justify-content-center">
              <div class="p-3" style="max-width: 700px;">
                <a
                        class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
                        href="shop?action=category&CategoryID=2">Shop Now</a>
              </div>
            </div>
          </div>
          <div class="carousel-item position-relative"
               style="height: 430px;">
            <img class="position-absolute w-100 h-100" src="images/banner/nxb-kim-dong-banner.jpg"
                 style="object-fit: cover;">
            <div
                    class="carousel-caption d-flex flex-column align-items-center justify-content-center">
              <div class="p-3" style="max-width: 700px;">
                <a
                        class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
                        href="shop?action=category&CategoryID=3">Shop Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <div class="product-offer mb-30" style="height: 200px;">
        <img class="img-fluid" src="images/banner/first-new-banner.png" alt="">
        <div class="offer-text">
          <a href="shop" class="btn btn-primary">Shop Now</a>
        </div>
      </div>
      <div class="product-offer mb-30" style="height: 200px;">
        <img class="img-fluid" src="images/banner/ipm-sach-banner.jpg" alt="">
        <div class="offer-text">
          <a href="shop" class="btn btn-primary">Shop Now</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Carousel End -->
<!-- Categories Start -->
<div class="container-fluid pt-5">
  <h2
          class="section-title position-relative text-uppercase mx-xl-5 mb-4">
    <span class="bg-secondary pr-3">Phân loại</span>
  </h2>
  <div class="row px-xl-5 pb-3">
    <c:forEach items="${ListCategory}" var="category">
      <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
        <a
                href="shop?action=category&CategoryID=${category.getIdCategory()}"
                class="text-decoration-none">
          <div class="cat-item d-flex align-items-center mb-4">


            <div class="overflow-hidden" style="width: 100px; height: 100px;">
            </div>
            <div class="flex-fill pl-3 ">
              <h6>${category.getNameCategory()}</h6>
              <small class="text-body">${productDAO.getAmountProdByID(category.getIdCategory())}
              </small>
            </div>
          </div>
        </a>
      </div>
    </c:forEach>


  </div>
</div>
<!-- Categories End -->


<!-- Products Start -->
<div class="container-fluid pt-5 pb-3">
  <h2
          class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">Sản phẩm mới nhất <a
                    href="#" class="btn"><i class="fa fa-angle-double-up"></i></a><a
                    href="#" class="btn"><i class="fa fa-angle-double-down"></i></a></span>
  </h2>
  <div class="row px-xl-5">

    <c:forEach items="${ListProduct}" var="product">
      <div class="col-lg-2 col-md-4 col-sm-6 pb-1 ">
        <div class="product-item bg-light mb-4">
          <div class="product-img position-relative overflow-hidden py-4">
            <img class="img-fluid w-100" src="${product.getImgPath()}"
                 alt="img">
            <div class="product-action">
                <%-- <a class="btn btn-outline-dark btn-square"
                    href="addtocart?ProductID=${product.getProductID()}&soluong=1"><i
                    class="fa fa-shopping-cart"></i></a>  --%>
              <form action="cart" method="post" class="btn btn-outline-dark btn-square">
                <input type="hidden" name="ProductID" value="${product.getProductID()}">
                <input type="hidden" name="soluong" value="1">
                <button type="submit" class="btn btn-outline-dark btn-square">
                  <i class="fa fa-shopping-cart"></i>
                </button>
              </form>

              <a
                      class="btn btn-outline-dark btn-square"
                      href="detail?ProductID=${product.getProductID()}"><i
                      class="fa fa-search"></i></a>
            </div>
          </div>
          <div class="text-center py-4">
            <a class="h6 text-decoration-none text-truncate" href="">${product.getProductName()}</a>
            <div
                    class="d-flex align-items-center justify-content-center mt-2">
              <h5>${product.getUnit_price()}${product.getPrice()}</h5>
              <h6 class="text-muted ml-2">
                <del>${product.getUnit_price()} ${product.getPrice()}</del>
              </h6>
            </div>
            <div
                    class="d-flex align-items-center justify-content-center mb-1">
              <p class="text-dark">${rvDAO.avgTotalStarReviews(product.getProductID())}
                <i class="fa fa-star text-primary mr-1"></i>(${rvDAO.totalReviewsOfProductID(product.getProductID())}
                Reviews)
              </p>
            </div>
          </div>
        </div>
      </div>
    </c:forEach>




  </div>
</div>
<!-- Products End -->

<!-- Products Start -->
<div class="container-fluid pt-5 pb-3">
  <h2
          class="section-title position-relative text-uppercase mx-xl-5 mb-4">
    <span class="bg-secondary pr-3">Sản phẩm giá tốt nhất</span>
  </h2>
  <div class="row px-xl-5">

    <c:forEach items="${ListProduct}"
               var="product">
    <div class="col-lg-3 col-md-4 col-sm-6 pb-1 ">
      <div class="product-item bg-light mb-4">
        <div class="product-img position-relative overflow-hidden py-4">
          <img class="img-fluid w-100" src="${product.getImgPath()}"
               alt="img">
          <div class="product-action">
            <a class="btn btn-outline-dark btn-square"
               href="addtocart?ProductID=${product.getProductID()}&soluong=1"><i
                    class="fa fa-shopping-cart"></i></a> <a
                  class="btn btn-outline-dark btn-square"
                  href="detail?ProductID=${product.getProductID()}"><i
                  class="fa fa-search"></i></a>
          </div>
        </div>
        <div class="text-center py-4">
          <a class="h6 text-decoration-none text-truncate" href="">${product.getProductName()}</a>
          <div
                  class="d-flex align-items-center justify-content-center mt-2">
            <h5>${product.getUnit_price()}${product.getPrice()}</h5>
            <h6 class="text-muted ml-2">
              <del>${product.getUnit_price()} ${product.getPrice()}</del>
            </h6>
          </div>
          <div
                  class="d-flex align-items-center justify-content-center mb-1">
            <p class="text-dark">${rvDAO.avgTotalStarReviews(product.getProductID())}
              <i class="fa fa-star text-primary mr-1"></i>(${rvDAO.totalReviewsOfProductID(product.getProductID())}
              Reviews)
            </p>
          </div>
        </div>
      </div>
    </div>

    </c:forEach>

    <!-- Products End -->





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