package com.rudby.boutique.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Categoria {
	Integer codigo;
	String detalle;
	String imagen;
	Integer codigo_padre;
	 
}

