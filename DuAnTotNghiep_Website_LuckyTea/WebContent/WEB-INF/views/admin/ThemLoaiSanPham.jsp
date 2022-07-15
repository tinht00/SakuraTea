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
        <title>Thêm loại sản phẩm</title>

        <!-- Bootstrap -->
        <link href="admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="admin/vendors/nprogress/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
        <!-- bootstrap-wysiwyg -->
        <link href="admin/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
        <!-- Select2 -->
        <link href="admin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
        <!-- Switchery -->
        <link href="admin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
        <!-- starrr -->
        <link href="admin/vendors/starrr/dist/starrr.css" rel="stylesheet">
        <!-- bootstrap-daterangepicker -->
        <link href="admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

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
                                    <li><a><i class="fa fa-edit"></i> Quản lý người dùng <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="nguoidung/ThemNguoiDung.htm">Thêm người dùng</a></li>
                                            <li><a href="nguoidung/DanhSachNguoiDung.htm">Danh sách người dùng</a></li>
                                        </ul>
                                    </li>

                                    <!--Quản lý loại sản phẩm-->
                                    <li><a><i class="fa fa-edit"></i> Quản lý loại sản phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="loai/ThemLoaiSanPham.htm">Thêm loại sản phẩm</a></li>
                                            <li><a href="loai/DanhSachLoaiSanPham.htm">Danh sách loại sản phẩm</a></li>
                                        </ul>
                                    </li>

                                    <!--Quản lý sản phẩm-->
                                    <li><a><i class="fa fa-edit"></i> Quản lý sản phẩm <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="sanpham/ThemSanPham.htm">Thêm sản phẩm</a></li>
                                            <li><a href="sanpham/DanhSachSanPham.htm">Danh sách sản phẩm</a></li>
                                        </ul>
                                    </li>

                                    

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
                <div class="right_col" role="main">
                    <div class="">
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Thêm Loại Sản Phẩm</h3>
                            </div>


                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">

                                    <div class="x_content">
                                        <br />
                                        <form:form action="loai/insert.htm" modelAttribute="loaisp" >

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mã loại <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:input class="form-control" required="required" path="maloai"/>
                                                    
                                                </div>
                                            </div><br/><br/>
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Tên loại <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <form:input class="form-control" required="required" path="tenloai"/>
                                                </div>
                                            </div><br/><br/>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <input type="submit" class="btn btn-round btn-danger" name="action" value="Submit">
                                                    <input type="reset" class="btn btn-round btn-warning" value="Reset">
                                                   
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">

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
        <!-- bootstrap-progressbar -->
        <script src="admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="admin/vendors/iCheck/icheck.min.js"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="admin/vendors/moment/min/moment.min.js"></script>
        <script src="admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap-wysiwyg -->
        <script src="admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
        <script src="admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
        <script src="admin/vendors/google-code-prettify/src/prettify.js"></script>
        <!-- jQuery Tags Input -->
        <script src="admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
        <!-- Switchery -->
        <script src="admin/vendors/switchery/dist/switchery.min.js"></script>
        <!-- Select2 -->
        <script src="admin/vendors/select2/dist/js/select2.full.min.js"></script>
        <!-- Parsley -->
        <script src="admin/vendors/parsleyjs/dist/parsley.min.js"></script>
        <!-- Autosize -->
        <script src="admin/vendors/autosize/dist/autosize.min.js"></script>
        <!-- jQuery autocomplete -->
        <script src="admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
        <!-- starrr -->
        <script src="admin/vendors/starrr/dist/starrr.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="admin/build/js/custom.min.js"></script>

    </body>
</html>

