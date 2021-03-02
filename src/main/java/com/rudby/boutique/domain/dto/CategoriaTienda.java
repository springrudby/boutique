package com.rudby.boutique.domain.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.rudby.boutique.domain.Categoria;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoriaTienda implements Serializable {

	private static final long serialVersionUID = 1L;

	Categoria categoriapadre;
	List<Categoria> subcategorias = new ArrayList<>();

}
