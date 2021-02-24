<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
					<li class="nav-item"><a class="nav-link" href="javascript:void(0);" data-toggle="modal" data-target="#loginmodals">
							Ingresar </a></li>
					<li class="nav-item"><a class="nav-link" href="#"> | </small></a></li>
					<li class="nav-item"><a class="nav-link" href="#">
							Registrar </a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>




<div class="modal fade" id="loginmodals" tabindex="-1" role="dialog"
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
						<input type="email" class="form-control" id="recipient-name">
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Apellido Paterno:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Apellido Materno:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Tipo de Documento:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Documento:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Correo:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Contraseña:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					<div class="form-group">
						<label for="message-text" class="col-form-label">Repetir Contraseña:</label>
						<input type="password" class="form-control" id="message-text"/>
					</div>
					
					
				</form>
			</div>
			<div class="modal-footer">
				<!-- button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button-->
				<button type="button" class="btn btn-block text-white btn-primary">Ingresar</button>
				<a class="btn text-info btn-default">Registrar</a>
			</div>
		</div>
	</div>
</div>

</body>
</html>