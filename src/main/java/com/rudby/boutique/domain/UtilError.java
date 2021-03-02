package com.rudby.boutique.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UtilError {
	
	String input;
	String error;
	String mensaje;

} 