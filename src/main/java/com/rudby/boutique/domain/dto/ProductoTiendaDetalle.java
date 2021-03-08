package com.rudby.boutique.domain.dto;

import java.io.Serializable;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductoTiendaDetalle implements Serializable {

	private static final long serialVersionUID = 1L;

	Integer codigo;
	
	String nombre;
	String descripcion_abv;
	String descripcion;
	Double precio;
	Integer categoria_codigo;
	Integer stock;
	String categoria_detalle;
	Boolean nuevo;
	Boolean oferta;
	Double precio_oferta;
	Boolean vacio;
	String foto_producto;
	
	List<String> imagenes;
}
