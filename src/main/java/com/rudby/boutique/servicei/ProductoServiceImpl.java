package com.rudby.boutique.servicei;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rudby.boutique.domain.ProductoTienda;
import com.rudby.boutique.repository.ProductoDao;
import com.rudby.boutique.service.ProductoService;

@Service
public class ProductoServiceImpl implements ProductoService {

	@Autowired
	private ProductoDao dao;

	@Override
	public List<ProductoTienda> getProductosPorCategoria(int codigo_categoria) {
		return dao.getProductosPorCategoria(codigo_categoria);
	}

}
