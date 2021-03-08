package com.rudby.boutique.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.rudby.boutique.domain.Suscritos;
import com.rudby.boutique.domain.TipoDocumento;
import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.domain.UtilError;
import com.rudby.boutique.repository.UsuarioDao;
import com.rudby.boutique.service.SuscritosService;
import com.rudby.boutique.service.TipoDocumentoService;
import com.rudby.boutique.service.UsuarioService;

@Component
public class Validator {

	private static List<UtilError> ERRORES;// = new ArrayList<>();
	private static Helper help = new Helper();

	@Autowired
	TipoDocumentoService tpservice;

	@Autowired
	UsuarioService usservice;

	@Autowired
	SuscritosService suscritoservice;
	
	
	TipoDocumento find_Tipodocumento;


	public List<UtilError> ValidarLoginUsuario(String correo, String clave) {
		ERRORES = new ArrayList<>();
		if (help.isEmail(correo)) {
			ERRORES.add(new UtilError("txtcorreo", "Este", "Este campo acepta solo texto"));
		}
		if (clave.length() < 4) {
			ERRORES.add(new UtilError("txtclave", "Este","Este campo debe tener más de 4 caracteres."));
		}
		return ERRORES;
	}

	public List<UtilError> ValidarRegistroSuscriptor(String correo,String nombre) {
		ERRORES = new ArrayList<>();
		if (help.isEmail(correo.trim())) {
			ERRORES.add(new UtilError("correosus", "Este", "El formato de este campo debe ser de correo"));
		}
		if (help.isText(nombre.trim())) {
			ERRORES.add(new UtilError("nombresus", "Este","Este campo solo acepta Texto."));
		}
		if (suscritoservice.VerificarExistenciaCorreo(correo.trim())) {
			ERRORES.add(new UtilError("correosus", "Correo ya fue registrado", "Este correo ya fue registrado"));
		}
		return ERRORES;		
	}

	boolean existecodigo;
	public List<UtilError> ValidarRegistroUsuario(Usuario us) {
		find_Tipodocumento = null;
		existecodigo = false;
		ERRORES = new ArrayList<>();

		tpservice.getDocumentos().forEach(tp -> {
			if (tp.getCodigo() == us.getCodigo_tipodocumento()) {
				find_Tipodocumento = tp;
			}
			if (us.getCodigo_tipodocumento() == tp.getCodigo()) {
				existecodigo = true;
			}
		});

		if (help.isText(us.getNombre())) {
			ERRORES.add(new UtilError("nombre", "Este campo acepta solo texto", "Este campo acepta solo texto"));
		}

		if (help.isText(us.getApe_paterno())) {
			ERRORES.add(new UtilError("ape_paterno", "Este campo acepta solo texto", "Este campo acepta solo texto"));
		}

		if (help.isText(us.getApe_materno())) {
			ERRORES.add(new UtilError("ape_materno", "Este campo acepta solo texto", "Este campo acepta solo texto"));
		}

		if (!existecodigo) {
			ERRORES.add(new UtilError("codigo_tipodocumento", "Este campo acepta solo texto",
					"EL código ingresado no existe"));
		} else if (us.getDocumento().length() != find_Tipodocumento.getCaracteres()) {
			ERRORES.add(new UtilError("documento", "Cantidad de caracteres incorrecta Incorrecto",
					"Debe ser " + find_Tipodocumento.getCaracteres() + " caracteres"));
		}

		if (help.isEmail(us.getCorreo())) {
			ERRORES.add(new UtilError("correo", "Formato Incorrecto", "Formato Incorrecto"));
		}
		if (usservice.VerificarExistenciaCorreo(us.getCorreo())) {
			ERRORES.add(new UtilError("correo", "Correo ya fue registrado", "Este correo ya fue registrado"));
		}

		/*
		 * if (usservice.VerificarExistenciaDocumento(us.getDocumento())) {
		 * ERRORES.add(new UtilError("documento", "Incorrecto",
		 * "Este Nro de documento ya fue registrado")); }
		 */
		return ERRORES;
	}

	// String PATTERNTEXTO = "^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$";
	/*
	 * public List<UtilError> ValidarUsuario(Map<String, Object> us) { ERRORES = new
	 * ArrayList<>();
	 * 
	 * tpservice.getDocumentos().forEach(tp -> { if (tp.getCodigo() ==
	 * Integer.parseInt(us.get("codigo_tipodocumento").toString())) ;//
	 * Codigo_tipodocumento()) encontrado = tp; });
	 * 
	 * if (help.ValidadorPatron(us.get("nombre").toString(), PATTERNTEXTO)) {
	 * ERRORES.add(new UtilError("nombre", "", "Este campo acepta solo texto")); }
	 * if (help.ValidadorPatron(us.get("ape_paterno").toString(), PATTERNTEXTO)) {
	 * ERRORES.add(new UtilError("ape_paterno", "",
	 * "Este campo acepta solo texto")); } if
	 * (help.ValidadorPatron(us.get("ape_materno").toString(), PATTERNTEXTO)) {
	 * ERRORES.add(new UtilError("ape_materno", "",
	 * "Este campo acepta solo texto")); }
	 * 
	 * if (help.isEmail(us.get("correo").toString())) { ERRORES.add(new
	 * UtilError("correo", "Formato Incorrecto", "Formato Incorrecto")); } if
	 * (us.get("documento").toString().length() != encontrado.getCaracteres()) {
	 * ERRORES.add(new UtilError("documento",
	 * "Cantidad de caracteres incorrecta Incorrecto", "Debe ser " +
	 * encontrado.getCaracteres() + " caracteres")); } return ERRORES; }
	 */
}
