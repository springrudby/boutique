<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
							<div class="col-lg-6 p-lg-0" id="productolistimg">


								<!--<a class="d-none"
									href="img/product-5-alt-2.jpg" title="Red digital smartwatch"
									data-lightbox="productview"></a>-->
							</div>

							<div class="col-lg-6">

								<button class="close p-4" type="button" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								<div class="p-5 my-md-4">
									<h2 class="h4" id="productotitulomodal">Red digital
										smartwatch</h2>
									<p class="text-muted" id="productopreciomodal">S/ 250</p>
									<p class="text-small mb-4" id="productodescripcionmodal">
										mus. Vestibulum ultricies aliquam convallis.</p>
									<c:if test="${sessionScope.userSesion != null}">
										<div class="row align-items-stretch mb-4">
											<div class="col-sm-7 pr-sm-0">
												<div
													class="border d-flex align-items-center justify-content-between py-1 px-3">
													<span class="small text-uppercase text-gray mr-4 no-select">cantidad</span>
													<div class="quantity">
														<button class="dec-btn p-0">
															<i class="fas fa-caret-left"></i>
														</button>
														<input class="form-control border-0 shadow-0 p-0"
														id="textcantidad"
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
													id="btnaddcart"
													
													href="javascript:void(0)">Añadir al Carrito</a>
											</div>
										</div>
									</c:if>
									<c:if test="${sessionScope.userSesion == null}">
										<!-- div class="row align-items-stretch mb-4">
										<div class="col-sm-7 pr-sm-0">
											<div class="border d-flex align-items-center justify-content-between py-1 px-3">
												<span class="small text-uppercase text-gray mr-4 no-select">cantidad</span>
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
										
									</div-->
									</c:if>
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
			<!-- HERO SECTION-->
			<section class="py-5 bg-light">
				<div class="container">
					<div class="row px-4 px-lg-5 py-lg-4 align-items-center">
						<div class="col-lg-6">
							<h1 class="h2 text-uppercase mb-0">TIENDA</h1>
						</div>
						<div class="col-lg-6 text-lg-right">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb justify-content-lg-end mb-0 px-0">
									<li class="breadcrumb-item"><a href="inicio">INICIO</a></li>
									<li class="breadcrumb-item active" aria-current="page">TIENDA</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</section>
			<section class="py-5">
				<div class="container p-0">
					<div class="row">
						<!-- SHOP SIDEBAR-->
						<div class="col-lg-3 order-1 order-lg-1">
							<h5 class="text-uppercase mb-4">CATEGORIAS</h5>


							<div id="accordion">
								<c:forEach items="${categorias}" var="cat">

									<div class="py-2 px-4 bg-dark text-white mb-3 ">
										<a
											href='#<c:out value="${cat.categoriapadre.detalle}"/>-<c:out value="${cat.categoriapadre.codigo}"/>'
											class="small text-uppercase font-weight-bold">${cat.categoriapadre.detalle}</a>
										<a class="float-right collapsed" style="cursor: pointer"
											data-toggle="collapse"
											data-target="#collapse<c:out value="${cat.categoriapadre.codigo}"/>"
											aria-expanded="true"
											aria-controls="collapse<c:out value="${cat.categoriapadre.codigo}"/>"><i
											class="fas fa-plus"></i></a>
									</div>

									<div class="collapse"
										id="collapse<c:out value="${cat.categoriapadre.codigo}"/>"
										data-parent="#accordion">
										<ul
											class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
											<c:forEach items="${cat.subcategorias}" var="subcat">
												<li class="mb-2"><a class="reset-anchor"
													href='#<c:out value="${subcat.detalle}"/>-<c:out value="${subcat.codigo}"/>'>${subcat.detalle}</a></li>
											</c:forEach>
										</ul>
									</div>

								</c:forEach>
							</div>

							<h6 class="text-uppercase mb-4">RANGO DE PRECIOS</h6>
							<div class="price-range pt-4 mb-5">
								<div id="range"></div>
								<div class="row pt-2">
									<div class="col-6">
										<strong class="small font-weight-bold text-uppercase">From</strong>
									</div>
									<div class="col-6 text-right">
										<strong class="small font-weight-bold text-uppercase">To</strong>
									</div>
								</div>
							</div>
						</div>




						<!-- SHOP LISTING-->
						<div class="col-lg-9 order-2 order-lg-2 mb-5 mb-lg-0">
							<div class="row mb-3 align-items-center">
								<div class="col-lg-6 mb-2 mb-lg-0">
									<p class="text-small text-muted mb-0" id="showcategoria"></p>
								</div>
								<div class="col-lg-6">
									<ul
										class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
										<!-- li class="list-inline-item text-muted mr-3"><a class="reset-anchor p-0" href="#"><i class="fas fa-th-large"></i></a></li>
                      <li class="list-inline-item text-muted mr-3"><a class="reset-anchor p-0" href="#"><i class="fas fa-th"></i></a></li -->
										<li class="list-inline-item"><input type="text"
											class="form-control" placeholder="Ingrese nombre" /></li>
										<!-- li class="list-inline-item">
                        <select class="selectpicker ml-auto" name="sorting" data-width="200" data-style="bs-select-form-control" data-title="Default sorting">
                          <option value="default">Default sorting</option>
                          <option value="popularity">Popularity</option>
                          <option value="low-high">Price: Low to High</option>
                          <option value="high-low">Price: High to Low</option>
                        </select>
                      </li-->
									</ul>
								</div>
							</div>
							<div class="row" id="divContenedor">
							
							</div>
							<!-- PAGINATION-->
							<nav aria-label="Page navigation example">
								<ul
									class="pagination justify-content-center justify-content-lg-end">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"><span aria-hidden="true">Â«</span></a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"><span aria-hidden="true">Â»</span></a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</section>
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


	<script>

