package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PacienteDao;
import model.Pacientepct;

/**
 * Servlet implementation class ServeltPaciente
 */
public class ServeltPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeltPaciente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String correo = request.getParameter("txtCorreo");
		   String pass = request.getParameter("txtPass");
		   
		   Pacientepct pac = new Pacientepct();
		   PacienteDao pdao = new PacienteDao();
		   
		   pac.setCorreoPct(correo);
		   pac.setPassPct(pass);
		   
		   int verificarPac = pdao.listaPaciente(pac).size();
		   
		   if(verificarPac==1) {
			  System.out.println("Entraste al sistema");
		   }else {
			   System.out.println("Datos invalidos");
		   }
		   
		
		}

	

}
