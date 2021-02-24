package com.rudby.boutique.servicei;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rudby.boutique.domain.Categoria;
import com.rudby.boutique.repository.CategoriaDao;
import com.rudby.boutique.service.CategoriaService;

@Service
public class CategoriaServiceImpl implements CategoriaService{

	@Autowired
	CategoriaDao categoridao;
	
	@Override
	public List<Categoria> getCategoriasPrincipales() {
		return categoridao.getCategoriasPrincipales();
	}

}
