<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Sản phẩm</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">

  <!-- Favicon -->
  <link href="${pageContext.request.contextPath}/img/favicon.ico" rel="icon">

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
  <link href="${pageContext.request.contextPath}/lib/animate/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css"
        rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>

<body>

<!-- menubar Start -->
<jsp:include page="menu.jsp"></jsp:include>
<!-- menubar End -->

<!--bat dau duong dan-->
<div class="container-fluid">
  <div class="row px-xl-5 py-4">
    <div class="col-12">
      <nav class="breadcrumb bg-light mb-30">
        <a class="breadcrumb-item text-dark text text-decoration-none"
           href="home">Trang chủ</a> <a
              class="breadcrumb-item text-dark text-decoration-none" href="shop">Danh
        mục</a> <span class="breadcrumb-item active text-decoration-none">${text}</span>
      </nav>
    </div>
  </div>
</div>
<!-- ket thuc duong dan -->


<!-- San pham -->
<div class="container-fluid">
  <div class="row px-xl-5">
    <!-- bo loc san pham start -->
    <div class="col-lg-3 col-md-4">

      <!-- loc theo loai start -->
      <h5 class="section-title position-relative text-uppercase mb-3">
        <span class="bg-secondary pr-3">Lọc thương hiệu</span>
      </h5>
      <div class="bg-light p-4 mb-30">
        <form>
          <div
                  class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
            <a class="" style="text-decoration: none;" href="shop">All
              Category</a> <span class="badge border font-weight-normal">${totalProduct}</span>
          </div>
          <c:forEach items="${ListCategory}" var="category">
            <div onclick="load()"
                 class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
              <input id="CategoryID" type="hidden"
                     value="${category.getIdCategory()}"> <a
                    style="text-decoration: none;" class="text-dark"
                    href="shop?action=category&CategoryID=${category.getIdCategory()}">${category.getNameCategory()}</a>
              <span class="badge border font-weight-normal">${AmountProductCate.getAmountProdByID(category.getIdCategory())}</span>
            </div>
          </c:forEach>
        </form>
      </div>
      <!-- loc theo loai End -->


      <!-- loc theo color Start -->
      <!-- loc theo color End -->


    </div>
    <!--bo loc san pham End -->


    <!-- hien thi san pham Start -->
    <div id="content" class="col-lg-9 col-md-8">
      <div class="row pb-3">
        <div class="col-12 pb-1">
          <!-- bo loc -->
          <div
                  class="d-flex align-items-center justify-content-between mb-4">
            <div></div>
            <div class="ml-2">
              <!--<div class="btn-group">
                  <button type="button"
                      class="btn btn-sm btn-light dropdown-toggle"
                      data-toggle="dropdown">Sorting</button>
                  <div class="dropdown-menu dropdown-menu-right">
                      <a class="dropdown-item" href="#">Latest</a> <a
                          class="dropdown-item" href="#">Popularity</a> <a
                          class="dropdown-item" href="#">Best Rating</a>
                  </div>
              </div>
              <div class="btn-group ml-2">
                  <button type="button"
                      class="btn btn-sm btn-light dropdown-toggle"
                      data-toggle="dropdown">Showing</button>
                  <div class="dropdown-menu dropdown-menu-right">
                      <a class="dropdown-item" href="#">10</a> <a
                          class="dropdown-item" href="#">20</a> <a
                          class="dropdown-item" href="#">30</a>
                  </div>
              </div>  -->

            </div>
          </div>
          <!--ket thuc bo loc -->

          <div  class="row">

            <c:forEach items="${ListProduct}" var="product">

              <div class="col-lg-4 col-md-6 col-sm-6 pb-1 " id="product-item">
                <div class="product-item bg-light mb-4">
                  <div class="product-img position-relative overflow-hidden py-4">
                    <img class="img-fluid w-100" src="${product.getImgPath()}"
                         alt="">
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
                    <a class="h5 text-decoration-none text-truncate"
                       href="detail?ProductID=${product.getProductID()}">${product.getProductName()}</a>
                    <div
                            class="d-flex align-items-center justify-content-center mt-2">
                      <h5>${product.getUnit_price()}${product.getPrice()}</h5>
                      <h6 class="text-muted ml-2">
                        <del>${product.getUnit_price()}${product.getPrice()}</del>
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
      </div>

      <nav aria-label="Page navigation example">
        <ul class="pagination" id="pagination">

          <!-- <li class="page-item"><a class="page-link"  onclick="fetchProducts((event),${pageNo-1})">Previous</a></li>
				  <li class="page-item"><a class="page-link" href="#">${totalPage}</a></li>
				  <li class="page-item"><a class="page-link" href="#">${pageNo+2}</a></li>
				  <li class="page-item"><a class="page-link" href="#">${pageNo+3}</a></li>
				  <li class="page-item"><a class="page-link" onclick="fetchProducts((event),${pageNo+1})">Next</a></li> -->


          <%-- Nút Previous --%>
          <c:if test="${pageNo > 0}">
            <li class="page-item"><a class="page-link"  onclick="fetchProducts((event),${pageNo-1})">Previous</a></li>
          </c:if>

          <%-- Liên kết đến các trang --%>
          <c:forEach begin="1" end="${totalPage}" var="pageNum">
            <c:choose>
              <c:when test="${pageNum - 1 == pageNo }">

                <li class="page-item"><a class="page-link" href="#" onclick="fetchProducts((event),${pageNum - 1})"><strong>${pageNum}</strong></a></li>
              </c:when>
              <c:otherwise>
                <li class="page-item"><a class="page-link" href="#" onclick="fetchProducts((event),${pageNum - 1})">${pageNum}</a></li>
              </c:otherwise>
            </c:choose>
          </c:forEach>

          <%-- Nút Next --%>
          <c:if test="${pageNo < totalPage}">
            <li class="page-item"><a class="page-link" onclick="fetchProducts((event),${pageNo+1})">Next</a></li>
          </c:if>

        </ul>
      </nav>
    </div>
    <!--cho nay hien thi san pham -->

    <!-- hien thi san pham End -->
  </div>
