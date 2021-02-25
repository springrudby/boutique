package com.rudby.boutique.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.Usuario;

@Mapper
@Repository
public interface UsuarioDao {

	public void RegistrarUsuario(Usuario us);
	
}
