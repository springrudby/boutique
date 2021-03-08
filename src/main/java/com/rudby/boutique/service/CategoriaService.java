package com.rudby.boutique.service;

import java.util.List;

import com.rudby.boutique.domain.Categoria;

public interface CategoriaService {

	public List<Categoria> getCategoriasPrincipales();
	public List<Categoria> getCategorias();
	public List<Categoria> getCategoriaPorCodigo(int categoria_codigo);

}
