<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sách đơn đặt hàng</title>

<!-- Bootstrap -->
<link href="admin/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="admin/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="admin/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->
<link
	href="admin/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="admin/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="admin/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="admin/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="admin/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="admin/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
					<a href="admin/index.htm" class="site_title"><img src="css/images/logo-lucky.png" style="background-color: white; border-radius: 15px" width="48px" height="auto"> <span>Lucky Tea</span></a></div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic"></div>
						<div class="profile_info"></div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> Trang chủ <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="admin/index.htm">Dashboard</a></li>
									</ul></li>

								<!--Quản lý tài khoản-->
								<li><a><i class="fa fa-edit"></i> Quản lý người dùng <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="nguoidung/ThemNguoiDung.htm">Thêm người
												dùng</a></li>
										<li><a href="nguoidung/DanhSachNguoiDung.htm">Danh
												sách người dùng</a></li>
									</ul></li>

								<!--Quản lý loại sản phẩm-->
								<li><a><i class="fa fa-edit"></i> Quản lý loại sản phẩm
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="loai/ThemLoaiSanPham.htm">Thêm loại sản
												phẩm</a></li>
										<li><a href="loai/DanhSachLoaiSanPham.htm">Danh sách
												loại sản phẩm</a></li>
									</ul></li>

								<!--Quản lý sản phẩm-->
								<li><a><i class="fa fa-edit"></i> Quản lý sản phẩm <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="sanpham/ThemSanPham.htm">Thêm sản phẩm</a></li>
										<li><a href="sanpham/DanhSachSanPham.htm">Danh sách
												sản phẩm</a></li>
									</ul></li>



								<!--Quản lý phản hồi-->
								<li><a><i class="fa fa-edit"></i> Quản lý phản hồi <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="phanhoi/DanhSachPhanHoi.htm">Danh sách
												phản hồi </a></li>
									</ul></li>
									
								<!--Quản lý đơn đặt hàng-->
								<li><a><i class="fa fa-edit"></i> Quản lý đơn đặt hàng
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="dondathang/DanhSachDonDatHang.htm">Quản
												lý đơn đặt hàng </a></li>
									</ul></li>


							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="HomeLogout.htm"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>


					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								Danh Sách Đơn Đặt Hàng <small></small>
							</h3>
						</div>

					</div>

					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">

								<div class="x_content">
									<div class="row">
										<div class="col-sm-12">
											<div class="card-box table-responsive">
												<table id="datatable-keytable"
													class="table table-striped table-bordered">
													<thead>
														<tr>
															<th>Mã đơn đặt hàng</th>
															<th>Họ tên</th>
															<th>Số điện thoại</th>
															<th>Địa chỉ</th>
															<th>Ngày đặt</th>
															<th>Giờ giao</th>
															<th>Tình trạng</th>
															<th>Ghi chú</th>
															<th>Tổng tiền</th>
															<th>Chức năng</th>

														</tr>
													</thead>


													<tbody>
														<c:forEach var="dh" items="${dondathangs}">
															<tr>
																<td>${dh.madh}</td>
																<td>${dh.hoten}</td>
																<td>${dh.sodt}</td>
																<td>${dh.diachi}</td>
																<td>${dh.ngaydat}</td>
																<td>${dh.giogiao}</td>
																<td>${dh.tinhtrang}</td>
																<td>${dh.ghichu}</td>
																<td>${dh.tongtien}</td>
																<td>
																	<button class="btn btn-info btn-xs" data-toggle="modal"
																		data-target="#${dh.madh}_Update">Cập Nhật</button>
																		<a class="btn btn-danger btn-xs" href="dondathang/delete/${dh.madh}.htm">Xóa</a>
																	<!--  <button class="btn btn-danger btn-xs"
																		data-toggle="modal" data-target="#${dh.madh}_Delete">Xóa</button>-->
																</td>
															</tr>
															<!--Modal Edit-->
															<div class="modal fade" id="${dh.madh}_Update">
																<form:form method="post" modelAttribute="dondathang"
																	action="dondathang/update.htm">
																	<div class="modal-dialog modal-dialog-centered"
																		role="document">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title">Cập nhật đơn đặt hàng</h5>
																				<button type="button" class="close"
																					data-dismiss="modal">
																					<span>&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">

																				<div class="form-group">
																					<label class="col-form-label">Mã đơn hàng</label>
																					<form:input readonly="true" path="madh"
																						value="${dh.madh}" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Họ tên</label>
																					<form:input path="hoten" value="${dh.hoten}"
																						readonly="true" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Số điện thoại</label>
																					<form:input path="sodt" value="${dh.sodt}"
																						readonly="true" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Địa chỉ</label>
																					<form:input path="diachi" value="${dh.diachi}"
																						readonly="true" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Ngày đặt</label>
																					<form:input path="ngaydat" readonly="true"
																						value="${dh.ngaydat}" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Giờ giao</label>
																					<form:input path="giogiao" type="time" min="08:00" max="17:00" readonly="true"
																						value="${dh.giogiao}" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Tình trạng</label>
																			
																					<c:choose>
																					
																			<c:when test="${dh.tinhtrang == 'Đã giao'}">
																			<form:select path="tinhtrang"
																			class="form-control form-control">
																			<form:option value="">Chọn tình trạng</form:option>
																			<form:option selected="selected" value="Đã giao">Đã giao</form:option>
																			<form:option  value="Chưa giao">Chưa giao</form:option>
																			<form:option  value="Đã hủy">Đã hủy</form:option>
																		</form:select>
																	</c:when>
																	<c:when test="${dh.tinhtrang == 'Chưa giao'}">
																			<form:select path="tinhtrang"
																			class="form-control form-control">
																			<form:option value="">Chọn tình trạng</form:option>
																			<form:option  value="Đã giao">Đã giao</form:option>
																			<form:option selected="selected" value="Chưa giao">Chưa giao</form:option>
																			<form:option  value="Đã hủy">Đã hủy</form:option>
																		</form:select>
																	</c:when>
																	<c:when test="${dh.tinhtrang == 'Đã hủy'}">
																			<form:select path="tinhtrang"
																			class="form-control form-control">
																			<form:option value="">Chọn tình trạng</form:option>
																			<form:option  value="Đã giao">Đã giao</form:option>
																			<form:option  value="Chưa giao">Chưa giao</form:option>
																			<form:option  selected="selected" value="Đã hủy">Đã hủy</form:option>
																		</form:select>
																	</c:when>
																</c:choose>
																						
																						
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Ghi chú </label>
																					<form:input path="ghichu" readonly="true"
																						value="${dh.ghichu}" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Tổng tiền</label>
																					<form:input path="tongtien" readonly="true"
																						value="${dh.tongtien}" class="form-control" />
																				</div>

																				<div class="modal-footer">
																					<button class="btn btn-secondary"
																						data-dismiss="modal">Đóng</button>
																					<button class="btn btn-primary">Lưu thay
																						đổi</button>
																				</div>
																			</div>
																		</div>
																</form:form>
															</div>
															<!--Modal Delete-->
															<div class="modal fade" id="${dh.madh}_Delete">
																<div class="modal-dialog modal-dialog-centered"
																	role="document">
																	<div class="modal-content">
																		<div class="modal-body">
																			<div class="form-group" style="text-align: center;">
																				<img src="admin/images/info.png">
																				<h2 style="color: #ff0000;">THÔNG BÁO!!!</h2>
																				<p style="font-size: 20px; color: black;">Bạn
																					thật sự cần xóa tài khoản ${dh.madh}?</p>

																			</div>
																		</div>
																		<div class="modal-footer"
																			style="margin: 0 auto; text-align: center;">
																			<a href="dondathang/delete/${dh.madh}.htm"><button
																					class="btn btn-primary">Xóa</button></a>
																			<button class="btn btn-secondary"
																				data-dismiss="modal">Đóng</button>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>


			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right"></div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>
	<!-- jQuery -->
	<script src="admin/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="admin/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="admin/vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="admin/vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script src="admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="admin/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="admin/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script
		src="admin/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script
		src="admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="admin/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="admin/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="admin/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="admin/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="admin/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
	<script src="admin/vendors/jszip/dist/jszip.min.js"></script>
	<script src="admin/vendors/pdfmake/build/pdfmake.min.js"></script>
	<script src="admin/vendors/pdfmake/build/vfs_fonts.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="admin/build/js/custom.min.js"></script>
	<script src="admin/vendors/Chart.js/dist/Chart.min.js"></script>
</body>
</html>