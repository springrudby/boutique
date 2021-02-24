package com.rudby.boutique.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rudby.boutique.service.CategoriaService;

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
	
}
