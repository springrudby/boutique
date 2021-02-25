package com.rudby.boutique.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Usuario {

	Integer codigo;
	String nombre;
	String ape_paterno;
	String ape_materno;
	Integer codigo_tipodocumento;
	String documento;
	String correo;
	String clave;
	Date fecharegistro;
	String token;
	Boolean activo;
	
}
