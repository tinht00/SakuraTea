<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sách khách hàng</title>

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
						<a href="admin/index.htm" class="site_title"><img src="css/images/logo-lucky.png" style="background-color: white; border-radius: 15px" width="48px" height="auto"> <span>Lucky Tea</span></a>
					</div>

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
                                    <li><a><i class="fa fa-edit"></i> Quản lý loại sản phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="loai/ThemLoaiSanPham.htm">Thêm loại sản phẩm</a></li>
                                            <li><a href="loai/DanhSachLoaiSanPham.htm">Danh sách loại sản phẩm</a></li>
                                        </ul>
                                    </li>

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
										<li><a href="phanhoi/DanhSachPhanHoi.htm">Danh sách phản hồi
												</a></li>
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
								Danh Sách Sản Phẩm <small></small>
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
															<th>Mã sản phẩm</th>
															<th>Tên sản phẩm</th>
															<th>Giá</th>
															<th>Mô tả</th>
															<th>Hình</th>
															<th>Mã loại</th>
															<th>Tình Trạng</th>
															<th>Chức năng</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="sp" items="${sanphams}">
															<tr>
																<td>${sp.masp}</td>
																<td>${sp.tensp}</td>
																<td>${sp.gia}</td>
																<td>${sp.mota}</td>
																<td><img style="width: 80px; height: 80px"
																	src="admin/hinh/${sp.hinh}"></td>
																<td>${sp.loaisanpham.tenloai}</td>
																<td>${sp.tinhtrang?"Ngừng kinh doanh":"Còn kinh doanh"}</td>
																<td>
																	<button id="#${sp.masp}_Update" class="btn btn-info btn-xs" data-toggle="modal"
																		data-target="#${sp.masp}_Update">Cập Nhật</button>
																	<button id="#${sp.masp}_Delete" class="btn btn-danger btn-xs"
																		data-toggle="modal" data-target="#${sp.masp}_Delete">Xóa</button>
																</td>
															</tr>
															<!--Modal Edit-->
															<div class="modal fade" id="${sp.masp}_Update">
																<form:form method="post" modelAttribute="sanpham"
																	action="sanpham/update.htm">
																	<div class="modal-dialog modal-dialog-centered"
																		role="document">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title">Cập nhật sản phẩm</h5>
																				<button type="button" class="close"
																					data-dismiss="modal">
																					<span>&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">

																				<form:hidden path="masp" readonly="true"
																					value="${sp.masp}" class="form-control" />

																				<div class="form-group">
																					<label class="col-form-label">Tên sản phẩm</label>
																					<form:input id="${sp.masp}_tensp" path="tensp" value="${sp.tensp}"
																						class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Giá</label>
																					<form:input id="${sp.masp}_gia" path="gia" value="${sp.gia}"
																						class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Mô tả</label>
																					<form:input id="${sp.masp}_mota" path="mota" value="${sp.mota}"
																						class="form-control" />
																				</div>
																				<div class="form-group">
																					<label  class="col-form-label">Hình</label>
																					<form:input id="${sp.masp}_hinh" type="file" path="hinh"
																						value="${sp.hinh}" class="form-control" />
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Mã loại</label>
																					<form:select id="${sp.masp}_maloai" path="loaisanpham.maloai"
																						class="form-control form-control">
																						<c:forEach var="dp" items="${loaisanphams}">
																							<c:if test="${dp.tenloai == sp.loaisanpham.tenloai}">
																								<form:option selected="selected"
																									value="${dp.maloai}">${dp.tenloai}</form:option>
																							</c:if>
																							<c:if test="${dp.tenloai != sp.loaisanpham.tenloai}">
																								<form:option value="${dp.maloai}">${dp.tenloai}</form:option>
																							</c:if>
																						</c:forEach>
																					</form:select>
																				</div>
																				<div class="modal-footer">
																					<button class="btn btn-secondary"
																						data-dismiss="modal">Đóng</button>
																					<button id="${sp.masp}_action" class="btn btn-primary">Lưu thay
																						đổi</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</form:form>
															</div>



															<!--Modal Delete-->
															<div class="modal fade" id="${sp.masp}_Delete">
																<form:form method="post" modelAttribute="sanpham"
																	action="sanpham/delete.htm">
																	<div class="modal-dialog modal-dialog-centered"
																		role="document">
																		<div class="modal-content">
																			<div class="modal-body">
																				<div class="form-group" style="text-align: center;">
																					<img src="admin/images/info.png">
																					<h2 style="color: #ff0000;">THÔNG BÁO!!!</h2>
																					<p style="font-size: 20px; color: black;">Bạn
																						thật sự cần xóa sản phẩm ${sp.tensp} này?</p>
																					<form:hidden path="masp" value="${sp.masp}" />
																				</div>
																			</div>
																			<div class="modal-footer"
																				style="margin: 0 auto; text-align: center;">
																				<button class="btn btn-secondary"
																					data-dismiss="modal">Đóng</button>
																				<button id="${sp.masp}_Xoa" class="btn btn-primary">Xóa</button>
																			</div>
																		</div>
																	</div>
																</form:form>
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