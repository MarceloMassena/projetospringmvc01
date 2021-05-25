package br.com.cotiinformatica.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/") //URL -> raiz do projeto
	public ModelAndView test(HttpServletResponse response) throws IOException{
		//método abre no navegador o conteudo da página home
		return new ModelAndView("home");
	}
}
