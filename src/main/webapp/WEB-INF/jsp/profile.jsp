<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Template</title>
    <link rel="stylesheet" href="style.css">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
            rel="stylesheet">
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
            rel="stylesheet" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  </head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container light-style flex-grow-1 container-p-y">

  <div class="mess py-2 mb-4">
    <h4 class="font-weight-bold  text-center">Thông tin tài khoản</h4>

    <c:if test="${status}">
      <h4 style="color: green" class="font-weight-bold text-center">${mess}</h4>
    </c:if>
    <c:if test="${status==false}">
      <h4 style="color: red"
          class="font-weight-bold text-red  text-center">${mess}</h4>
    </c:if>


  </div>

  <div class="card overflow-hidden">
    <div class="row no-gutters row-bordered row-border-light">
      <div class="col-md-3 pt-0">
        <div class="list-group list-group-flush account-settings-links">
          <a class="list-group-item list-group-item-action active"
             data-toggle="list" href="#account-general">Thông tin</a> <a
                class="list-group-item list-group-item-action" data-toggle="list"
                href="#account-change-password">Đổi mật khẩu</a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="tab-content">

          <div class="tab-pane fade active show" id="account-general">

            <hr class="border-light m-0">
            <div class="card-body">

              <form action="" method="post">
                <div class="form-group">
                  <label class="form-label">Tài khoản</label> <input
                        type="text" class="form-control mb-1" readonly="readonly"
                        value="${sessionScope.acc.getUsername() }">
                </div>
                <div class="form-group">
                  <label class="form-label">E-mail</label> <input type="text"
                                                                  class="form-control mb-1"
                                                                  value="${sessionScope.acc.getEmail()}">
                </div>
                <div class="form-group">
                  <label class="form-label">Địa chỉ</label> <input type="text"
                                                                     class="form-control mb-1"
                                                                     value="${sessionScope.acc.getAddress()}">
                </div>
              </form>




            </div>
          </div>
          <div class="tab-pane fade" id="account-change-password">
            <div class="card-body pb-2">
              <form action="profile" method="post">
                <div class="form-group">
                  <input name="action" value="changepass" type="hidden"
                         class="form-control">
                </div>
                <div class="form-group">
                  <label class="form-label">Mật khẩu hiện tại</label> <input
                        required name="currentPassword" type="password"
                        class="form-control">
                </div>
                <div class="form-group">
                  <label class="form-label">Mật khẩu mới</label> <input
                        required name="newPassword" type="password"
                        class="form-control">
                </div>
                <div class="form-group">
                  <label class="form-label">Nhập lại mật khẩu</label> <input
                        required name="againPassword" type="password"
                        class="form-control">
                </div>
                <div class="form-group text-right mt-3">
                  <button type="submit" class="btn btn-primary">Thay
                    đổi</button>
                  &nbsp;
                  <button type="reset" class="btn btn-default">Hủy</button>
                </div>
              </form>

            </div>
          </div>
          <div class="tab-pane fade" id="account-info">
            <div class="card-body pb-2"></div>
          </div>



        </div>
      </div>
    </div>
  </div>
</div>
<script data-cfasync="false"
        src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

</script>
</body>

</html>