package com.rudby.boutique.controller;

import java.awt.Graphics;
import java.awt.Shape;

import javax.swing.text.BadLocationException;
import javax.swing.text.View;
import javax.swing.text.Position.Bias;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PrincipalController {

	
	
	
	
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
	
	@GetMapping("/confirmacion")
	public String confirmarcion() {
		return "confirmacion";
	}
	
}
