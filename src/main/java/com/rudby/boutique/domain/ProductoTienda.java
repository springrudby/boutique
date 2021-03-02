package com.rudby.boutique.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductoTienda implements Serializable{
	 
	private static final long serialVersionUID = 1L;
	Integer codigo;
	String nombre;
	Double precio;
	Boolean nuevo;
	Boolean oferta;
	Double precio_oferta;
	Boolean vacio;
	String detalle_categoria;
	String imagen;

}
