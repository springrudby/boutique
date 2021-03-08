package com.rudby.boutique.service;

import com.rudby.boutique.domain.Suscritos;

public interface SuscritosService {
	 public void RegistrarSuscriptor (Suscritos sus);
	 public boolean VerificarExistenciaCorreo(String correo);
}
