package com.rudby.boutique.servicei;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rudby.boutique.domain.TipoDocumento;
import com.rudby.boutique.repository.DocumentoDao;
import com.rudby.boutique.service.TipoDocumentoService;

@Service
public class TipoDocumentoServiceImpl implements TipoDocumentoService {

	@Autowired
	private DocumentoDao documentodao;

	@Override
	public List<TipoDocumento> getDocumentos() {
		return documentodao.getDocumentos();
	}
}
