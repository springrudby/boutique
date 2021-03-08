package com.rudby.boutique.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Suscritos {

	Integer codigo;
	String correo;
	String nombre;
	Boolean activo;
	
}
