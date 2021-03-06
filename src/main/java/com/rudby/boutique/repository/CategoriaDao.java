package com.rudby.boutique.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.Categoria;

@Mapper
@Repository
public interface CategoriaDao {

	public List<Categoria> getCategoriasPrincipales();
	public List<Categoria> getCategorias();
	public List<Categoria> getCategoriaPorCodigo(@Param("categoria_codigo")int categoria_codigo);
	
}
