package com.rudby.boutique.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rudby.boutique.domain.Categoria;
import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.domain.dto.CategoriaTienda;
import com.rudby.boutique.service.CategoriaService;
import com.rudby.boutique.service.ProductoService;
import com.rudby.boutique.utils.Formatter;

@Controller
public class TiendaController {
	
	@Autowired
	Formatter format;
	
	@Autowired
	CategoriaService categoriservice;

	@Autowired
	ProductoService productoservice;
	
	@GetMapping("/tienda")
	public ModelAndView tienda() {
		ModelAndView myv = new ModelAndView();
		myv.addObject("categorias", format.OrdenarCategorias(categoriservice.getCategorias()));
		myv.setViewName("tienda");
		return myv;
	}
	
	@GetMapping("/productos/{codigo_producto}")
	public @ResponseBody ResponseEntity<?> getProductoPorCodigo(@PathVariable("codigo_producto") int codigo_producto){
		Map<String,Object> rpta = new HashMap<>();
		
		rpta.put("producto", productoservice.getProductoPorCodigo(codigo_producto));
		return new ResponseEntity<Map<String,Object>>(rpta,HttpStatus.OK);
	}
	
	@GetMapping("/productos.categoria/{codigo_categoria}")
	public @ResponseBody ResponseEntity<?> getProductoPorCategoria(@PathVariable("codigo_categoria") int codigo_categoria){
		Map<String,Object> rpta = new HashMap<>();
		rpta.put("categoria", categoriservice.getCategoriaPorCodigo(codigo_categoria));
		rpta.put("productos", productoservice.getProductosPorCategoria(codigo_categoria));
		return new ResponseEntity<Map<String,Object>>(rpta,HttpStatus.OK);
	}
  
}
