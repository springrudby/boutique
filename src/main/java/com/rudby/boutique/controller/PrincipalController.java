package com.rudby.boutique.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PrincipalController {

	@GetMapping("/")
	public String principal() {
		return "index";
	}
	@GetMapping("/inicio")
	public String inicio() {
		return "index";
	}
	
	@GetMapping("/tienda")
	public String tienda() {
		return "tienda";
	}
	@GetMapping("/carrito")
	public String carrito() {
		return "carrito";
	}
	
	@GetMapping("/pagar")
	public String pagar() {
		return "pagar";
	}
	
	@GetMapping("/confirmarcion")
	public String confirmarcion() {
		return "confirmarcion";
	}
	
}
