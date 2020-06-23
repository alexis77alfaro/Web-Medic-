package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DoctorDao;
import model.Medicomdc;

/**
 * Servlet implementation class ServeletMedico
 */
public class ServeletMedico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeletMedico() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		String user=request.getParameter("usuario");
		String pass=request.getParameter("pass");
		String action=request.getParameter("btn");
		
		DoctorDao Dct=new DoctorDao();
		Medicomdc medico=new Medicomdc();
		
		if(action.equals("Login")){
			medico.setCorreoMdc(user);
			medico.setPassMdc(pass);
			
			Dct.loging(medico);
			
			
			int verificarPac = Dct.loging(medico).size();	
			if(verificarPac==1) {
				
				 System.out.println("Bienvenido");
				 
				for(Medicomdc mdc:Dct.loging(medico)){
					request.setAttribute("name", mdc.getNombresMdc());
					request.setAttribute("correo", mdc.getCorreoMdc());
					request.setAttribute("apellido", mdc.getApellidosMdc());
					request.getRequestDispatcher("/PerfilDoctor.jsp").forward(request, response);
					 
				}
			}else {
				response.sendRedirect("LoginDct.jsp");
				System.out.print("error macro");
			}
		}
		
		
	}

}
