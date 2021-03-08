package com.rudby.boutique.servicei;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rudby.boutique.domain.dto.ProductoTienda;
import com.rudby.boutique.domain.dto.ProductoTiendaDetalle;
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

	@Override
	public ProductoTiendaDetalle getProductoPorCodigo(int codigo_producto) {
		// TODO Auto-generated method stub
		ProductoTiendaDetalle ptd = new ProductoTiendaDetalle();
		ptd = dao.getProductoPorCodigo(codigo_producto);
		ptd.setImagenes(dao.getImagenesPorCodigoProducto(codigo_producto));
		return ptd;
	}

	@Override
	public List<ProductoTienda> getProductosRelacionadosPorProducto(int codigo_producto) {
		// TODO Auto-generated method stub
		return dao.getProductosRelacionadosPorProducto(codigo_producto);
	}

}
