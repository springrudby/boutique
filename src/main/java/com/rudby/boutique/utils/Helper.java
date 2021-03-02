package com.rudby.boutique.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Helper {

	boolean ValidadorPatron(String campo, String pattern) {
		// Pattern pat = Pattern.compile(pattern);
		// Matcher mat = pat.matcher(campo);
		// return mat.matches();
		return !Pattern.matches(pattern, campo);
	}

	boolean isEmail(String campo) {
		return !Pattern.matches("^(.+)@(\\S+)$$", campo);
	}

	boolean isText(String campo) {
		return !Pattern.matches("^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$", campo);
	}

	boolean isExists(String campo) {
		return !campo.trim().isEmpty();
	}
	
	public boolean isNumeric(String str) {
		try {
			Double.parseDouble(str);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

	boolean ValidadorSiNumero(String campo) {
		return isNumeric(campo);
	}

}