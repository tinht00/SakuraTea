<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sTinht"%>
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
			<ul class="navbar-nav ml-5">
				<li class="nav-item active pd-nav"><a href="Home.htm"
					class="nav-link">TRANG CHỦ</a></li>
				<!-- <li class="nav-item pd-nav"><a href="" class="nav-link">GIỚI
						THIỆU</a></li> -->
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
				<li class="nav-item pd-nav"><a href="Home/DoAnVat.htm"
					class="nav-link">ĐỒ ĂN VẶT</a></li>
				<!-- <li class="nav-item pd-nav"><a href="#" class="nav-link">HƯỚNG
						DẪN ĐẶT HÀNG</a></li> -->
				<li class="nav-item pd-nav"><a href="Home/LienHe.htm"
					class="nav-link" style="">LIÊN HỆ</a></li>


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




				
				<%-- <li class="nav-item dropdown pd-nav"><a href="MyCart.htm"
					class="nav-link dropdown btn" id="navbardrop"
					data-toggle="dropdown"> <img alt="shopping cart"
						style="margin-top: -1rem;" width="48" height="48"
						src="css/images/shopping_basket_48px.png">
				</a>
					<div class="dropdown-menu"
						style="margin-left: -16vh; width: 400px;">
						<div>
							<c:set var="s" value="0"></c:set>
							<c:forEach var="pr" items="${sessionScope.cart}">
								<c:set var="s"
									value="${s+ (pr.gia + pr.giaTopping) * pr.quantity}"></c:set>

								<div class="dropdown-item" style="text-align: start;">
									<img alt="" src="admin/hinh/${pr.sp.hinh}" height="50px"
										width="50px"> <span> ${pr.sp.tensp} : ${pr.gia }
										VNĐ</span><span style="margin-left: 20px"> <a
										href="delete_home/${pr.stt }.htm"> <img alt=""
											src="css/images/remove-cart.png" height="26px" width="26px">

									</a></span>

								</div>

								<br>


							</c:forEach>
							<hr>
							<div style="text-align: center;">
								<label for="tongtien">Tổng tiền:</label><span> ${s} VNĐ</span>
							</div>
							<br>
						</div>
						<div style="text-align: center">
							<a href="MyCart.htm" class="btn btn-info">Thanh Toan</a>
						</div>
					</div></li>  --%>




			
					
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
					
		</div>
		
		<!--end container -->


	</div>
</nav>