</div>
<!-- san pham End -->
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
<script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>



<!-- search su dung ajax -->
<script>
  function searchByName(param) {
    var txtSearch = param.value;
    $.ajax({

      url : "/PhoneStore/SearchByAjax",
      type : "get",
      data : {
        search : txtSearch
      },
      success : function(data) {
        var row = document.getElementById("content");
        row.innerHTML = data;
      },
      error : function(xhr) {

      }

    });

  }

</script>

<script >


  const productList = $('#content');
  const paginationContainer = $('#pagination');

  function fetchProducts(event,page) {

    let number = page;
    if (number < 0) {
      number += 1 ;
    } else {

    }
    console.log(number);
    $.ajax({
      url: `/shop/page${number}`,
      type: 'GET',
      data: {
        page: number// Thay số ID bằng giá trị thực tế mà bạn muốn truy vấn
      },
      success: function(response) {
        console.log(response);

        // displayProducts((event),response,number);

        $('#content').html(response);

        event.preventDefault();

      }
    });


  }



  // 	    function displayProducts(event,products,page) {
  // 	    	console.log(products);
  // 	        var productListDiv = document.getElementById("content");
  //         productListDiv.innerHTML = ""; // Xóa nội dung cũ

  // 			console.log(Array.isArray(products));

  // 	        products.forEach(product => {

  // 				var productDiv = document.createElement("div");
  // 				productDiv.className = "col-lg-4 col-md-6 col-sm-6 pb-1";
  // 	            productDiv.innerHTML = `


  // 	<div class="product-item bg-light mb-4">
  // 		<div class="product-img position-relative overflow-hidden py-4">
  // 			<img class="img-fluid w-100" src="img/`+product.imgPath+`"
  // 				alt="">
  // 			<div class="product-action">
  // 				<a class="btn btn-outline-dark btn-square"
  // 					href="addtocart?ProductID=${product.productID}&soluong=1"><i
  // 					class="fa fa-shopping-cart"></i></a> <a
  // 					class="btn btn-outline-dark btn-square"
  // 					href="detail?ProductID=${product.productID}"><i
  // 					class="fa fa-search"></i></a>
  // 			</div>
  // 		</div>
  // 		<div class="text-center py-4">
  // 			<a class="h5 text-decoration-none text-truncate"
  // 				href="detail?ProductID=${product.getProductID()}">${product.getProductName()}</a>
  // 			<div
  // 				class="d-flex align-items-center justify-content-center mt-2">
  // 				<h5>${product.getUnit_price()}${product.getPrice()}</h5>
  // 				<h6 class="text-muted ml-2">
  // 					<del>${product.getUnit_price()}${product.getPrice()}</del>
  // 				</h6>
  // 			</div>
  // 			<div
  // 				class="d-flex align-items-center justify-content-center mb-1">
  // 				<p class="text-dark">${rvDAO.avgTotalStarReviews(product.getProductID())}
  // 					<i class="fa fa-star text-primary mr-1"></i>(${rvDAO.totalReviewsOfProductID(product.getProductID())}
  // 					Reviews)
  // 				</p>

  // 			</div>
  // 		</div>
  // 	</div>

  // `;

  // 				// console.log(product.imgPath)
  // 	            // productList.append(productDiv);
  // 				productListDiv.appendChild(productDiv)
  // 	            event.preventDefault();
  // 	        });

  // 	    }



  function clickPageNumber(event, page){
    fetchProducts(page);

  }



</script>

<!-- Contact Javascript File -->
<script src="${pageContext.request.contextPath}/mail/jqBootstrapValidation.min.js"></script>
<script src="${pageContext.request.contextPath}/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>


</html>