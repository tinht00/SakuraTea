<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="sTinht"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
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
.card-sp {
	border: none;
	width: 18rem;
	margin-bottom: 3vh;
	display: inline-block;
	padding: 10px;
	margin: 0vh 0.6vh 3vh 0.6vh
}

.image {
	height: auto;
}

.btn {
	letter-spacing: 0.1em;
	cursor: pointer;
	font-size: 12px;
	font-weight: 700;
	line-height: 30px;
	max-width: 130px;
	position: relative;
	text-decoration: none;
	text-transform: uppercase;
	width: 100%;
}


.btn-xemthem {
	font-family: Hack, monospace;
	background: #0F0F6D;
	color: #ffffff;
	cursor: pointer;
	font-size: 2em;
	padding: 1.5rem;
	border: 0;
	transition: all 0.5s;
	border-radius: 10px;
	width: auto;
	position: relative; &:: after { content : "\f054";
	font-family: "Font Awesome 5 Pro";
	font-weight: 400;
	position: absolute;
	left: 85%;
	top: 31%;
	right: 5%;
	bottom: 0;
	opacity: 0;
}

&
:hover {
	background: #2b2bff;
	transition: all 0.5s;
	border-radius: 10px;
	box-shadow: 0px 6px 15px #0000ff61;
	padding: 1.5rem 3.5rem 1.5rem 1.5rem; &:: after { opacity : 1;
	transition: all 0.5s;
}

}
}
.btn:hover {
	text-decoration: none;
}

/*btn_background*/
.effect01 {
	color: #000;
	border: 4px solid #FFF;
	box-shadow: 0px 0px 0px 1px #000 inset;
	background-color: #FFF;
	overflow: hidden;
	position: relative;
	transition: all 0.3s ease-in-out;
}

.effect01:hover {
	border: 4px solid #666;
	background-color: #000;
	box-shadow: 0px 0px 0px 4px #EEE inset;
}

/*btn_text*/
.effect01 span {
	transition: all 0.2s ease-out;
	z-index: 2;
}

.effect01:hover span {
	letter-spacing: 0.13em;
	color: #FFF;
}

/*highlight*/
.effect01:after {
	background: #FFF;
	border: 0px solid #000;
	content: "";
	height: 125px;
	left: -75px;
	opacity: .8;
	position: absolute;
	top: -50px;
	-webkit-transform: rotate(35deg);
	transform: rotate(35deg);
	width: 50px;
	transition: all 1s cubic-bezier(0.075, 0.82, 0.165, 1); /*easeOutCirc*/
	z-index: 1;
}

.effect01:hover:after {
	background: #FFF;
	border: 20px solid #000;
	opacity: 0;
	left: 120%;
	-webkit-transform: rotate(40deg);
	transform: rotate(40deg);
}


