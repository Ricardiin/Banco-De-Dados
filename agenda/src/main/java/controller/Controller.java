package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.DAO;
import model.JavaBeans;

/**
 * Servlet implementation class Controller
 */
@WebServlet({"/main","/insert"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DAO dao = new DAO(); //TESTAR O BANCO DE DADOS
	JavaBeans contato = new JavaBeans();
	
    /**
     * Default constructor. 
     */
    public Controller() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//dao.testeConexao();
		
		String action = request.getServletPath();
		System.out.println(action);
		
		if (action.equals("/main")) {
			contatos(request,response);
		}else if(action.equals("/insert")){
			novoContato(request,response);
		}else {
			response.sendRedirect("index.html");
		}
				
			
		}
		protected void contatos (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
			response.sendRedirect("agenda.jsp");
	}
		
		protected void novoContato (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
			
			
			contato.setNome(request.getParameter("nome"));
			contato.setFone(request.getParameter("fone"));
			contato.setEmail(request.getParameter("email"));
			
			dao.inserirContato(contato);
			response.sendRedirect("main");

		}
}
