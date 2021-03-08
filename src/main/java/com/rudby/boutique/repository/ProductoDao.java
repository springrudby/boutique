package com.rudby.boutique.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.dto.ProductoTienda;
import com.rudby.boutique.domain.dto.ProductoTiendaDetalle;

@Mapper
@Repository
public interface ProductoDao {
	
	public List<ProductoTienda> getProductosPorCategoria (@Param("codigo_categoria")int codigo_categoria);
	
	public ProductoTiendaDetalle getProductoPorCodigo(@Param("codigo_producto")int codigo_producto);
	
	public List<String> getImagenesPorCodigoProducto(@Param("codigo_producto")int codigo_producto);
	

	public List<ProductoTienda> getProductosRelacionadosPorProducto(@Param("codigo_categoria")int codigo_categoria);
	

}
