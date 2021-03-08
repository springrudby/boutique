package com.rudby.boutique.servicei;

import java.util.UUID;

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

	@Override
	public boolean VerificarExistenciaDocumento(String documento) {
		// TODO Auto-generated method stub
		return usuariodao.VerificarExistenciaDocumento(documento);
	}

	@Override
	public boolean VerificarExistenciaCorreo(String correo) {
		// TODO Auto-generated method stub
		return usuariodao.VerificarExistenciaCorreo(correo);
	}

	@Override
	public Usuario LoginUsuario(String correo, String clave) {
		// TODO Auto-generated method stub 
		return usuariodao.LoginUsuario(correo, clave);
	}

	@Override
	public void ActivarUsuarioPorToken(String token) {
		// TODO Auto-generated method stub
		usuariodao.ActivarUsuarioPorToken(token);
	}

}
