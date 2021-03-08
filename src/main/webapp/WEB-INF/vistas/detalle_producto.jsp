<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="${producto.nombre}" />
<meta property="og:url" content="${pageContext.request.contextPath}${pageUrl}" /> 
<meta property="og:description" content="${producto.descripcion}" />
<meta property="og:image" content="${producto.foto_producto}" />

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
<link rel="shortcut icon" href="img/favicon.png">
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
									<span aria-hidden="true">Ã</span>
								</button>
								<div class="p-5 my-md-4">
									<!-- ul class="list-inline mb-2">
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
									</ul-->
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
									<!-- a class="btn btn-link text-dark p-0" href="#"><i
										class="far fa-heart mr-2"></i>Add to wish list</a-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- HERO SECTION-->

		<div class="container">

			<section class="py-5">
				<div class="container">
					<div class="row mb-5">
						<div class="col-lg-6">
							<!-- PRODUCT SLIDER-->
							<div class="row m-sm-0">
								<div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
									<div class="owl-thumbs d-flex flex-row flex-sm-column"
										data-slider-id="1">
										<div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0">
											<img class="w-100" src="${producto.foto_producto}" alt="...">
										</div>
										<c:forEach items="${producto.imagenes}" var="img" >
										<div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0">
											<img class="w-100" src="${img}" alt="...">
										</div>
										</c:forEach>
										
										
										<!-- div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0">
											<img class="w-100" src="img/product-detail-3.jpg" alt="...">
										</div>
										<div class="owl-thumb-item flex-fill mb-2">
											<img class="w-100" src="img/product-detail-4.jpg" alt="...">
										</div-->
									</div>
								</div>
								<div class="col-sm-10 order-1 order-sm-2">
									<div class="owl-carousel product-slider" data-slider-id="1">
									 
										<a class="d-block" href="${producto.foto_producto}" data-lightbox="product" title="Product item 1"> 
											<img class="img-fluid" src="${producto.foto_producto}" alt="...">
										</a>
									 
									<c:forEach items="${producto.imagenes}" var="img" >
										<a class="d-block" href="${img}" data-lightbox="product" title="Product "> 
											<img class="img-fluid" src="${img}" alt="...">
										</a>
									</c:forEach>
										 
									</div>
								</div>
							</div>
						</div>
						<!-- PRODUCT DETAILS-->
						<div class="col-lg-6">

							<h1>
								<c:out value="${producto.nombre}"></c:out>
							</h1>
							<p class="text-muted lead">
								S/
								<c:out value="${producto.precio}"></c:out>
							</p>
							<p class="text-small mb-4">
								<c:out value="${producto.descripcion_abv}"></c:out>
							</p>
							<c:if test="${sessionScope.userSesion != null}">
							<div class="row align-items-stretch mb-4">
								<div class="col-sm-5 pr-sm-0">
									<div
										class="border d-flex align-items-center justify-content-between py-1 px-3 bg-white border-white">
										<span class="small text-uppercase text-gray mr-4 no-select">Cantidad</span>
										<div class="quantity">
											<button class="dec-btn p-0">
												<i class="fas fa-caret-left"></i>
											</button>
											<input class="form-control border-0 shadow-0 p-0" type="text" id="textcantidad" value="1">
											<button class="inc-btn p-0">
												<i class="fas fa-caret-right"></i>
											</button>
										</div>
									</div>
								</div>
								
								<div class="col-sm-3 pl-sm-0">
									<a class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0"
									id="btnaddcart" data-codigo='${producto.codigo}'										
										href="javascript:void(0)">Añadir al carrito</a>
								</div>
							</div>
							</c:if>
							<br>
							<ul class="list-unstyled small d-inline-block">
								<li class="px-3 py-2 mb-1 bg-white">
									<strong class="text-uppercase">SKU:</strong>
									<span class="ml-2 text-muted"><c:out value="${producto.codigo}"></c:out>
									</span>
									</li>
								<li class="px-3 py-2 mb-1 bg-white text-muted">
									<strong class="text-uppercase text-dark">Categoria:</strong>
									<a class="reset-anchor ml-2" href="tienda#${producto.categoria_detalle}-${producto.categoria_codigo}"><c:out value="${producto.categoria_detalle}"></c:out></a></li>

							</ul>
						</div>
					</div>
					<!-- DETAILS TABS-->
					<ul class="nav nav-tabs border-0" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="description-tab" data-toggle="tab" href="#description"
							role="tab" aria-controls="description" aria-selected="true">Descripción</a></li>

					</ul>
					<div class="tab-content mb-5" id="myTabContent">
						<div class="tab-pane fade show active" id="description"
							role="tabpanel" aria-labelledby="description-tab">
							<div class="p-4 p-lg-5 bg-white">
								<h6 class="text-uppercase">Descripción del Producto:</h6>
								<p class="text-muted text-small mb-0">
									<c:out value="${producto.descripcion}"></c:out>
								</p>
							</div>
						</div>
					</div>
					<!-- RELATED PRODUCTS-->
					<h2 class="h5 text-uppercase mb-4">Productos Relacionados</h2>
					<div class="row">
					<c:forEach items="${relacionados}" var="prd">
					<!-- PRODUCT-->
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="product text-center">
							<div class="position-relative mb-3">
								<div class="badge text-white badge-"></div>
								<a class="d-block" href="?producto=${prd.nombre}-${prd.codigo}"><img
									class="img-fluid w-100" src="${prd.foto_producto}" alt="..."></a>
								<div class="product-overlay">
								<c:if test="${sessionScope.userSesion != null}">
									<ul class="mb-0 list-inline">
										<li class="list-inline-item m-0 p-0"><a
											class="btn btn-sm btn-outline-dark" href="#">
											<i class="far fa-heart"></i></a></li>
										<li class="list-inline-item m-0 p-0"><a
											class="btn btn-sm btn-dark" href="javascript:void(0)">Añadir a carrito</a></li>
										<li class="list-inline-item mr-0"><a
											class="btn btn-sm btn-outline-dark" href="#productView"
											data-toggle="modal"><i class="fas fa-expand"></i></a></li>
									</ul>
									</c:if>
								</div>
							</div>
							<h6>
								<a class="reset-anchor" href="detail.html">${prd.nombre}</a>
							</h6>
							<c:if test="${!prd.oferta}">
							<p class="small text-muted">S/${prd.precio}</p> 
							</c:if> 
							<c:if test="${prd.oferta}">
							<p class="small text-muted"><strike>S/${prd.precio}</strike></p>
							<p class="small text-muted">S/${prd.precio_oferta}</p>
							</c:if>
							
						</div>
					</div> 
					</c:forEach>
					</div>
				</div>
			</section>

		</div>
	</div>

	<jsp:include page="shared/footer.jsp"></jsp:include>
	</div>





























	<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script src="./vendor/jquery/jquery.min.js"></script>
	<script src="./vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="./vendor/lightbox2/js/lightbox.min.js"></script>
	<script src="./vendor/nouislider/nouislider.min.js"></script>
	<script src="./vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="./vendor/owl.carousel2/owl.carousel.min.js"></script>
	<script src="./vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
	<script src="./js/front.js"></script>
	<script src="./js/header.js"></script>
	<script src="./js/cart.js"></script>
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



</body>
</html>