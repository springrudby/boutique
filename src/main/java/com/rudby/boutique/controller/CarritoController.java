package com.rudby.boutique.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CarritoController {

	@GetMapping("/carrito")
	public String carrito(HttpServletRequest request) { 
		HttpSession session = request.getSession();
		if(session.getAttribute("userSesion") == null) {
			return "redirect:/";	
		}
		return "carrito";
	}
}
