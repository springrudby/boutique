package com.rudby.boutique.servicei;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.repository.UsuarioDao;
import com.rudby.boutique.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	
	@Autowired
	UsuarioDao usuariodao;
	
	
	@Override
	public void RegistrarUsuario(Usuario us) {
		// TODO Auto-generated method stub
		usuariodao.RegistrarUsuario(us);
	}

}
