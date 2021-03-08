package com.rudby.boutique.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.rudby.boutique.domain.Suscritos;

@Mapper
@Repository
public interface SuscritosDao {

	public void RegistrarSuscriptor(Suscritos sus);

	public boolean VerificarExistenciaCorreo(String correo);

}
