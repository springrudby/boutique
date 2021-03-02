<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Boutique</title>
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="./vendor/bootstrap/css/bootstrap.min.css">
<!-- Lightbox-->
<link rel="stylesheet" href="./vendor/lightbox2/css/lightbox.min.css">
<!-- Range slider-->
<link rel="stylesheet" href="./vendor/nouislider/nouislider.min.css">
<!-- Bootstrap select-->
<link rel="stylesheet"
	href="./vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- Owl Carousel-->
<link rel="stylesheet"
	href="./vendor/owl.carousel2/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="./vendor/owl.carousel2/assets/owl.theme.default.css">
<!-- Google fonts-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
<!-- theme stylesheet-->
<link rel="stylesheet" href="./css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="./css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="./img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>



	<div class="page-holder">
		<!-- navbar-->
		<jsp:include page="shared/header.jsp"></jsp:include>

		<!--  Modal -->
		<div class="modal fade" id="productView" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg modal-dialog-centered"
				role="document">
				<div class="modal-content">
					<div class="modal-body p-0">
						<div class="row align-items-stretch">
							<div class="col-lg-6 p-lg-0">
								<a class="product-view d-block h-100 bg-cover bg-center"
									style="background: url(img/product-5.jpg)"
									href="img/product-5.jpg" data-lightbox="productview"
									title="Red digital smartwatch"></a><a class="d-none"
									href="img/product-5-alt-1.jpg" title="Red digital smartwatch"
									data-lightbox="productview"></a><a class="d-none"
									href="img/product-5-alt-2.jpg" title="Red digital smartwatch"
									data-lightbox="productview"></a>
							</div>
							<div class="col-lg-6">
								<button class="close p-4" type="button" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">Ã—</span>
								</button>
								<div class="p-5 my-md-4">
									<ul class="list-inline mb-2">
										<li class="list-inline-item m-0"><i
											class="fas fa-star small text-warning"></i></li>
										<li class="list-inline-item m-0"><i
											class="fas fa-star small text-warning"></i></li>
										<li class="list-inline-item m-0"><i
											class="fas fa-star small text-warning"></i></li>
										<li class="list-inline-item m-0"><i
											class="fas fa-star small text-warning"></i></li>
										<li class="list-inline-item m-0"><i
											class="fas fa-star small text-warning"></i></li>
									</ul>
									<h2 class="h4">Red digital smartwatch</h2>
									<p class="text-muted">$250</p>
									<p class="text-small mb-4">Lorem ipsum dolor sit amet,
										consectetur adipiscing elit. In ut ullamcorper leo, eget
										euismod orci. Cum sociis natoque penatibus et magnis dis
										parturient montes nascetur ridiculus mus. Vestibulum ultricies
										aliquam convallis.</p>
									<div class="row align-items-stretch mb-4">
										<div class="col-sm-7 pr-sm-0">
											<div
												class="border d-flex align-items-center justify-content-between py-1 px-3">
												<span class="small text-uppercase text-gray mr-4 no-select">Quantity</span>
												<div class="quantity">
													<button class="dec-btn p-0">
														<i class="fas fa-caret-left"></i>
													</button>
													<input class="form-control border-0 shadow-0 p-0"
														type="text" value="1">
													<button class="inc-btn p-0">
														<i class="fas fa-caret-right"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="col-sm-5 pl-sm-0">
											<a
												class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0"
												href="cart.html">Add to cart</a>
										</div>
									</div>
									<a class="btn btn-link text-dark p-0" href="#"><i
										class="far fa-heart mr-2"></i>Add to wish list</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<!-- HERO SECTION-->
			<section class="py-5 bg-light">
				<div class="container">
					<div class="row px-4 px-lg-5 py-lg-4 align-items-center">
						<div class="col-lg-6">
							<h1 class="h2 text-uppercase mb-0">Proceso de Pago</h1>
						</div>
						<div class="col-lg-6 text-lg-right">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb justify-content-lg-end mb-0 px-0">
									<li class="breadcrumb-item"><a href="inicio">INICIO</a></li>
									<li class="breadcrumb-item"><a href="carrito">CARRITO</a></li>
									<li class="breadcrumb-item active" aria-current="page">PAGAR</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</section>
			<section class="py-5">
				<!-- BILLING ADDRESS-->
				<h2 class="h5 text-uppercase mb-4">DETALLE DE FACTURA</h2>
				<div class="row">
					<div class="col-lg-8">
						<form action="#">
							<div class="row">
								<div class="col-lg-6 form-group">
									<label class="text-small text-uppercase" for="nombre">Nombre</label>
									<input class="form-control form-control-lg" id="nombre" type="text" placeholder="Ingrese su nombre">
								</div>
							
								<div class="col-lg-6 form-group">
									<label class="text-small text-uppercase" for="apapterno">Apellido Paterno</label> 
									<input class="form-control form-control-lg" id="apapterno" type="text" placeholder="Ingrese su Apellido Paterno">
								</div>
								<div class="col-lg-6 form-group">
									<label class="text-small text-uppercase" for="apematerno">Apellido Materno</label> 
									<input class="form-control form-control-lg" id="apematerno" type="text" placeholder="Ingrese su Apellido Materno">
								</div>
								
								<div class="col-lg-6 form-group">
									<label class="text-small text-uppercase" for="celular">Celular</label> 
										<input class="form-control form-control-lg" id="celular" type="tel" placeholder="+51 999 999 999">
								</div>
								<div class="col-lg-12 form-group">
									<label class="text-small text-uppercase" for="correo">Correo Electrónico</label> 
									<input class="form-control form-control-lg" id="correo" type="email" placeholder="Ingrese su correo electrÃ³nico">
								</div>								
								<div class="col-lg-12 text-right">
									<label for="checkfactura">¿Quieres Factura?</label>
									<input id="checkfactura" type="checkbox"/>
								</div>
								
								<div class="col-lg-4 form-group" id="divruc" style="display: none">
									<label class="text-small text-uppercase" for="Ruc (opcional)">Ruc (opcional)</label>
									 <input class="form-control form-control-lg"
										id="company" type="text" placeholder="Ruc (opcional)">
								</div>
								<div class="col-lg-8 form-group" id="divrazon" style="display: none">
									<label class="text-small text-uppercase" for="razon">Razón social (opcional)</label>
									 <input class="form-control form-control-lg" type="text" id="razon" placeholder="Ingrese la razón social"/>
								</div>
								
									<div class="col-lg-12 form-group">
									<label class="text-small text-uppercase" for="distrito">Distrito</label>
									<select class="selectpicker country" id="distrito"
										data-width="fit" data-style="form-control form-control-lg"
										data-title="elige tu distrito"></select>
								</div>
								<div class="col-lg-12 form-group">
									<label class="text-small text-uppercase" for="Calle referencia 1">Calle referencia 1</label> <input class="form-control form-control-lg"
										id="address" type="text"
										placeholder="Ingrese nombre de la calle">
								</div>
								<div class="col-lg-12 form-group">
									<label class="text-small text-uppercase" for="calle">Calle referencia 2</label> <input class="form-control form-control-lg"
										id="addressalt" type="text"
										placeholder="Ingresela Direccion de departamento(optional)">
								</div>
							
								<div class="col-lg-12" class="text-center">
									<label for="checkterminos" >Acepto los Términos y condiciones</label>
									<input id="checkterminos" type="checkbox"/>
								</div>
								   
								<div class="col-lg-12 form-group text-right" id="btnpagarvisa" style="display: none">
									<button class="btn btn-dark" type="submit">Realizar Pedido</button>
								</div>
							</div>
						</form>
					</div>
					<!-- ORDER SUMMARY-->
					<div class="col-lg-4">
						<div class="card border-0 rounded-0 p-lg-4 bg-light">
							<div class="card-body">
								<h5 class="text-uppercase mb-4">Su Pedido</h5>
								<ul class="list-unstyled mb-0">
									<li class="d-flex align-items-center justify-content-between"><strong
										class="small font-weight-bold">Red digital smartwatch</strong><span
										class="text-muted small">$250</span></li>
									<li class="border-bottom my-2"></li>
									<li class="d-flex align-items-center justify-content-between"><strong
										class="small font-weight-bold">Gray Nike running
											shoes</strong><span class="text-muted small">$351</span></li>
									<li class="border-bottom my-2"></li>
									<li class="d-flex align-items-center justify-content-between"><strong
										class="text-uppercase small font-weight-bold">Total</strong><span>$601</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<jsp:include page="shared/footer.jsp"></jsp:include>
	</div>






























	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/lightbox2/js/lightbox.min.js"></script>
	<script src="./vendor/nouislider/nouislider.min.js"></script>
	<script src="./vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="./vendor/owl.carousel2/owl.carousel.min.js"></script>
	<script src="./vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
	<script src="./js/front.js"></script>
	<script>
		// ------------------------------------------------------- //
		//   Inject SVG Sprite - 
		//   see more here 
		//   https://css-tricks.com/ajaxing-svg-sprite/
		// ------------------------------------------------------ //
		function injectSvgSprite(path) {

			var ajax = new XMLHttpRequest();
			ajax.open("GET", path, true);
			ajax.send();
			ajax.onload = function(e) {
				var div = document.createElement("div");
				div.className = 'd-none';
				div.innerHTML = ajax.responseText;
				document.body.insertBefore(div, document.body.childNodes[0]);
			}
		}
		// this is set to BootstrapTemple website as you cannot 
		// inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
		// while using file:// protocol
		// pls don't forget to change to your domain :)
		injectSvgSprite('https://bootstraptemple.com/files/icons/orion-svg-sprite.svg');
	</script>
	<!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
		integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
		crossorigin="anonymous">


<script>



$("#checkterminos").on( 'change', function() {
    if( $(this).is(':checked') ) {
    	$("#btnpagarvisa").css("display","block"); 
    } else {
    	$("#btnpagarvisa").css("display","none"); 
    }
});

$("#checkfactura").on( 'change', function() {
    if( $(this).is(':checked') ) {
    	$("#divruc").css("display","block");
    	$("#divrazon").css("display","block");        
    } else {
    	$("#divruc").css("display","none");
    	$("#divrazon").css("display","none");
    }
});


</script>
</body>
</html>