var item_producto = function (producto) {
    return '<div class="col-lg-4 col-sm-6">'+
                  '<div class="product text-center">'+
                    '<div class="mb-3 position-relative">'+
                    (producto.nuevo?
                    '<div class="badge text-white badge-primary">Nuevo</div>':'')+
                    (producto.oferta?
                    '<div class="badge text-white badge-info">Oferta</div>':'')+
                    
                      '<div class="badge text-white badge-"></div><a class="d-block" href="detalle_producto?producto='+producto.nombre+'-'+producto.codigo+'"><img class="img-fluid w-100" src="'+producto.foto_producto+'" alt="..."></a>'+
                      '<div class="product-overlay">'+
                        '<ul class="mb-0 list-inline">'+                            
                          '<li class="list-inline-item m-0 p-0"><a class="btn btn-sm btn-dark" href="detalle_producto?producto='+producto.nombre+'-'+producto.codigo+'">VER DETALLE</a></li>'+
                          '<li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="javascript:void(0)" onclick="openModal('+producto.codigo+')"><i class="fas fa-expand"></i></a></li>'+
                        '</ul>'+
                      '</div>'+
                    '</div>'+
                    '<h6> <a class="reset-anchor" href="'+producto.codigo+'"> '+producto.nombre+'</a></h6>'+
                    (!producto.oferta?'<p class="small text-muted">S/'+producto.precio+'</p>':'')+
                    (producto.oferta?'<p class="small text-muted"><strike>S/'+producto.precio+'</strike></p>'+'<p class="small text-muted">S/'+producto.precio_oferta+'</p>':'')+
                  '</div>'+
                '</div>';
  }
  //'<p class="small text-muted">S/'+producto.precio+'</p>'+
	
	
	window.onload = function(){
		cargarProductos();
	}
	
	var img_principal=function(image) {return'<a class="product-view d-block h-100 bg-cover bg-center" style="background: url('+image+')" href="'+image+'" data-lightbox="productview" title="Red digital smartwatch"></a>';}
	var list_images =function(image) {return'<a class="d-none" href="'+image+'" title="image" data-lightbox="productview"></a>';}
	var openModal = function(codigo_producto){
		$.ajax({
			type: "GET",
			url: "productos/"+codigo_producto,
			contentType: "application/json", 
			beforeSend:function(){ 
			},
			success: function (result) {
				var htmlimages = "";
				 
				var producto = result.producto;
				var precio =producto.oferta?producto.precio_oferta:producto.precio;
				
				$("#productotitulomodal").text(producto.nombre);
				$("#productopreciomodal").text("S/ "+precio);
				$("#productodescripcionmodal").text(producto.descripcion_abv);
				$("#btnaddcart").attr("data-codigo",producto.codigo);
				
				 
				
				htmlimages += img_principal(producto.foto_producto);
				
				producto.imagenes.forEach(img => {
					htmlimages +=list_images(img); 
				})
				$("#productolistimg").html(htmlimages);
				$("#productView").modal("show");
			} 
		});
	}
	
	
	var cargarProductos = function(){
		var localhost = window.location.hash.substring(1);    
	    var codigo = localhost.split("-")[1];
	    if(typeof codigo == 'undefined'){
	    	codigo = 0;
	    }
		$.ajax({
			type: "GET",
			url: "productos.categoria/"+codigo,
			contentType: "application/json", 
			beforeSend:function(){ 
			},
			success: function (result) {
				var categorias = result.categoria;
				if(categorias.length > 1){
					$("#showcategoria").text(categorias[1].detalle.toUpperCase()+" \\ "+categorias[0].detalle.toUpperCase())	
				}else{
					$("#showcategoria").text(categorias[0].detalle.toUpperCase())
				} 
				var html = "";
				result.productos.forEach(prd=>{
				html+=item_producto(prd);	
				}); 
				$("#divContenedor").html(html); 
			} 
		});

	}
	window.addEventListener('hashchange', function () {
		cargarProductos();
    })

	//$("#showcategoria").text("");

</script>

</body>
</html>