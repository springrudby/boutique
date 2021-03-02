package com.rudby.boutique.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagarController {
	@GetMapping("/pagar")
	public String pagar(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userSesion") == null) {
			return "redirect:/";
		}
		return "pagar";
	}

	@GetMapping("/confirmacion")
	public String confirmarcion(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userSesion") == null) {
			return "redirect:/";
		}
		return "confirmacion";
	}
}
