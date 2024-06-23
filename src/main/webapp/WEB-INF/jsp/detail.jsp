<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Chi tiết sản phẩm</title>
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
        <a class="breadcrumb-item text-warning text-decoration-none "
           href="home">Home</a> <a
              class="breadcrumb-item text-warning text-decoration-none"
              href="shop">Shop</a> <span class="breadcrumb-item active">${product.getProductName()}</span>
      </nav>
    </div>
  </div>
</div>
<!-- Breadcrumb End -->


<!-- Shop Detail Start -->
<div class="container-fluid pb-5">
  <div class="row px-xl-5">
    <div class="col-lg-5 mb-30">
      <div id="product-carousel" class="carousel slide"
           data-ride="carousel">
        <div class="carousel-inner bg-light py-4">
          <div class="carousel-item active">
            <img class="w-100 h-100" src="img/${product.getImgPath()}"
                 alt="Image">
          </div>

        </div>
      </div>
    </div>

    <div class="col-lg-7 h-auto mb-30">
      <div class="h-100 bg-light p-30">
        <h3>${product.getProductName()}</h3>
        <div class="d-flex mb-3">
          <div class="text-primary mr-2">
            <small class="fas fa-star"></small> <small class="fas fa-star"></small>
            <small class="fas fa-star"></small> <small
                  class="fas fa-star-half-alt"></small> <small class="far fa-star"></small>
          </div>
          <small class="pt-1">(${TotalReviewsOfProductID} Reviews)</small>
        </div>
        <h3 class="font-weight-semi-bold mb-4">${product.getUnit_price()}${product.getPrice()}</h3>
        <form action="cart" method="post">
          <input type="hidden" value="${product.getProductID()}"
                 name="ProductID">

          <div class="d-flex align-items-center mb-4 pt-2">
            <div class="input-group quantity mr-3" style="width: 130px;">
              <div class="input-group-btn">
                <button type="button" class="btn btn-primary btn-minus">
                  <i class="fa fa-minus"></i>
                </button>
              </div>
              <input name="soluong" type="text"
                     class="form-control bg-secondary border-0 text-center"
                     value="1" min="1"
                     max="${pDAO.getProdByID(product.getProductID())}">
              <div class="input-group-btn">
                <button type="button" class="btn btn-primary btn-plus">
                  <i class="fa fa-plus"></i>
                </button>
              </div>
            </div>
            <button type="submit" class="btn btn-primary px-3">
              <i class="fa fa-shopping-cart mr-1"></i> Add To Cart
            </button>
          </div>
        </form>
        <div class="d-flex pt-2">
          <div class="d-inline-flex">
            <p>${product.getDescription()}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row px-xl-5">
    <div class="col">
      <div class="bg-light p-30">
        <div class="nav nav-tabs mb-4">
          <a class="nav-item nav-link text-dark active" data-toggle="tab"
             href="#tab-pane-1">Mô tả sản phẩm</a> <a
                class="nav-item nav-link text-dark" data-toggle="tab"
                href="#tab-pane-3">Đánh giá (${TotalReviewsOfProductID})</a>
        </div>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="tab-pane-1">
            <h4 class="mb-3">Product Description</h4>
            <p>${product.getDescription()}</p>
          </div>

          <!-- hien thi binh luan -->
          <div class="tab-pane fade" id="tab-pane-3">
            <div class="row">
              <div class="col-md-6">
                <h4 class="mb-4">${TotalReviewsOfProductID}reviewfor
                  "${product.getProductName()}"</h4>


                <c:forEach items="${ListReviews}" var="reviews">
                  <div class="media mb-4 ">
                    <img src="img/user.jpg" alt="Image"
                         class="img-fluid mr-3 mt-1" style="width: 45px;">
                    <!--reviews cho nay-->

                    <div class="media-body">
                      <h6>
                          ${reviews.getUsername()}<small> - <i>${reviews.getTimeReviews()}</i></small>
                      </h6>
                      <div class="mb-2">
                        <p class="text-dark">${reviews.getSosao()}
                          <i class="text-primary  fas fa-star"></i>
                        </p>

                      </div>
                      <p>${reviews.getComment()}</p>
                    </div>


                  </div>
                </c:forEach>


              </div>
              <!-- binh luan -->
              <div class="col-md-6">
                <h4 class="mb-4">Để lại đánh giá của bạn</h4>
                <small>Đánh giá của bạn sẽ giúp chúng tôi cải
                  thiện từng ngày.</small> <small>Cám ơn bạn vì bạn đã
                đồng hành cùng chúng tôi.</small>

                <form method="post" action="detail">
                  <input name="ProductID" value="${product.getProductID()}"
                         type="hidden">
                  <div class="d-flex my-3">
                    <p class="mb-0 mr-2">Đánh giá * :</p>
                    <div class="text-primary">
                      <input type="text" name="sosao" width="5" min="0" value="5"
                             max="5"> <i class="fas fa-star"></i>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="message">Bình luận *</label>
                    <textarea name="binhluan" id="message" cols="30" rows="5"
                              class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="name">Your Name *</label> <input name="username"
                                                                 readonly="readonly" type="text" class="form-control"
                                                                 id="name" value="${sessionScope.acc.getUsername()}">
                  </div>
                  <div class="form-group mb-0">
                    <input type="submit" value="Leave Your Review"
                           class="btn btn-primary px-3">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Shop Detail End -->


<!-- Products Start -->
<div class="container-fluid py-5">
  <h2
          class="section-title position-relative text-uppercase mx-xl-5 mb-4">
    <span class="bg-secondary pr-3">You May Also Like</span>
  </h2>
  <div class="row px-xl-5">
    <div class="col">
      <div class="owl-carousel related-carousel">
        <c:forEach items="${productList}" var="product">
          <div class="product-item bg-light">
            <div class="product-img position-relative overflow-hidden">
              <img class="img-fluid w-100" src="img/${product.getImgPath()}"
                   alt="">
              <div class="product-action">
                <a class="btn btn-outline-dark btn-square"
                   href="addtocart?ProductID=${product.getProductID()}"><i
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
                  <del>${product.getUnit_price()}${product.getPrice()}</del>
                </h6>
              </div>
              <div
                      class="d-flex align-items-center justify-content-center mb-1">
                <small class="fa fa-star text-primary mr-1"></small> <small
                      class="fa fa-star text-primary mr-1"></small> <small
                      class="fa fa-star text-primary mr-1"></small> <small
                      class="fa fa-star text-primary mr-1"></small> <small
                      class="fa fa-star text-primary mr-1"></small> <small>(${rvDAO.totalReviewsOfProductID(product.getProductID())}
                Reviews)</small>
              </div>
            </div>
          </div>
        </c:forEach>

      </div>
    </div>
  </div>
</div>
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
</body>

</html>