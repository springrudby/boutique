package com.rudby.boutique.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rudby.boutique.domain.dto.ProductoTienda;
import com.rudby.boutique.domain.dto.ProductoTiendaDetalle;

public interface ProductoService {

	public List<ProductoTienda> getProductosPorCategoria(int codigo_categoria);
	
	public ProductoTiendaDetalle getProductoPorCodigo(int codigo_producto);

	public List<ProductoTienda> getProductosRelacionadosPorProducto(int codigo_producto);
}
