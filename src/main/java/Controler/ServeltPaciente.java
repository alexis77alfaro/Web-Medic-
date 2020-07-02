package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Pacientepct pac = new Pacientepct();
		PacienteDao pdao = new PacienteDao();
		
		String correo = request.getParameter("txtCorreo");
		String pass = request.getParameter("txtPass");
		String action=request.getParameter("btn");
		
		if(action.equals("Ingresar")){
			String cerrarSesion = request.getParameter("btnCerrarSesion");

			if(cerrarSesion != null) {
				
				if(cerrarSesion.equals("Cerrar Sesion")) {
					HttpSession cerrar = (HttpSession) request.getSession();
					cerrar.invalidate();
					response.sendRedirect("index.jsp");
				}
				
			} else {
				pac.setCorreoPct(correo);
				pac.setPassPct(pass);
				
				int verificarPac = pdao.logInPaciente(pac).size();	
				
				if(verificarPac==1) {
					
					 /*for (Pacientepct nombrePct:pdao.logInPaciente(pac)) {
						 request.setAttribute("ip", nombrePct.getIdPct());
						 request.setAttribute("np", nombrePct.getNombresPct());
						 request.setAttribute("ap", nombrePct.getApellidosPct());
						 request.setAttribute("ep", nombrePct.getEdadPct());
						 request.setAttribute("tp", nombrePct.getTelefonoPct());
						 request.setAttribute("dp", nombrePct.getDireccionPct());
						 request.setAttribute("cp", nombrePct.getCorreoPct());
						 
						 request.getRequestDispatcher("/miPerfilPct.jsp").forward(request,response);
					 }*/
					 
					  
					HttpSession validado = request.getSession(true);
					validado.setAttribute("idUser", pac.getIdPct());
					
					response.sendRedirect("miPerfilPct.jsp");
				}else {
					System.out.println("Datos invalidos");
				}
			}
             //insercion
			
		}else if(action.equals("Registrar")){
			 
			   String nombresP=request.getParameter("txtnombres");
			   String apellidosP=request.getParameter("txtapellidos");
			   String edadP=request.getParameter("txtedad");
			   String direccionP=request.getParameter("txtdireccion");
			   String telefonoP=request.getParameter("txttelefono");
			   String usuarioP=request.getParameter("txtusuario");
			   String  contraseniaP=request.getParameter("txtcontrasenia");
			   
			   pac.setNombresPct(nombresP);
			   pac.setApellidosPct(apellidosP);
			   pac.setEdadPct(Integer.parseInt(edadP));
			   pac.setDireccionPct(direccionP);
			   pac.setTelefonoPct(telefonoP);
			   pac.setCorreoPct(usuarioP);
			   pac.setPassPct(contraseniaP);
			   pdao.agregarpacientes(pac);
			   response.sendRedirect("index.jsp");
			
		}

		   
		   
		
		}

}
	

	


