<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sTinht"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<title>Lucky Tea</title>
<link rel="shortcut icon" type="image/png" href="./css/images/logo-lucky.png" style="background-color:white"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- Font Awesome -->
<link href="admin/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="./css/Home.css" />





<style type="text/css">
body {
	/* font-family: 'lato', sans-serif; */
	
}

.nav-link {
	font-weight: bold;
	font-size: 18px;
}

.nav-item {
	padding: 0rem 19px;
}

.container-fluid {
	margin: 0px 3rem;
}

.container {
	max-width: 1100px;
	margin-left: auto;
	margin-right: auto;
	padding-left: 0px;
	padding-right: 5px;
}

ul {
	padding: 3.5rem;
	background-color: #ffffff;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	text-align: center;
}

.form-thongtintt {
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
	padding: 50px 0px 50px 0px;
}

h2 {
	font-size: 26px;
	margin: 20px 0;
	text-align: center;
}

h2 small {
	font-size: 0.5em;
}

.responsive-table li {
	border-radius: 3px;
	padding: 25px 30px;
	display: flex;
	justify-content: space-between;
	margin-bottom: 25px;
}

.responsive-table .table-header {
	background-color: #ddd;
	font-size: 16px;
	font-weight: bold;
	text-transform: uppercase;
	letter-spacing: 0.03em;
	text-align: center;
}

.responsive-table .table-row {
	background-color: #ffffff;
	box-shadow: 0px 0px 9px 0px rgba(0, 0, 0, 0.1);
	text-align: center;
	align-items: center;
}

.responsive-table .col-1 {
	flex-basis: 15%;
	max-width: 15%;
}

.responsive-table .col-2 {
	flex-basis: 25%;
	max-width: 25%;
}

.responsive-table .col-3 {
	flex-basis: 15%;
}

.responsive-table .col-4 {
	flex-basis: 15%;
}

.responsive-table .col-5 {
	flex-basis: 15%;
}

.responsive-table .col-6 {
	flex-basis: 6%;
}

@media all and (max-width: 768px) {
	.responsive-table .table-header {
		display: none;
	}
	.responsive-table li {
		display: block;
	}
	.responsive-table .col {
		flex-basis: 100%;
	}
	.responsive-table .col {
		display: flex;
		padding: 10px 0;
	}
	.responsive-table .col:before {
		color: #6C7A89;
		padding-right: 10px;
		content: attr(data-label);
		flex-basis: 50%;
		text-align: center;
	}
}

/* -- quantity box -- */
.quantity {
	display: inline-block;
}

.quantity .input-text.qty {
	width: 35px;
	height: 39px;
	padding: 0 5px;
	text-align: center;
	background-color: transparent;
	border: 1px solid #efefef;
}

.quantity.buttons_added {
	text-align: left;
	position: relative;
	white-space: nowrap;
	vertical-align: top;
}

.quantity.buttons_added input {
	display: inline-block;
	margin: 0;
	vertical-align: top;
	box-shadow: none;
}

.quantity.buttons_added .minus, .quantity.buttons_added .plus {
	padding: 7px 10px 8px;
	height: 39px;
	background-color: #ffffff;
	border: 1px solid #efefef;
	cursor: pointer;
}

.quantity.buttons_added .minus {
	border-right: 0;
}

.quantity.buttons_added .plus {
	border-left: 0;
}

.quantity.buttons_added .minus:hover, .quantity.buttons_added .plus:hover
	{
	background: #eeeeee;
}

.quantity input::-webkit-outer-spin-button, .quantity input::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	margin: 0;
}

.quantity.buttons_added .minus:focus, .quantity.buttons_added .plus:focus
	{
	outline: none;
}



/* shopping cart */

.shopping-cart-items{
	padding: 4px;
	
}


.clearfix:after {
  content: "";
  display: table;
  clear: both;
}

.dropdown-menu img {
  float: left;
margin-top: -10px;
  margin-right: 12px;
  max-width: 70px;
  max-height: 70px;
}
.dropdown-menu li {
list-style:none;
  margin-bottom: 18px;
}

