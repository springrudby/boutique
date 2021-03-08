package com.rudby.boutique.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rudby.boutique.domain.Categoria;
import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.domain.dto.CategoriaTienda;
import com.rudby.boutique.domain.dto.ProductoTiendaDetalle;
import com.rudby.boutique.service.CategoriaService;
import com.rudby.boutique.service.ProductoService;

@Controller
public class DetalleProductoController { 

	@Autowired
	ProductoService prdservice;
	
	@GetMapping("/detalle_producto")
	public ModelAndView detalleproducto(@RequestParam("producto")  String producto) {
		String[] producto_codigos = producto.split("-");
		//System.out.print(producto_codigos[1]);		
		int codigo_producto = Integer.parseInt(producto_codigos[1]);
		ModelAndView mav = new ModelAndView();
		ProductoTiendaDetalle ptd = prdservice.getProductoPorCodigo(codigo_producto);
		mav.addObject("pageUrl", "/detalle_producto?producto="+ptd.getNombre()+"-"+ptd.getCodigo());
		mav.addObject("producto", ptd);
		mav.addObject("relacionados", prdservice.getProductosRelacionadosPorProducto(codigo_producto));
		
		mav.setViewName("detalle_producto");
		return mav;
	}
}
