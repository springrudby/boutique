
				$.ajax(
					{
						type: "GET",
						url: "tipodocumentos",						
						contentType: "application/json",
						success: function (result) 
						{
							console.log(result);
							 var html = "";
							for (var x = 0; x < result.length; x++) 
							{ 
								var elm = result[x]; 
								html += "<option data-tamanio='" + elm.caracteres + "' value='" + elm.codigo + "'>" + elm.detalle + " (" + elm.detalle_abv + ")</option>"
							}							
							$("#codigo_tipodocumento").html(html); 
						}
					});

				$("#codigo_tipodocumento").on("change", function () {
					$("#documento").val("");
					var tamanio = $("#codigo_tipodocumento option:selected").data("tamanio");
					$("#documento").attr("maxlength", tamanio)
				}) 

				$("#btnregistrar").on("click", function () {
					var data = {
						nombre: $("#nombre").val(),
						ape_paterno: $("#ape_paterno").val(),
						ape_materno: $("#ape_materno").val(),
						codigo_tipodocumento: $("#codigo_tipodocumento").val(),
						documento: $("#documento").val(),
						correo: $("#correo").val(),
						clave: $("#clave").val()
					};

					$.ajax({
						type: "POST",
						url: "registrarusuario",
						contentType: "application/json",
						data: JSON.stringify(data),
						beforeSend:function(){
							$("#registroform small").css("display","none");
						},
						success: function (result) {
							$("#Registrarmodal").modal("hide"); 
							$("#registroform").trigger("reset");
							Swal.fire(
								'Usuario Registrado',
								'active su cuenta viendo el correo enviado a :' + result.correo,
								'success'
							)
						}, error: function (err) {
							console.log(err);
							for( var e of err.responseJSON.errores){
								$("#"+e.input+"error").text(e.mensaje);
								$("#"+e.input+"error").css("display","block");
							}
						},
					});
				});
				 
					function alert(typealert,mensaje)
					{ 
						console.log("typealert",typealert)
						console.log("mensaje",mensaje)
					return "<div class='alert alert-"+typealert+"' role='alert'><span id='smsestadotxt'></span></div>";
					}
				$("#btningresar").on("click",function(){
					var datalogin ={
							txtcorreo:$("#txtcorreo").val(),
							txtclave:$("#txtclave").val()
					}
					$.ajax({
						type: "POST",
						url: "ingresar",
						contentType: "application/json",
						data: JSON.stringify(datalogin),
						beforeSend:function(){
							$("#formlogin small").css("display","none");
							$("#smsestado").html(alert("info","INFO"));
							$("#smsestadotxt").text("Buscando . . . . .");
						},
						success: function (result) {
							$("#smsstatus").html("");
							$("#loginmodal").modal("hide"); 
							$("#formlogin").trigger("reset");
							Swal.fire('Bienvenido ',result.mensaje,'success');
							window.location.href = "tienda"; 
						}, error: function (err) {
							// console.log(err);
							// console.log(err.status)
							if(err.status == 400){
							for( var e of err.responseJSON.errores){
								$("#"+e.input+"error").text(e.mensaje);
								$("#"+e.input+"error").css("display","block");
							}}
							if(err.status == 404){
								var e = err.responseJSON.errores[0];
								console.log(e)
								// var mensaje = e.mensaje;
								$("#"+e.input).html(alert("danger","Error"));
								$("#"+e.input+"txt").text(e.mensaje);
								
							}
						},
					});
				});

