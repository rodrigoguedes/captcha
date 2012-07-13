package br.com.guedesdesouza.captcha;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidaCaptchaRegistroServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String resposta 	= req.getParameter("captcha.id");
		String idCaptcha	= req.getSession().getId();
		
		RequestDispatcher rd = null;
		
		if (isValido(resposta, idCaptcha)){//se verdadeiro conclui cadastro
			rd = getServletContext().getRequestDispatcher("/concluido.jsp");
			rd.forward(req, resp);
		}else{// caso seja inválido retorna a página de registro
			req.setAttribute("msg","Texto da imagem digitado errado");
			rd = getServletContext().getRequestDispatcher("/registrar.jsp");
			rd.forward(req, resp);
		}
	}
	
	private boolean isValido(String resposta, String idCaptcha){
		boolean resultado = false;
		try{
			resultado = CaptchaServiceSingleton.getInstance().validateResponseForID(idCaptcha,resposta);
		}catch (Exception e) {
			// TODO: handle exception
		}		
		return resultado;
	}
}