.dropdown-menu .img_remove img {
float: right;
    margin-right: 20px;
    margin-top: -4px;
    max-width: 70px;
    max-height: 70px;
}
ul .shopping-cart-items {
	
	background-color: #ffffff;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	text-align: justify;
}
.dropdown-menu .item-name {
  display: block;
  font-size: 16px;
  font-weight: bold;
  margin-top: 15px;
}

.dropdown-menu .item-price {
  color: #00c0cb;
  margin-right: 8px;
  font-weight: bold;
}
.dropdown-menu .item-quantity {
  color: #ABB0BE;
}

.badge {
  background-color: red;
  border-radius: 10px;
  color: white;
  display: inline-block;
  font-size: 12px;
  line-height: 1;
  padding: 3px 7px;
  text-align: center;
  vertical-align: middle;
  white-space: nowrap;
}

</style>
</head>
<body>
	<!--Navigation-->
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="container-fluid">
			<a class="navbar-brand ml-5" href="Home.htm"><img
				style="margin-left: 7rem" src="./css/images/logo-lucky.png"
				width="105vh" height="105vh"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse"
				style="margin-top: 8px; padding-left: 5rem" id="navbarCollapse">
				<ul class="navbar-nav ml-5"
					style="padding: 0; background-color: #f8f9fa; box-shadow: none">
					<li class="nav-item active pd-nav"><a href="Home.htm"
						class="nav-link">TRANG CHỦ</a>
					<li class="nav-item dropdown pd-nav"><a
						class="nav-link dropdown-toggle" id="navbardrop"
						data-toggle="dropdown"> THỨC UỐNG </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="Home/ThucUong/TraSua.htm">TRÀ
								SỮA</a> <a class="dropdown-item" href="Home/ThucUong/TraTraiCay.htm">TRÀ
								TRÁI CÂY</a>
							<hr>
							<a class="dropdown-item pd-nav" href="Home/ThucUong/Topping.htm">TOPPING</a>
						</div></li>
					<li class="nav-item pd-nav"><a
						href="Home/ThucUong/DoAnVat.htm" class="nav-link">ĐỒ ĂN VẶT</a></li>

					<li class="nav-item pd-nav"><a href="Home/LienHe.htm"
						class="nav-link">LIÊN HỆ</a></li>

					<li class="nav-item  pd-nav"><c:set var="dauhieu"
							value="${sessionScope.DAUHIEU}" /> <c:if
							test="${dauhieu == 'dn'}">

							<li><a href="thongtin/ThongTinCaNhan.htm" class="nav-link">Xin
									chào ${hoten}</a></li>
							<li><a href="HomeLogout.htm" class="nav-link"
								style="margin-left: 1rem">ĐĂNG XUẤT</a></li>
						</c:if> <c:if test="${dauhieu == null}">
							<li><a href="admin/Login.htm" id="DN" class="nav-link"
								style="margin-right: 5rem"><i class="fa fa-user-o nav-link"></i>ĐĂNG
									NHẬP</a></li>
						</c:if></li>

					<li class="nav-item dropdown pd-nav">
					<a id="cart" class="nav-link dropdown btn" id="navbardrop"
							data-toggle="dropdown"> <img alt="shopping cart"
							style="margin-top: -1rem;" width="48" height="48"
							src="css/images/shopping_basket_48px.png">
						<c:set var="t" value="0"></c:set> <c:forEach var="pr"
								items="${sessionScope.cart}">
								<c:set var="t" value="${t+ pr.quantity}"></c:set>


							</c:forEach> <span class="badge"
							style="margin-left: -20px; margin-bottom: -7px; position: relative;">${t}</span>
						</a>
					<div class="dropdown-menu"
						style="margin-left: -23vh; width: 350px;">
							<!--end shopping-cart-header -->
							<c:set var="s" value="0"></c:set>
							<c:forEach var="pr" items="${sessionScope.cart}">
								<c:set var="s"
									value="${s+ (pr.gia + pr.giaTopping) * pr.quantity}"></c:set>
								<ul class="shopping-cart-items">
									<li class="clearfix"><img src="admin/hinh/${pr.sp.hinh}"
										alt="${pr.sp.hinh}" /> <span class="item-name">${pr.sp.tensp}</span>

										<span class="item-price">${(pr.gia + pr.giaTopping) * pr.quantity} VNĐ</span>
										<span class="item-quantity">Số lượng: ${pr.quantity }</span> 
										<span class="img_remove"><a
											href="delete_home/${pr.stt }.htm"> <img alt=""
												src="css/images/remove-cart.png" height="26px" width="26px">
										</a></span></li>

								</ul>
							</c:forEach>
							<hr>

							<div style="text-align: center">

								<div class="shopping-cart-total">
									<span >Tổng tiền:</span>
									 <span
										style="color: #00c0cb; font-weight: bold;">${s} VNĐ</span>
								</div>
								<br> <a href="MyCart.htm" class="btn btn-info">THANH
									TOÁN <i class="fa fa-chevron-right"></i>
								</a>
							</div>
					</div></li> 
				</ul>

			</div>
		</div>
	</nav>

	<div class="container">
		<h3 align="center" style="padding: 20px">
			<b>THANH TOÁN</b>
		</h3>
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist"
			style="padding: 40px 62px 40px 60px;">
			<li class="nav-item"><a class="nav-link active"
				id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
				aria-controls="pills-home" aria-selected="true"
				style="width: 430px; border: 1px solid #337ab7;"> Chi tiết giỏ
					hàng</a></li>
			<li style="padding-top: 15px"><img
				src="css/images/chevron_right_32px.png"></li>
			<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
				data-toggle="pill" href="#pills-profile" role="tab"
				aria-controls="pills-profile" aria-selected="false"
				style="width: 430px; text-align: center; border: 1px solid #337ab7;">Điền
					thông tin thanh toán</a></li>
			<li style="width: 1000px;"><br>${thanhtoan}</li>
		</ul>

		<div class="tab-content" id="pills-tabContent">
			<div class="tab-pane fade show active" id="pills-home"
				role="tabpanel" aria-labelledby="pills-home-tab">

				<div class="container">
					<form:form action="update.htm">




						<ul class="responsive-table">
							<li class="table-header">
								<div class="col col-1">Sản phẩm</div>
								<div class="col col-2"></div>
								<div class="col col-3">Giá</div>
								<div class="col col-4">Số lượng</div>
								<div class="col col-5">Tổng tiền</div>
								<div class="col col-6"></div>

							</li>
							<c:set var="s" value="0"></c:set>
							<c:forEach var="pr" items="${sessionScope.cart}">
								<c:set var="s"
									value="${s+ (pr.gia + pr.giaTopping) * pr.quantity}"></c:set>

								<li class="table-row">
									<div class="col col-1" data-label="Hinh">
										<img alt="" src="admin/hinh/${pr.sp.hinh}" height="115px"
											width="115px">
									</div>
									<div class="col col-2" data-label="Ten SP & GhiChu"
										style="text-align: left;">
										<span style="font-weight: 700;">- ${pr.sp.tensp}</span>
										${pr.ghichu}
									</div>
									<div class="col col-3" data-label="Gia SP">${pr.gia } VNĐ</div>
									<div class="col col-4" data-label="So Luong">
										<!-- Quantity -->
										<span class="quantity buttons_added"> <input
											type="button" value="-" class="minus"> <input
											type="number" step="1" min="1" max="" name="quantity"
											value="${pr.quantity }" id="soLuong" value="1" title="Qty"
											class="input-text qty text" size="4" pattern="" inputmode=""
											style="margin-bottom: 5px"> <input type="button"
											value="+" class="plus"> <br> <a
											href="update.htm"><button type="submit"
													class="btn btn info" style="width: 105px;">Cập
													nhật</button></a>
										</span>

										<!-- End Quantity -->

									</div>
									<div class="col col-5" data-label="Tong tien">${(pr.gia + pr.giaTopping) * pr.quantity}
										VNĐ</div>

									<div class="col col-6" data-label="Remove">
										<a href="delete/${pr.stt }.htm"> <img alt=""
											src="css/images/remove-cart.png" height="26px" width="26px">

										</a>
									</div>

								</li>
							</c:forEach>



							<li><p style="font-style: italic; color: red;">*Lưu ý:
									Sau khi kiểm tra xong giỏ hàng, khách hàng vui lòng nhấn chọn
									tab "Điền thông tin thanh toán" để điền thông tin thanh toán và
									đặt hàng.</p></li>
						</ul>


					</form:form>
				</div>


			</div>
			<div class="tab-pane fade form-thongtintt" id="pills-profile"
				role="tabpanel" aria-labelledby="pills-profile-tab">

				<div class="container" style="max-width: 60%">
					<form:form action="thanhtoan.htm" modelAttribute="Dondathang">


						<div class="form-group">

							<label for="hoten">Họ Tên:*</label>
							<form:input class="form-control" id="hoten"
								placeholder="Nhập tên...." path="hoten" required="required" />
						</div>
						<div class="form-group">
							<label for="sdt">Số điện thoại:*</label>
							<form:input class="form-control" pattern="0[0-9\s.-]{9}" id="sdt"
								placeholder="Nhập số điện thoại...." path="sodt"
								required="required" />
						</div>
						<div class="form-group">
							<label for="dc">Địa chỉ:*</label>
							<form:input class="form-control" id="dc"
								placeholder="Nhập địa chỉ...." path="diachi" required="required" />
						</div>
						<div class="form-group">
							<label for="gc">Ghi chú:</label>
							<form:textarea class="form-control" id="gc"
								placeholder="Nhập ghi chú...." path="ghichu" />
						</div>
						<div class="gg">
							<label for="gg">Giờ giao:*</label>
							<form:input type="time" class="form-control"
								style="max-width:150px" min=""  max="17:00"
								id="gg" path="giogiao" required="required" />
						</div>

						<br>

						<br>
						<a href="thanhtoan.htm"><button class="btn btn-info">Thanh
								Toán</button> </a>
					</form:form>


				</div>

			</div>

		</div>

	</div>


	<jsp:include page="../home/footer.jsp"></jsp:include>

	<script type="text/javascript">
		/* Quantity button */
		function wcqib_refresh_quantity_increments() {
			jQuery(
					"div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)")
					.each(
							function(a, b) {
								var c = jQuery(b);
										c.addClass("buttons_added"),
										c
												.children()
												.first()
												.before(
														'<input type="button" value="-" class="minus" />'),
										c
												.children()
												.last()
												.after(
														'<input type="button" value="+" class="plus" />')
							})
		}
				String.prototype.getDecimals
						|| (String.prototype.getDecimals = function() {
							var a = this, b = ("" + a)
									.match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
							return b ? Math.max(0, (b[1] ? b[1].length : 0)
									- (b[2] ? +b[2] : 0)) : 0
						}),
				jQuery(document).ready(function() {
					wcqib_refresh_quantity_increments()
				}),
				jQuery(document).on("updated_wc_div", function() {
					wcqib_refresh_quantity_increments()
				}),
				jQuery(document)
						.on(
								"click",
								".plus, .minus",
								function() {
									var a = jQuery(this).closest(".quantity")
											.find(".qty"), b = parseFloat(a
											.val()), c = parseFloat(a
											.attr("max")), d = parseFloat(a
											.attr("min")), e = a.attr("step");
											b && "" !== b && "NaN" !== b
													|| (b = 0),
											"" !== c && "NaN" !== c || (c = ""),
											"" !== d && "NaN" !== d || (d = 0),
											"any" !== e && "" !== e
													&& void 0 !== e
													&& "NaN" !== parseFloat(e)
													|| (e = 1),
											jQuery(this).is(".plus") ? c
													&& b >= c ? a.val(c)
													: a
															.val((b + parseFloat(e))
																	.toFixed(e
																			.getDecimals()))
													: d && b <= d ? a.val(d)
															: b > 0
																	&& a
																			.val((b - parseFloat(e))
																					.toFixed(e
																							.getDecimals())),
											a.trigger("change")
								});

		/* Current Time */

		var today = new Date();
		var time = today.getHours() + ":" + today.getMinutes();
		document.getElementById("gg").setAttribute("min", time);

	</script>

</body>
</html>