<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Lucky Tea</title>
<link rel="shortcut icon" type="image/png" href="./css/images/logo-lucky.png" />


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


	<section id="contact">
		<div class="container">
			<div class="well well-sm">
				<h3>
					
				</h3>
			</div>

			<div class="row" class="phai">
				<div class="col-md-5" style="">
					<h2 >THÔNG TIN LIÊN HỆ</h2>
					<p class="top">Địa chỉ:</p>
					<p>Hotline:</p>
					<p>Zalo:</p>
					<p>Email:</p>
					<br>
					<h2>LIÊN HỆ VỚI CHÚNG TÔI</h2>
					<form:form class="top" action="home/insert.htm" modelAttribute="phanhoi">
						<div class="form-group">
							<label>Họ tên:</label>
							<form:input class="form-control" value="" placeholder="Họ tên" path="hoten" />
						</div>
						<div class="form-group">
							<label>Email:</label>
							<form:input class="form-control" value="" path="email"
								placeholder="E-mail" />
						</div>
						<div class="form-group">
							<label>Nội dung:</label>
							<form:textarea rows="7" placeholder="Nội dung" value="" class="form-control"
								path="noidung" />
						</div>
						<button class="btn btn-danger" type="submit" name="button">
							 <i class="fa fa-paper-plane-o" aria-hidden="true"></i> Gửi</button>
					</form:form>
				</div>

				<div class="col-md-7 map">
					<iframe
						src="https://www.google.com/maps/embed?pb=
						!1m18!1m12!1m3!1d3928.750053604062!2d105.76910211411119!3d10.037472575143617!
						2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3
						!1m2!1s0x31a08819eecf1edb%3A0x358c7fda1f64f7e0!
						2zNTcgTeG6rXUgVGjDom4sIEFuIE5naGnhu4dwLCBOaW5oIEtp4buBdSwgQ
						-G6p24gVGjGoSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1607266498078!5m2!1svi!2s"
						width="100%" height="742" frameborder="0" style="border: 0"allowfullscreen"></iframe>

				</div>
			</div>
		</div>
	</section>



	<!-- Footer -->
<jsp:include page="../home/footer.jsp"></jsp:include>
	<!-- Footer -->
</body>
</html>