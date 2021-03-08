package com.rudby.boutique.repository;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.Usuario;

@Mapper
@Repository
public interface UsuarioDao {

	public void RegistrarUsuario(Usuario us);

	public boolean VerificarExistenciaDocumento(@Param("documento") String documento);

	public boolean VerificarExistenciaCorreo(@Param("correo") String correo);

	public Usuario LoginUsuario(@Param("correo")String correo,@Param("clave")String clave);
	
	public void ActivarUsuarioPorToken(@Param("token")String token);
}
