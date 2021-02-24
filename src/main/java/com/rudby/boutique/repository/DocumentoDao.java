package com.rudby.boutique.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.TipoDocumento;

@Mapper
@Repository
public interface DocumentoDao {

	public List<TipoDocumento> getDocumentos();
}
