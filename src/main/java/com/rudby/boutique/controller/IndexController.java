package com.rudby.boutique.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.service.CategoriaService;
import com.rudby.boutique.service.UsuarioService;

import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@Autowired
	CategoriaService categoriservice;
	
	@GetMapping("/")
	public ModelAndView index() {
		ModelAndView myv = new ModelAndView();
		myv.addObject("categorias", categoriservice.getCategoriasPrincipales());
		myv.setViewName("index");
		return myv;
	}
	
	@GetMapping("/inicio")
	public ModelAndView inicio() {
		ModelAndView myv = new ModelAndView();
		myv.addObject("categorias", categoriservice.getCategoriasPrincipales());
		myv.setViewName("index");
		return myv;
	}
	
	@Autowired
	UsuarioService usuarioservice;
	
	@PostMapping("/registrarusuario")
	public @ResponseBody ResponseEntity<?> crearUsuario(@RequestBody Usuario us){
		Map<String,Object> rpta = new HashMap<String, Object>();
		UUID uuid = UUID.randomUUID();
		us.setToken(uuid.toString().replace("-", ""));
		usuarioservice.RegistrarUsuario(us);
		rpta.put("correo", us.getCorreo());		
		return new ResponseEntity<Map<String,Object>>(rpta,HttpStatus.CREATED);
	}
	
}
