package com.rudby.boutique.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TipoDocumento {
	Integer codigo;
	String detalle;
	String detalle_abv;
	Integer caracteres;
	Boolean activo;
}