</style>
</head>
<body>


	<!--Navigation-->
	<jsp:include page="../home/navbar.jsp"></jsp:include>

	<!--Carousel-->
	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-ride="carousel">
		<div class="carousel-inner">
			<!-- <div class="carousel-item active">
				<img src="./css/images/banner1.jpg" class="d-block w-100 banner"
					alt="...">
			</div> -->
			<div class="carousel-item active">
				<img src="./css/images/banner2.png" style="max-height: 36rem"
					class="d-block w-100 banner" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./css/images/banner3.png" style="max-height: 36rem"
					class="d-block w-100 banner" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleFade"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleFade"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div class="card-img">
		<img src="./css/images/qc.jpg" class="d-block w-100" alt="...">
	</div>
	
	
	<!-- container -->
	<div class="container" style="max-width: 90%; text-align: center">

		<!-- S???n  Ph???m -->

		<!-- Tr?? S???a -->
		<div style="margin-top: 3vh">
			<h3 align="center">
				<b>TR?? S???A</b>
			</h3>
			<hr>
			<c:forEach var="u" items="${loadts}">
				<form:form action="ordernow_home/${u.masp }.htm" method="get"
					style="display:inline-block">
					<div class="card card-sp" align="center"
						style="display: inline-block;">
						<img name="hinh" class="card-img-top image"
							src="admin/hinh/${u.hinh}" alt="Card image cap">

						<div class="card-body">
							<h6 class="card-title">${u.tensp}</h6>
							<p class="card-text">
								<input type="text" name="giasp"
									style="border: none; width: 3rem" value="${u.gia}"
									readonly="readonly" />VN??
							</p>
						</div>
						<a href="SanPham/${u.masp}.htm" class="btn effect01"> <span>CHI
								TI???T</span>
						</a>
						<button class="btn effect01"> <span>+ GI??? H??NG</span>
						</button>

					</div>
				</form:form>
			</c:forEach>
			<br> <br>
			<div align="center">
				<a href="Home/ThucUong/TraSua.htm" class="effect01 btn"
					style="margin-bottom: 6vh"> <span>XEM TH??M</span>
				</a>
			</div>
		</div>



		<!-- Tr?? Tr??i C??y -->
		<div style="margin-top: 3vh">
			<h3 align="center">
				<b>TR?? TR??I C??Y</b>
			</h3>
			<hr>
			<c:forEach var="u" items="${loadttc}">
				<form:form action="ordernow_home/${u.masp }.htm" method="get"
					style="display:inline-block">
					<div class="card card-sp" align="center"
						style="display: inline-block;">
						<img name="hinh" class="card-img-top image"
							src="admin/hinh/${u.hinh}" alt="Card image cap">

						<div class="card-body">
							<h6 class="card-title">${u.tensp}</h6>
							<p class="card-text">
								<input type="text" name="giasp"
									style="border: none; width: 3rem" value="${u.gia}"
									readonly="readonly" />VN??
							</p>
						</div>
						<a href="SanPham/${u.masp}.htm" class="btn effect01"> <span>CHI
								TI???T</span>
						</a>
						<button class="btn effect01"> <span>+ GI??? H??NG</span>
						</button>

					</div>
				</form:form>
			</c:forEach>
			<br> <br>
			<div align="center">
				<a href="Home/ThucUong/TraTraiCay.htm" class="effect01 btn"
					style="margin-bottom: 6vh"> <span>XEM TH??M</span>
				</a>
			</div>
		</div>



		<!-- ????? ??n V???t -->
		<div style="margin-top: 3vh">
			<h3 align="center">
				<b>????? ??N V???T</b>
			</h3>
			<hr>
			<c:forEach var="u" items="${loaddav}">
				<form:form action="ordernow_home/${u.masp }.htm" method="get"
					style="display:inline-block">
					<div class="card card-sp" align="center"
						style="display: inline-block;">
						<img name="hinh" class="card-img-top image"
							src="admin/hinh/${u.hinh}" alt="Card image cap">
							
						<div class="card-body">
							<h6 class="card-title">${u.tensp}</h6>
							<p class="card-text">
								<input type="text" name="giasp"
									style="border: none; width: 3rem" value="${u.gia}"
									readonly="readonly" />VN??
							</p>
						</div>
						<button class="btn effect01"> <span>+ GI??? H??NG</span>
						</button>

					</div>
				</form:form>
			</c:forEach>
			<br> <br>
			<div align="center">
				<a href="Home/DoAnVat.htm" class="effect01 btn"
					style="margin-bottom: 6vh"> <span>XEM TH??M</span>
				</a>
			</div>
		</div>

		<!-- Topping -->
		<div style="margin-top: 3vh">
			<h3 align="center">
				<b>TOPPING</b>
			</h3>
			<hr>
			<c:forEach var="u" items="${loadtp}">
				<div class="card card-sp" align="center" style="">
					<img name="hinh" class="card-img-top image"
						src="admin/hinh/${u.hinh}" alt="Card image cap">

					<div class="card-body">
						<h6 name="tensp" class="card-title">${u.tensp}</h6>
						<p name="gia" class="card-text">${u.gia}VN??</p>
					</div>

				</div>
			</c:forEach>
			<br> <br>
			<div align="center">
				<a href="Home/ThucUong/Topping.htm" class="effect01 btn"
					style="margin-bottom: 6vh"> <span>XEM TH??M</span>
				</a>
			</div>
		</div>

	</div>

<!-- Footer -->
<jsp:include page="../home/footer.jsp"></jsp:include>
<!-- Footer -->


<form:form modelAttribute="Dondathang">

<div>${thanhtoan}</div>
</form:form>




</body>
</html>