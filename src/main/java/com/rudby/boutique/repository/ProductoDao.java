package com.rudby.boutique.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.ProductoTienda;

@Mapper
@Repository
public interface ProductoDao {
	
	public List<ProductoTienda> getProductosPorCategoria (@Param("codigo_categoria")int codigo_categoria);
	

}
