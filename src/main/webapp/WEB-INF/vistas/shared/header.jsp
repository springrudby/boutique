<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<header class="header bg-white">
	<div class="container px-0 px-lg-3">
		<nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0">
			<a class="navbar-brand" href="index.html"><span
				class="font-weight-bold text-uppercase text-dark">Boutique</span></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav mr-auto">
					<li class="nav-item">
						<!-- Link--> <a class="nav-link active" href="inicio">Inicio</a>
					</li>
					<li class="nav-item">
						<!-- Link--> <a class="nav-link" href="tienda">Tienda</a>
					</li>
				</ul>

				<ul class="navbar-nav ml-auto">
					<!-- li class="nav-item"><a class="nav-link" href="cart.html">
									<i class="fas fa-dolly-flatbed mr-1 text-gray"></i>Cart<small
									class="text-gray">(2)</small>
							</a></li-->
					<!-- Call Modal Login -->
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0);" data-toggle="modal"
						data-target="#loginmodal"> Ingresar </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> | </small></a></li>
					<!-- Call Modal Register -->
					<li class="nav-item"><a class="nav-link"
						href="javascript:void(0);" data-toggle="modal"
						data-target="#Registrarmodal"> Registrar </a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>




<!--comentario esta bien  Call Modal Login -->
<div class="modal fade" id="loginmodal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Iniciar Sesión</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Correo:</label>
						<input type="email" class="form-control" id="recipient-name">
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Contraseña:</label>
						<input type="password" class="form-control" id="message-text" />
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<!-- button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button-->
				<button type="button" class="btn btn-block text-white btn-primary">Ingresar</button>
				<a class="btn text-info btn-default">recuperar contraseña</a>
			</div>
		</div>
	</div>
</div>

<!--aqui se modefica  Modal Registe
para abrir un modal mediante un boton y utlizando Javascript
Ejemplo : 
<button id="modalprueba">abrir</button>


<div class="modal fade" id="modalprueba" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true"></div>


$('#modalprueba').click(function(){
	//Mostrar modal
	$('#modalprueba').modal('show');
	
	//Ocultar modal
	$('#modalprueba').modal('hidden');
});

 -->
<div class="modal fade" id="Registrarmodal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Registrate</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Nombres:</label>
						<input type="email" class="form-control" id="nombre">
						<small id="nombreerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Apellido Paterno:</label> 
						<input type="text" class="form-control" id="ape_paterno" />
							<small id="ape_paternoerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Apellido Materno:</label>
							
							<input type="text" class="form-control" id="ape_materno" />
							<small id="ape_maternoerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Tipo de Documento:</label>
						<select class="custom-select" id="codigo_tipodocumento">
						</select>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Documento:</label>
						<input type="text" class="form-control" id="documento" maxlength="8" />
						<small id="documentoerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Correo:</label> 
						<input type="text" class="form-control" id="correo" />
						<small id="correoerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Contraseña:</label>
						<input type="text" class="form-control" id="clave" />
						<small id="claveerror" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Repetir Contraseña:</label>
							<input type="text" class="form-control" id="clave1" />
							<small id="clave1error" class="text-danger" style="display:none">minimo 8 caracteres</small>
					</div>

				</form>
				
			</div>
			<div class="modal-footer">
				<!-- button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button-->
				<button type="button" class="btn btn-block text-white btn-primary"id="btnregistrar" >Registrar</button>
				<a class="btn text-info btn-default" data-dismiss="modal">Cancelar</a>
			</div>
		</div>
	</div>
</div>



<script>
	var url = document.location.pathname.split('/')[2];
	url=(url==""?'inicio':url); 
	
	var navlinks = document.getElementsByClassName("nav-link");  
	for (var navlink of navlinks) {
		navlink.classList.remove("active");
		if(url == navlink.innerText.toLowerCase()){
			navlink.classList.add("active");
			}
	}

	
	
</script>
