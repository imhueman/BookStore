<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
            rel="stylesheet">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
            rel="stylesheet" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />


    <link rel="stylesheet" href="css/styles-admin.css" />

    <title>Admin</title>
</head>

<body>

<div class="d-flex " id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper"
         style="position: -webkit-sticky;">
        <div
                class="sidebar-heading text-center px-4 py-4 primary-text fs-4 fw-bold text-uppercase border-bottom bg-light">
            <div class="col-lg-2">
                <a href="admin" class="text-decoration-none"> <span
                        class="h1 text-uppercase text-warning bg-success px-2">Book</span> <span
                        class="h1 text-uppercase text-success bg-warning px-2 ml-n1">Store</span>
                </a>
            </div>
        </div>
        <div class="list-group list-group-flush my-3">


            <a
                    class="list-group-item list-group-item-action active  bg-transparent second-text fw-bold"
                    data-toggle="tab" href="#tab-pane-1"><i
                    class="fas fa-shopping-cart me-2" data-toggle="tab"></i>Quản lý
                sản phẩm</a> <a
                class="list-group-item list-group-item-action bg-transparent second-text fw-bold"
                data-toggle="tab" href="#tab-pane-2"><i
                class="fas fa-user me-2" data-toggle="tab"></i>Quản lý tài
            khoản</a> <a
                class="list-group-item list-group-item-action   bg-transparent second-text fw-bold"
                data-toggle="tab" href="#tab-pane-lichsudanhgia"><i
                class="fas fa-shopping-cart me-2" data-toggle="tab"></i>Lịch sử
            đánh giá</a> <a
                class="list-group-item list-group-item-action   bg-transparent second-text fw-bold"
                data-toggle="tab" href="#tab-pane-4"><i
                class="fas fa-ticket-alt me-2" data-toggle="tab"></i>Quản lý mã
            giảm giá</a>


        </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div class="card overflow-hidden" id="page-content-wrapper"
         style="background-color: rgb(220, 220, 220);">
        <nav
                class="navbar navbar-expand-lg navbar-light bg-transparent py-2 px-4 active">
            <div class="d-flex align-items-center">
                <h2 class="fs-3 m-0 ">Admin</h2>
            </div>

            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown"><a
                            class="nav-link dropdown-toggle second-text fw-bold" href="#"
                            id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false"> <i class="fas fa-user me-2"></i>${sessionScope.acc.getUsername()}
                    </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="profile">Hồ sơ</a></li>
                            <li><a class="dropdown-item" href="logout">Đăng xuất</a></li>
                        </ul></li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid px-4 ">
            <div class="row g-3 my-2">
                <div class="col-md-3">
                    <div
                            class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                        <div>
                            <h3 class="fs-2">${totalProduct}</h3>
                            <p class="fs-5">Tổng sản phẩm</p>
                        </div>
                        <i
                                class="fas fa-shopping-cart fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                    </div>
                </div>





                <div class="col-md-3">
                    <div
                            class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                        <div>
                            <h3 class="fs-2">${TotalAccount}</h3>
                            <p class="fs-5">Tổng số tài khoản</p>
                        </div>
                        <i
                                class="fas fa-user fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                    </div>
                </div>


            </div>
            <div class="tab-content">


                <div class="tab-pane fade" id="tab-pane-4">
                    <h2>Danh sách mã giảm giá</h2>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#themmagiamgia">Thêm mã giảm giá</button>
                    <!-- Modal -->
                    <div class="modal fade" id="themmagiamgia" tabindex="-1"
                         role="dialog" aria-labelledby="exampleModalCenterTitle"
                         aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Thêm
                                        mã giảm giá</h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <!-- <form class="form-user" method="get" action="admin">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" name="action"
                                                placeholder="" value="themmagiamgia">
                                        </div>

                                        <div class="form-group">
                                            <label>Mã giảm giá *</label> <input type="text"
                                                class="form-control" name="code" placeholder="">
                                        </div>
                                        <div class="form-group">
                                            <label>Giá trị %</label><input type="text"
                                                class="form-control" name="ValueOfCode" placeholder="">

                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Thêm
                                                mã giảm giá</button>
                                        </div>

                                    </form> -->

                                    <%-- <form:form method="post" action="admin/them"
                                        modelAttribute="discount" id="frmDiscount" name="frmDiscount">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" name="action"
                                                placeholder="" value="themmagiamgia">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã giảm giá *</label>
                                            <form:input path="code" id="code" />
                                        </div>

                                        <div class="form-group">
                                            <label>Giá trị %</label>
                                            <form:input path="value" id="value" />
                                        </div>
                                        <div class="form-group">
                                            <button id="save" type="button" class="btn btn-primary"
                                                onclick="addDiscount()">Thêm mã giảm giá</button>
                                        </div>
                                    </form:form> --%>
                                </div>


                            </div>

                        </div>
                    </div>
                    <!-- modal end -->
                    <!-- ma giam gia -->
                    <table class="table bg-white rounded shadow-sm  table-hover "
                           id="">
                        <thead>

                        <tr style="justify-content: space-between;">
                            <th scope="col" width="500">Mã giảm giá</th>
                            <th scope="col" width="500">Giá trị %</th>
                            <th scope="col">action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ListDiscount}" var="discount">
                            <tr style="justify-content: space-between;">
                                <td scope="row">${discount.getCode()}</td>




                                <td scope="row">${discount.getValue()}</td>
                                <td scope="row">
                                    <button type="button" class="btn btn-primary"
                                            data-toggle="modal"
                                            data-target="#suamagiamgia${discount.getCode()}">Sửa</button>
                                    <a class="btn btn-danger"
                                       href="admin/delete?code=${discount.getCode()}">Xóa</a>

                                </td>

                            </tr>

                            <!-- modal sua ma giam gia -->
                            <div class="modal fade" id="suamagiamgia${discount.getCode()}"
                                 tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered"
                                     role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLongTitle">Sửa
                                                mã giảm giá</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-user" method="get" action="admin">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="action"
                                                           placeholder="" value="suamagiamgia">
                                                </div>
                                                <div class="form-group">
                                                    <label>Mã giảm giá</label> <input type="text"
                                                                                         class="form-control" name="code" placeholder=""
                                                                                         value="${discount.getCode()}" readonly="readonly">
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá trị</label> <input type="text"
                                                                                    class="form-control" name="ValueOfCode"
                                                                                    value="${discount.getValue()}">
                                                </div>

                                                <button type="submit" class="btn btn-primary">Sửa
                                                    mã giảm giá</button>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- end modal sua ma giam gia -->
                        </c:forEach>

                        </tbody>
                    </table>

                    <span style="text-align: center;">${mess}</span>
                </div>

                <!--  lich su mua hang -->
                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row my-5 ">
                        <h3 class="fs-4 mb-3" style="text-align: center;">Lịch sử
                            mua hàng</h3>
                        <div class="col ">
                            <table class="table bg-white rounded shadow-sm  table-hover"
                                   id="">
                                <thead>

                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Customer</th>
                                    <th scope="col" width="400">Price</th>
                                    <th scope="col">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Televisione</td>
                                    <td>Jonny</td>
                                    <td>$1200</td>
                                    <td><a style="text-decoration: none;" class="fw-bold"
                                           href="#">edit</a> | <a href="#">xoa</a></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Laptop</td>
                                    <td>Kenny</td>
                                    <td>$750</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Cell Phone</td>
                                    <td>Jenny</td>
                                    <td>$600</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>Fridge</td>
                                    <td>Killy</td>
                                    <td>$300</td>
                                </tr>


                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
                <!-- lich su danh gia -->
                <div class="tab-pane fade" id="tab-pane-lichsudanhgia">
                    <div class="row my-5 ">
                        <h3 class="fs-4 mb-3" style="text-align: center;">Review</h3>
                        <div class="col ">
                            <table class="table bg-white rounded shadow-sm  table-hover"
                                   id="">
                                <thead>
                                <tr>
                                    <th scope="col" align="left" width="150">Mã sản phẩm</th>
                                    <th scope="col" align="left" width="200">Khách hàng</th>
                                    <th scope="col" align="left" width="200">Lượt đánh
                                        giá</th>
                                    <th scope="col" align="left" width="400">Bình luận</th>
                                    <th scope="col" align="left">Thời gian</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${ListReviews}" var="reviews">
                                    <tr>
                                        <td align="left">${reviews.getProductID() }</td>
                                        <td align="left">${reviews.getUsername()}</td>
                                        <td>${reviews.getSosao() }</td>
                                        <td align="left" class="text-truncate">${reviews.getComment()}</td>
                                        <td>${reviews.getTimeReviews() }</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
                <!-- Bang quan ly tai khoan -->
                <div class="tab-pane fade" id="tab-pane-2">
                    <h2>Danh sách tài khoản</h2>


                    <table class="table bg-white rounded shadow-sm  table-hover" id="">
                        <thead>

                        <tr>
                            <th scope="col">Tài khoản</th>
                            <th scope="col">Email</th>
                            <th scope="col">Địa chỉ</th>
                            <th scope="col">Quyền</th>
                            <th scope="col">Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ListAccount}" var="account">
                            <tr>
                                <td scope="row">${account.getUsername()}</td>
                                <td class="text-truncate" scope="row">${account.getEmail()}</td>
                                <td class="text-truncate" scope="row">${account.getAddress()}</td>
                                <td scope="row" width="60">${account.getRole()}</td>
                                <td scope="row"><c:if
                                        test="${!sessionScope.acc.getUsername().equals(account.getUsername())}">
                                    <a class="btn btn-primary" style="text-decoration: none;"
                                       class="fw-bold"
                                       href="admin/setrole?username=${account.getUsername()}">Set
                                        role</a> | <a class="btn btn-danger"
                                                      href="admin/xoataikhoan?username=${account.getUsername()}">Xóa</a>
                                </c:if></td>
                            </tr>
                        </c:forEach>



                        </tbody>
                    </table>

                    <span style="text-align: center;">${mess}</span>
                </div>
                <!-- Bang quan ly san pham -->
                <div class="tab-pane fade active show" id="tab-pane-1">
                    <h2>Danh sách sản phẩm</h2>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#themsanpham">Thêm sản phẩm</button>
                    <!-- Modal -->
                    <div class="modal fade" id="themsanpham" tabindex="-1"
                         role="dialog" aria-labelledby="exampleModalCenterTitle"
                         aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Thêm
                                        sản phẩm</h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <form class="form-user" method="post" action="admin"
                                          enctype="multipart/form-data">
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" name="action"
                                                   value="themsanpham">
                                        </div>
                                        <div class="form-group">
                                            <label>Mã sản phẩm</label> <input readonly="readonly"
                                                                                 type="text" class="form-control" name="ProductID"
                                                                                 value="${pDAO.getLastProductID()+1}">
                                        </div>
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label> <input type="text"
                                                                                 class="form-control" name="tensanpham"
                                                                                 value="${product.getProductName()}">
                                        </div>

                                        <div class="form-group">
                                            <label>Phân loại</label>
                                            <div>
                                                <select name="phanloai" class="form-control">
                                                    <c:forEach items="${CateDAO.getAllCategory()}"
                                                               var="category">

                                                        <c:if
                                                                test="${product.getCategoryID()==category.getIdCategory()}">
                                                            <option selected="selected">${category.getNameCategory()}</option>
                                                        </c:if>

                                                        <c:if
                                                                test="${product.getCategoryID()!=category.getIdCategory()}">
                                                            <option>${category.getNameCategory()}</option>
                                                        </c:if>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            <textarea class="form-control" name="mota" rows="3">
                                                ${product.getDescription()}
                                            </textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Giá</label> <input type="text" class="form-control"
                                                                       name="gia" value="${product.getPrice()}">
                                        </div>
                                        <div class="form-group">
                                            <label>Số lượng</label> <input type="text"
                                                                             class="form-control" name="soluongkho"
                                                                             value="${product.getStockQuantity()}">
                                        </div>
                                        <div class="form-group">
                                            <label>Màu</label> <input type="text" class="form-control"
                                                                       name="mau" value="${product.getColor()}">
                                        </div>
                                        <div class="form-group">
                                            <label>Hình ảnh</label> <input type="file"
                                                                             class="form-control" name="img">
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Thêm
                                                sản phẩm</button>
                                        </div>

                                    </form>
                                </div>


                            </div>

                        </div>
                    </div>
                    <!-- modal end -->
                    <table class="table bg-white rounded shadow-sm  table-hover" id="">
                        <thead>

                        <tr>
                            <th scope="col" width="50">ID</th>
                            <th scope="col" width="350">Tên sản phẩm</th>
                            <th scope="col">Phân loại</th>
                            <th scope="col">Giá</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Màu</th>
                            <th scope="col">Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ListProduct}" var="product">
                            <tr>
                                <td scope="row">${product.getProductID()}</td>

                                <td scope="row"><img class=""
                                                     src="img/${product.getImgPath()}" alt="" style="width: 50px;">
                                        ${product.getProductName()}</td>

                                <td scope="row">${CateDAO.getCategoryByID(product.getCategoryID())}</td>

                                <td scope="row">${product.getUnit_price()}${product.getPrice()}</td>

                                <td scope="row">${product.getStockQuantity()}</td>
                                <td scope="row">${product.getColor()}</td>
                                <td scope="row">
                                    <button type="button" class="btn btn-primary"
                                            data-toggle="modal"
                                            data-target="#suasanpham${product.getProductID()}">Sửa</button>
                                    | <a class="btn btn-danger"
                                         href="admin?action=xoasanpham&ProductID=${product.getProductID()}">Xóa</a>
                                </td>

                            </tr>

                            <!-- modal sua san pham -->
                            <div class="modal fade"
                                 id="suasanpham${product.getProductID()}" tabindex="-1"
                                 role="dialog" aria-labelledby="exampleModalCenterTitle"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered"
                                     role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLongTitle">Thêm
                                                sản phẩm</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-user" method="post" action="admin"
                                                  enctype="multipart/form-data">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="action"
                                                           placeholder="" value="suasanpham">
                                                </div>
                                                <div class="form-group">
                                                    <label>Mã sản phẩm</label> <input type="text"
                                                                                         class="form-control" name="ProductID" placeholder=""
                                                                                         value="${product.getProductID()}" readonly="readonly">
                                                </div>
                                                <div class="form-group">
                                                    <label>Tên sản phẩm</label> <input type="text"
                                                                                         class="form-control" name="tensanpham"
                                                                                         value="${product.getProductName()}">
                                                </div>

                                                <div class="form-group">
                                                    <label>Phân loại</label>
                                                    <div>
                                                        <select name="phanloai" class="form-control">
                                                            <c:forEach items="${CateDAO.getAllCategory()}"
                                                                       var="category">

                                                                <c:if
                                                                        test="${product.getCategoryID()==category.getIdCategory()}">
                                                                    <option selected="selected">${category.getNameCategory()}</option>
                                                                </c:if>

                                                                <c:if
                                                                        test="${product.getCategoryID()!=category.getIdCategory()}">
                                                                    <option>${category.getNameCategory()}</option>
                                                                </c:if>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Mô tả</label>
                                                    <textarea class="form-control" name="mota" rows="3">
                                                            ${product.getDescription()}
                                                    </textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label>Giá</label> <input type="text"
                                                                               class="form-control" name="gia"
                                                                               value="${product.getPrice()}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Số lượng trong kho</label> <input type="text"
                                                                                               class="form-control" name="soluongkho"
                                                                                               value="${product.getStockQuantity()}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Màu</label> <input type="text"
                                                                               class="form-control" name="mau"
                                                                               value="${product.getColor()}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Hình ảnh</label><input type="file"
                                                                                    class="form-control" name="img"
                                                                                    value="img/${product.getImgPath()}"><img
                                                        class=" py-3" src="img/${product.getImgPath()}" alt=""
                                                        style="width: 50px;">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Sửa
                                                    sản phẩm</button>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- end modal sua san pham -->
                        </c:forEach>

                        </tbody>
                    </table>

                    <span style="text-align: center;">${mess}</span>
                </div>

            </div>


        </div>
    </div>
</div>
<!-- /#page-content-wrapper -->

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    /* var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function() {
        el.classList.toggle("toggled");
    };
     */
    var isNew = true;
    var studid = null;
    //Add Records
    function addDiscount() {
        if (true) {
            var url = "";
            var data = "";
            var method;
            const code = $('#code').val();
            const value = $('#value').val();
            if (isNew == true) {
                url = 'http://localhost:8080/admin/them';
                data = $("#frmDiscount").serialize();
                method = 'POST'
            }
            $.ajax({
                type : method,
                url : url,
                dataType : "JSON",
                data : data,
                success : function(data) {
                    $('#code').val("");
                    $('#value').val("");
                    console.log(data);
                    getall();
                    if (data.status == "success") {
                        alert("Record Addedd");
                    } else {
                        alert("Record Updateedddd");
                    }
                }
            });

        }
    }
</script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

</script>
</body>

</html>