package com.rudby.boutique.servicei;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rudby.boutique.repository.SuscritosDao;

import com.rudby.boutique.domain.Suscritos;
import com.rudby.boutique.service.SuscritosService;

@Service
public class SuscritosServiceImpl implements SuscritosService {

	@Autowired
	SuscritosDao dao;

	@Override
	public void RegistrarSuscriptor(Suscritos sus) {
		// TODO Auto-generated method stub
		dao.RegistrarSuscriptor(sus);
	}

	@Override
	public boolean VerificarExistenciaCorreo(String correo) {
		// TODO Auto-generated method stub
		return dao.VerificarExistenciaCorreo(correo);
	}

}
