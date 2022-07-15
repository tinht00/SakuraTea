<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="${pageContext.servletContext.contextPath}/">

<title>Lucky Tea</title>
<link rel="shortcut icon" type="image/png" href="./css/images/logo-lucky.png"/>

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


<style type="text/css">

.image{
height: auto;
}



.container-fluid{
margin:0px 3rem;	
}


.ex3{

  width: 100%;
  height: 120px;
  overflow: auto; 
  border: 1px solid lightgrey;
}


/* -- quantity box -- */

.quantity {
 display: inline-block; }

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
 vertical-align: top; }

.quantity.buttons_added input {
 display: inline-block;
 margin: 0;
 vertical-align: top;
 box-shadow: none;
}

.quantity.buttons_added .minus,
.quantity.buttons_added .plus {
 padding: 7px 10px 8px;
 height: 39px;
 background-color: #ffffff;
 border: 1px solid #efefef;
 cursor:pointer;}

.quantity.buttons_added .minus {
 border-right: 0; }

.quantity.buttons_added .plus {
 border-left: 0; }

.quantity.buttons_added .minus:hover,
.quantity.buttons_added .plus:hover {
 background: #eeeeee; }

.quantity input::-webkit-outer-spin-button,
.quantity input::-webkit-inner-spin-button {
 -webkit-appearance: none;
 -moz-appearance: none;
 margin: 0; }
 
 .quantity.buttons_added .minus:focus,
.quantity.buttons_added .plus:focus {
 outline: none; }



/* checkbox size */
label {

  font-size: 1.2rem;
}


.form-group {
   display: inline-block;
}


/* Checkboxes */

.checkbox {
  -webkit-appearance: none;
  display: flex;
  justify-content: center;
  align-items: center;
}

.checkbox:before {
  content: "";

  height: 1.5rem;
  width: 1.5rem;

   display: inline-block;

  background: #bdbdbd;
  box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
}

.checkbox:hover {
  transform: scale(0.9);
}

.checkbox:checked {
  position: relative;
}

.checkbox:after {
  content: "";

  position: absolute;

  font-size: 1rem;
  font-weight: 700;
  color: #ff4081;
}

.checkbox:checked:after {
  content: "\2714";

  color: white;
}

.checkbox:focus {
  outline: none;
}

.image{

height: auto;
}
.checkbox:checked:before {
  background-color: #039be5;
}

.checkbox-round:before {
  border-radius: 100%;
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

</style>
<link rel="stylesheet" href="css/ChiTietSP.css">
</head>
<body>

<jsp:include page="../home/navbar.jsp"></jsp:include>

	
	
	<!-- Page Content -->
<div class="container">
<form:form action="ordernow_chitiet/${Sanpham.masp }.htm" modelAttribute="Sanpham" method="GET">
  <!-- Portfolio Item Heading -->
  <h1 class="my-4">ĐẶT HÀNG CHI TIẾT
  </h1>

<div class="row 1">
<div class="col-md-7" align="center"style="border-right:1px solid lightgrey;">
      <img class="img-fluid class" width="550px" src="admin/hinh/${Sanpham.hinh}" alt="">
      <input type="hidden" name="hinh" value="${Sanpham.hinh}" >
    </div>
    <!-- END col img-->
    
    
    
    
     <div class="col-md-4">
     
     <!-- Tên SP -->
     <h4 class="my-3"><input type="text" name="tensp" style="border: none;font-weight: bold;"  value="${Sanpham.tensp}"   readonly="readonly"></h4> <br>
     
      <!-- Giá SP -->
     <h5 class="">Giá: <input type="text" name="giasp" id="totalPrice" style="width: 4rem;border: none;" value="${Sanpham.gia}" readonly="readonly"><span style="font-weight: 400">VNĐ</span> </h5> <br>
     
           <!-- Size -->
       <div ><h5 style="display:inline-block; margin-right:10rem " >Size:</h5>
       <span id="content" style="display: inline-flex;">
  <span class="subtotal" style="display:none">${Sanpham.gia} </span>
  <input type="checkbox" class="checkbox checkbox-round" name="shippingcost" value="Size M" checked="checked">&nbsp M 
  <span class="shippingcost" style="display: none"> 0 </span> 
  &nbsp &nbsp
  <input type="checkbox" class="checkbox checkbox-round" name="shippingcost" value="Size L"> &nbsp L 
  <span class="shippingcost" style="display: none"> 5000 </span>
</span> 
      </div>
      
    
      <!-- End Size -->
      <br>
          
        
           <!-- Quantity -->
      <div>
      <h5 style="display: inline-block; margin-right: 2rem">Số lượng: </h5>
      <span class="quantity buttons_added" style="margin-left: 5rem">
	<input type="button" value="-" class="minus">
	<input type="number" step="1" min="1" max="" name="quantity" id="soLuong" value="1" title="Qty"
	 class="input-text qty text" size="4" pattern="" inputmode="">
	<input type="button" value="+" class="plus">
	</span>
      </div>
          <!-- End Quantity -->
          <br>
          
          
          <!-- Ice -->
          <div>
      <h5 class="my-3">Ice</h5>

		<div id="debt-amount-slider">
			<input type="checkbox" name="Ice" id="1" value="10% Ice" >
			<label for="1" data-debt-amount="10%"></label>
			<input type="checkbox" name="Ice" id="2" value="30% Ice" >
			<label for="2" data-debt-amount="30%"></label>
			<input type="checkbox" name="Ice" id="3" value="50% Ice" >
			<label for="3" data-debt-amount="50%"></label>
			<input type="checkbox" name="Ice" id="4" value="70% Ice" >
			<label for="4" data-debt-amount="70%"></label>
			<input type="checkbox" name="Ice" id="5" value="100% Ice" checked="checked">
			<label for="5" data-debt-amount="100%"></label>
			<div id="debt-amount-pos"></div>
		</div>
	
      </div>
          <br><br>
          
           <!-- Sugar -->
           <div>
      <h5 class="my-3">Sugar</h5>
		<div id="debt-amount-slider">
			<input type="checkbox" name="Sugar" id="6" value="10% Sugar" >
			<label for="6" data-debt-amount="10%"></label>
			<input type="checkbox"  name="Sugar" id="7" value="30% Sugar" >
			<label for="7" data-debt-amount="30%"></label>
			<input type="checkbox"  name="Sugar" id="8" value="50% Sugar" >
			<label for="8" data-debt-amount="50%"></label>
			<input type="checkbox"  name="Sugar" id="9" value="70% Sugar" >
			<label for="9" data-debt-amount="70%"></label>
			<input type="checkbox"  name="Sugar" id="10" value="100% Sugar" checked="checked">
			<label for="10" data-debt-amount="100%"></label>
			<div id="debt-amount-pos"></div>
		</div>
		</div>
	<br>
	<br>
          
          
           <!-- Topping -->
	<h5>Topping:</h5>
	 
	  <div class="ex3" >
	 
	  <c:forEach var="u" items="${loadtp}">
    
    <div style="margin-bottom: -15px">
      <input class="checkbox"  style="display: inline-flex; "  type="checkbox" value="${u.gia }vnđ-${u.tensp}" price="${u.gia}">
       <span >${u.tensp}</span>
      </div>
    <br>
    
    </c:forEach>
 </div>
 <!-- End Topping --><br>
     
     <!-- Ghi chú -->
      <h5>Ghi Chú: </h5><textarea name="ghichu" rows="5" cols="45" id="field_results"> </textarea>
      
      

      
      <!-- Giá Topping -->
        <div na style="border-bottom: 1px solid lightgrey; padding: 10px 0px 10px 0px; display: none">
      <h5>Giá Topping: <input type="text" name="giaTopping" id="giaTopping" style="width: 4rem; border: none;" value="0" readonly="readonly"><span>VNĐ</span></h5>
      </div><br>
      
     <!-- Tổng tiền -->
       <div >
      <h5>Tổng tiền:  <input type="text" id="tongTien" style="width: 4.8rem; border: none;" value="${Sanpham.gia}" readonly="readonly"/><span style="font-weight: 400">VNĐ</span></h5>
     
      </div>
      <br>
      <!-- btn thêm vào giỏ hàng -->
      <button class="btn btn-info">Thêm vào giỏ hàng</button>
      
      
     </div>
     <!-- END col form -->
    
    
</div>
<!-- END ROW 1-->



</form:form>
  
  <!-- /.row -->

  <!-- Related Projects Row -->
  <h3 class="my-4" style="border-bottom:0.5px solid grey;">CÁC LOẠI SẢN PHẨM KHÁC</h3>

  	<div class="container"
		style="margin-top: 3vh; max-width: 90%; ">
		<h3 >
		
		</h3>
					<c:forEach var="u" items="${loadttc_ts}">
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
									readonly="readonly" />VNĐ
							</p>
						</div>
						<a href="SanPham/${u.masp}.htm" class="btn effect01"> <span>CHI
								TIẾT</span>
						</a>
						<button class="btn effect01"> <span>+ GIỎ HÀNG</span>
						</button>

					</div>
				</form:form>
			</c:forEach>

	</div>
 
  </div>
  <!-- /.row -->


<!-- /.container -->
	
	
	
	<!-- Footer -->
	<jsp:include page="../home/footer.jsp"></jsp:include>
	<!-- Footer -->
	
	  
  
    
	
	
	

	
	
	<script type="text/javascript">
	

	
	function updateCosts() {
		  var totals = parseInt($(".subtotal").text());
		  var giaTopping =parseInt($('#giaTopping').val());
		  $.each($('#content input[type=checkbox]:checked'), function() {
		    totals += parseInt($.trim($(this).next('.shippingcost').text()));
		  });
		  $('#totalPrice').val(totals);
		  $('#tongTien').val(totals);
		
		  
		}
	
	/* checkbox group */
	$('input[type="checkbox"]').on('change', function() {
	    $('input[name="' + this.name + '"]').not(this).prop('checked', false);
	});
	

		$(document).ready(function() {
		  $('#content input[type=checkbox]').change(updateCosts);
		});
		
		$(document).ready(function() {
			  var giaTopping =parseInt($('#giaTopping').val()); 
			  var giaSize =parseInt($('#totalPrice').val()); 
			  $('#tongTien').val(giaSize+giaTopping);
			});
	
	$(document).ready(function(){
	    $checks = $(":checkbox");
	    /* $rdochecks = $(":radio"); */
	    
	    $checks.on('change', function() {
	    	/* var giaTopping = $('#chkboxGia').text(); */
	    	
	    	var total = 0;
	    	 var tongTien =  parseInt($('#tongTien').val());
	    	 var soLuong =  parseInt($('#soLuong').val());
			  var giaSize =parseInt($('#totalPrice').val()); 
	        var string = $checks.filter(":checked").map(function(i,v){
	        	total += parseFloat($(this).attr('price')) || 0;
	            return this.value;
	        }).get().join(" ;\n  ");
	        $('#field_results').val(string);
	        $('#giaTopping').val(total);
	        var giaTopping =  parseInt($('#giaTopping').val());
	        $('#tongTien').val((giaTopping+giaSize)*soLuong);
	    });
	    
	    
	});
	/*  quantity */
	$(document).ready(function(){
	  $('#soLuong').change(function(){
		  var giaSize =parseInt($('#totalPrice').val()); 
		  var soLuong =  parseInt($('#soLuong').val());
		  var giaTopping =  parseInt($('#giaTopping').val());
		  $('#tongTien').val((giaSize+giaTopping)*soLuong);
	  });
	});
	
	/* Quantity button */
	function wcqib_refresh_quantity_increments() {
    jQuery("div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)").each(function(a, b) {
        var c = jQuery(b);
        c.addClass("buttons_added"), c.children().first().before('<input type="button" value="-" class="minus" />'),
        c.children().last().after('<input type="button" value="+" class="plus" />')
    })
}
String.prototype.getDecimals || (String.prototype.getDecimals = function() {
    var a = this,
        b = ("" + a).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
    return b ? Math.max(0, (b[1] ? b[1].length : 0) - (b[2] ? +b[2] : 0)) : 0
}), jQuery(document).ready(function() {
    wcqib_refresh_quantity_increments()
}), jQuery(document).on("updated_wc_div", function() {
    wcqib_refresh_quantity_increments()
}), jQuery(document).on("click", ".plus, .minus", function() {
    var a = jQuery(this).closest(".quantity").find(".qty"),
        b = parseFloat(a.val()),
        c = parseFloat(a.attr("max")),
        d = parseFloat(a.attr("min")),
        e = a.attr("step");
    b && "" !== b && "NaN" !== b || (b = 0),
    "" !== c && "NaN" !== c || (c = ""),
    "" !== d && "NaN" !== d || (d = 0),
    "any" !== e && "" !== e && void 0 !== e && "NaN" !== parseFloat(e) || (e = 1),
    jQuery(this).is(".plus") ? c && b >= c ?
    		a.val(c) : a.val((b + parseFloat(e)).toFixed(e.getDecimals())) : d && b <= d ?
    				a.val(d) : b > 0 && a.val((b - parseFloat(e)).toFixed(e.getDecimals())),
    				a.trigger("change")
});
	
	</script>
	
</body>
</html>