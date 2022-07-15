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
<title>Danh sách phản hồi</title>

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
										<li><a href="sanpham/DanhSachSanPham.htm">Danh sách sản
												phẩm</a></li>
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
								Danh Sách Phản Hồi <small></small>
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
															<td>Mã phản hồi</td>
															<th>Họ tên</th>
															<th>Email</th>
															<th>Ngày</th>
															<th>Trạng thái</th>
															<th>Nội dung</th>
															<th>Chức năng</th>
															

														</tr>
													</thead>


													<tbody>
														<c:forEach var="ph" items="${phanhois}">
															<tr>
																<td>${ph.maph}</td>
																<td>${ph.hoten}</td>
																<td>${ph.email}</td>
																<td>${ph.ngay}</td>
																<td>${ph.trangthai?"Đã trả lời":"Chưa trả lời"}</td>
																<td>${ph.noidung}</td>
																<td>
																	<button class="btn btn-danger btn-xs" id="${ph.email}_Delete"
																		data-toggle="modal" data-target="#${ph.maph}_Delete">Xóa</button>
																	<button class="btn btn-xs" data-toggle="modal" id="${ph.email}_Traloi"
																		data-target="#${ph.maph}_Email">Trả lời</button>
																</td>
																
															</tr>



															<!--Modal Delete-->
															<div class="modal fade" id="${ph.maph}_Delete">
																<div class="modal-dialog modal-dialog-centered"
																	role="document">
																	<div class="modal-content">
																		<div class="modal-body">
																			<div class="form-group" style="text-align: center;">
																				<img src="admin/images/info.png">
																				<h2 style="color: #ff0000;">THÔNG BÁO!!!</h2>
																				<p style="font-size: 20px; color: black;">Bạn
																					thật sự cần phản hồi của ${ph.hoten}?</p>

																			</div>
																		</div>
																		<div class="modal-footer"
																			style="margin: 0 auto; text-align: center;">
																			<a href="phanhoi/delete/${ph.maph}.htm"><button
																					class="btn btn-primary" id="${ph.email}_Xoa">Xóa</button></a>
																			<button class="btn btn-secondary"
																				data-dismiss="modal">Đóng</button>
																		</div>
																	</div>
																</div>
															</div>
															<!--Modal Email-->
															<div class="modal fade" id="${ph.maph}_Email">
																<form:form modelAttribute="phanhoi" method="post"
																	action="phanhoi/send.htm">
																	<div class="modal-dialog modal-dialog-centered"
																		role="document">
																		<div class="modal-content">
																			<div class="modal-header">
																				<h5 class="modal-title">Trả lời phản hồi</h5>
																				<button type="button" class="close"
																					data-dismiss="modal">
																					<span>&times;</span>
																				</button>
																			</div>
																			<div class="modal-body">
																				<form:hidden path="maph" value="${ph.maph}"
																					class="form-control" />
																				<form:hidden path="hoten" value="${ph.hoten}"
																					class="form-control" />
																					<form:hidden path="email" value="${ph.email}"
																					class="form-control" />
																					<form:hidden path="noidung" value="${ph.noidung}"
																					class="form-control" />
																					<form:hidden path="ngay" value="${ph.ngay}"
																					class="form-control" />
																				<input style="display: none"
																					value="tinnguyenngoc77@gmail.com" name="from"
																					placeholder="From">
																				<div class="form-group">
																					<label class="col-form-label">Email</label> <input
																						name="to" class="form-control" value="${ph.email}"
																						placeholder="To">
																				</div>
																				<div class="form-group">
																					<label class="col-form-label" >Tiêu đề</label> <input id="${ph.email}_tieude"
																						name="subject" class="form-control"
																						placeholder="Subject">
																				</div>
																				<div class="form-group">
																					<label class="col-form-label">Nội dung phản
																						hồi</label>
																					<textarea name="body" class="form-control" id="${ph.email}_noidung"
																						placeholder="Body" rows="3" cols="30"></textarea>
																				</div>
																			</div>
																			<div class="modal-footer">
																				<button class="btn btn-secondary"
																					data-dismiss="modal">Đóng</button>
																				<button class="btn btn-primary" id="${ph.email}_gui">Gửi</button>
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