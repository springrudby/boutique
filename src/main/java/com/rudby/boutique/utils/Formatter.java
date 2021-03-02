package com.rudby.boutique.utils;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.rudby.boutique.domain.Categoria;
import com.rudby.boutique.domain.dto.CategoriaTienda;

@Component
public class Formatter {

	//GetListaCategoriaOrdenada
	/*
	 * Ordena las categorias, creando una categoria padre y 
	 * una List de sus categorias Hijas , 
	 * solo soporta 2 niveles de categorias. 
	 * 
	 */
	public List<CategoriaTienda> OrdenarCategorias(List<Categoria> categorias) {
		List<CategoriaTienda> auxlist = new ArrayList<>();
		for (Categoria cat : categorias) {
			if (cat.getCodigo_padre() == 0) {
				CategoriaTienda cate = new CategoriaTienda();
				cate.setCategoriapadre(cat);
				auxlist.add(cate);
			}
		} 
		for (Categoria cat : categorias) {
			for (CategoriaTienda cat_aux : auxlist) {
				if (cat_aux.getCategoriapadre().getCodigo() == cat.getCodigo_padre()) {
					List<Categoria> subcategorias_aux = cat_aux.getSubcategorias();
					subcategorias_aux.add(cat);
					cat_aux.setSubcategorias(subcategorias_aux);
				}
			}
		}
		return auxlist;
	}
}
