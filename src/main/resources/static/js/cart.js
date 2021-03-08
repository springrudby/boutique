/*	
var addcart = function addcart (codigo_producto){
	var cantidad = $("#textcantidad").val();
	var data={
			codigo_producto = codigo_producto,
			cantidad = cantidad
	}
	console.log(data);
}*/

$("#btnaddcart").on("click",function(){
	
	var cantidad = $("#textcantidad").val();
	var data={
			codigo_producto : $(this).data("codigo"),
			cantidad : cantidad
	}
	console.log(data);
	
});