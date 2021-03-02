package com.rudby.boutique.service;

import java.util.Map;

import com.rudby.boutique.domain.Usuario;

public interface UsuarioService {

	public void RegistrarUsuario(Usuario us);
//	public void RegistrarUsuario(Map<String,Object> us);
	public boolean VerificarExistenciaDocumento(String documento);
	public boolean VerificarExistenciaCorreo(String correo);
	
	public Usuario LoginUsuario(String correo,String clave);
}