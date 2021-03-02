package com.rudby.boutique.service;

import java.util.List;

import com.rudby.boutique.domain.ProductoTienda;

public interface ProductoService {

	public List<ProductoTienda> getProductosPorCategoria(int codigo_categoria);

}
