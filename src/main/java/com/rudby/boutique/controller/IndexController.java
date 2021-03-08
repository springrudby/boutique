package com.rudby.boutique.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rudby.boutique.domain.Suscritos;
import com.rudby.boutique.domain.Usuario;
import com.rudby.boutique.domain.UtilError;
import com.rudby.boutique.service.CategoriaService;
import com.rudby.boutique.service.SuscritosService;
import com.rudby.boutique.service.UsuarioService;
import com.rudby.boutique.utils.SendEmail;
import com.rudby.boutique.utils.Validator;

import lombok.extern.java.Log;

import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@Autowired
	UsuarioService usuarioservice;

	@Autowired
	SuscritosService suscritosservice;

	@Autowired
	Validator validador;

	Map<String, Object> rpta = new HashMap<String, Object>();
	List<UtilError> errores = new ArrayList<>();

	@Autowired
	CategoriaService categoriservice;

	@Autowired
	SendEmail sendemail;

	@GetMapping("/")
	public ModelAndView index(HttpServletRequest request) {
		ModelAndView myv = new ModelAndView();
		myv.addObject("categorias", categoriservice.getCategoriasPrincipales());

		myv.setViewName("index");
		return myv;
	}

	@GetMapping("/inicio")
	public ModelAndView inicio(HttpServletRequest request) {
		ModelAndView myv = new ModelAndView();
		myv.addObject("categorias", categoriservice.getCategoriasPrincipales());
		myv.setViewName("index");
		return myv;
	}

	@GetMapping("/validartoken/{token}")
	public String validartoken(@PathVariable("token") String token) {
		usuarioservice.ActivarUsuarioPorToken(token);
		return "redirect:/";
	}

	@PostMapping("/registrarusuario")
	public @ResponseBody ResponseEntity<?> crearUsuario(@RequestBody Usuario us, HttpServletRequest request) {
		limpiarVariables();
		errores.addAll(validador.ValidarRegistroUsuario(us));

		if (!errores.isEmpty()) {
			rpta.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.BAD_REQUEST);
		}

		UUID uuid = UUID.randomUUID();
		String token =uuid.toString().replace("-", "");
		try {
			sendemail.Enviar_Email_Token(us.getCorreo(),token);
		} catch (MessagingException | IOException e) {
			e.printStackTrace();
		}		 
		us.setToken(token);
		usuarioservice.RegistrarUsuario(us);
		rpta.put("correo", us.getCorreo());
		return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.CREATED);
	}

	@PostMapping("/ingresar")
	public @ResponseBody ResponseEntity<?> Ingresar(@RequestBody Map<String, Object> us, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Map<String, Object> rpta = new HashMap<>();
		String correo = us.get("txtcorreo").toString(), clave = us.get("txtclave").toString();
		Usuario usuarioencontrado = null;

		limpiarVariables();
		errores.addAll(validador.ValidarLoginUsuario(correo, clave));

		if (!errores.isEmpty()) {
			rpta.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.BAD_REQUEST);
		} else {

			usuarioencontrado = usuarioservice.LoginUsuario(correo, clave);
			if (usuarioencontrado == null) {
				errores.add(new UtilError("smsestado", "ss", "Usuario no encontrado"));
				rpta.put("errores", errores);
				return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.NOT_FOUND);
			} else {
				session.setAttribute("userSesion", usuarioencontrado);
				rpta.put("mensaje",
						usuarioencontrado.getNombre().concat(" ").concat(usuarioencontrado.getApe_paterno()));
				return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.ACCEPTED);
			}
		}
	}

	@RequestMapping(value = "/cerrarsesion", method = RequestMethod.GET)
	public String CerrarSesion(HttpServletRequest request) {
		HttpSession sesion = request.getSession();
		sesion.invalidate();
		return "redirect:/";
	}

	@PostMapping("/registrarsuscriptor")
	public @ResponseBody ResponseEntity<?> registrarsuscriptor(@RequestBody Suscritos sus, HttpServletRequest request) {
		limpiarVariables();
		errores.addAll(validador.ValidarRegistroSuscriptor(sus.getCorreo(), sus.getNombre()));

		if (!errores.isEmpty()) {
			rpta.put("errores", errores);
			return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.BAD_REQUEST);
		}
		suscritosservice.RegistrarSuscriptor(sus);
		rpta.put("mensaje", "Bienvenido " + sus.getNombre() + " enviaremos nuestras promociones a " + sus.getCorreo());
		return new ResponseEntity<Map<String, Object>>(rpta, HttpStatus.CREATED);
	}

	void limpiarVariables() {
		rpta.clear();
		errores.clear();
	}

	/*
	 * @PostMapping("/registrarusuario") public @ResponseBody ResponseEntity<?>
	 * crearUsuario(@RequestBody Map<String,Object> us) { errores.clear();
	 * errores.addAll(validador.ValidarUsuario(us));
	 * 
	 * if (!errores.isEmpty()) { rpta.put("errores", errores); return new
	 * ResponseEntity<Map<String, Object>>(rpta, HttpStatus.BAD_REQUEST);
	 * 
	 * }else {
	 * 
	 * UUID uuid = UUID.randomUUID(); us.put("token",uuid.toString().replace("-",
	 * " ")); usuarioservice.RegistrarUsuario(us); rpta.put("correo",
	 * us.get("correo")); return new ResponseEntity<Map<String, Object>>(rpta,
	 * HttpStatus.CREATED);
	 * 
	 * } }
	 */
}
