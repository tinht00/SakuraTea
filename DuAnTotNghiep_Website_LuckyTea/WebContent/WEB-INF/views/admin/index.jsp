<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <base href="${pageContext.servletContext.contextPath}/">
        <title>Trang chủ</title>

        <!-- Bootstrap -->
        <link href="admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- NProgress -->
        <link href="admin/vendors/nprogress/nprogress.css" rel="stylesheet">

        <!-- iCheck -->
        <link href="admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">

        <!-- JQVMap -->
        <link href="admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>

        <!-- bootstrap-daterangepicker -->
        <link href="admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <!--<link href="build/css/custom.min.css" rel="stylesheet">-->
        <link href="admin/build/css/custom.min.css" rel="stylesheet" type="text/css"/>
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
                            <div class="profile_pic">
                               
                            </div>
                            <div class="profile_info">
                                
                            </div>
                        </div>
                        <!-- /menu profile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                               
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-home"></i> Trang chủ <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="admin/index.htm">Dashboard</a></li>
                                        </ul>
                                    </li>

                                    <!--Quản lý tài khoản-->
                                    <li><a><i id="QLND"class="fa fa-edit"></i> Quản lý người dùng <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="nguoidung/ThemNguoiDung.htm" id="QLTND">Thêm người dùng</a></li>
                                            <li><a href="nguoidung/DanhSachNguoiDung.htm"id="QLDSND">Danh sách người dùng</a></li>
                                        </ul>
                                    </li>

                                    <!--Quản lý loại sản phẩm-->
                                    <li><a id="QLLSP"><i class="fa fa-edit"></i> Quản lý loại sản phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a id="TLSP" href="loai/ThemLoaiSanPham.htm">Thêm loại sản phẩm</a></li>
                                            <li><a id="DSLSP" href="loai/DanhSachLoaiSanPham.htm">Danh sách loại sản phẩm</a></li>
                                        </ul>
                                    </li>

                                    <!--Quản lý sản phẩm-->
                                    <li><a id="QLSP"><i class="fa fa-edit"></i> Quản lý sản phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a id="TSP" href="sanpham/ThemSanPham.htm">Thêm sản phẩm</a></li>
                                            <li><a id="DSSP" href="sanpham/DanhSachSanPham.htm">Danh sách sản phẩm</a></li>
                                        </ul>
                                    </li>

                                   
                                   <!--Quản lý phản hồi-->
								<li><a><i id="QLPH" class="fa fa-edit"></i> Quản lý phản hồi <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">			
										<li><a id="DSPH" href="phanhoi/DanhSachPhanHoi.htm">Danh sách phản hồi
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
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Lock">
                                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Logout" href="HomeLogout.htm">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
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
                <div class="right_col" role="main" style="text-align: center">
                    <img src="css/images/logo-lucky.png" style="margin-top: 17rem" width="280px" height="auto"> 
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
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
        <!-- Chart.js -->
        <script src="admin/vendors/Chart.js/dist/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="admin/vendors/gauge.js/dist/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="admin/vendors/iCheck/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="admin/vendors/skycons/skycons.js"></script>
        <!-- Flot -->
        <script src="admin/vendors/Flot/jquery.flot.js"></script>
        <script src="admin/vendors/Flot/jquery.flot.pie.js"></script>
        <script src="admin/vendors/Flot/jquery.flot.time.js"></script>
        <script src="admin/vendors/Flot/jquery.flot.stack.js"></script>
        <script src="admin/vendors/Flot/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
        <script src="admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
        <script src="admin/vendors/flot.curvedlines/curvedLines.js"></script>
        <!-- DateJS -->
        <script src="admin/vendors/DateJS/build/date.js"></script>
        <!-- JQVMap -->
        <script src="admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
        <script src="admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
        <script src="admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="admin/vendors/moment/min/moment.min.js"></script>
        <script src="admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="admin/build/js/custom.min.js"></script>

    </body>
</html>

