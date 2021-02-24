package com.rudby.boutique.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rudby.boutique.service.TipoDocumentoService;
@Controller
public class UtilsController {

	@Autowired
	TipoDocumentoService tipodocumentoservice;
	
	@GetMapping("/tipodocumentos")
	public @ResponseBody ResponseEntity<?> GETlistaDocumentos(){
		return new ResponseEntity<>(tipodocumentoservice.getDocumentos(),HttpStatus.OK);
	}
}
