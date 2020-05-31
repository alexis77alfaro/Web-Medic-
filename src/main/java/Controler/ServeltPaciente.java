package Controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

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
		
		//Parametro a utilizar para invocar el cierre de sesion
		String cerrarSesion = request.getParameter("btnCerrarSesion");
		
		/*Si la variable del cierre de sesion NO ESTÁ VACIA,
		 * esto quiere decir que la variable contiene algun valor,
		 * entonces se procede a "borrar ese valor" para que 
		 * el usuario regrese al estado de "No ha iniciado sesion"*/
		if(cerrarSesion != null) {
			
			//Se verifica nuevamente que el llamado venga del boton que diga "Cerrar Sesion"
			if(cerrarSesion.equals("Cerrar Sesion")) {
				HttpSession cerrar = (HttpSession) request.getSession();
				cerrar.invalidate();
				//Se redirige al usuario al index
				response.sendRedirect("index.jsp");
			}
			
		/* Caso contrario, significa que el usuario no esta Logueado, y que hará LogIn. 
		 * Proceso normal de la validacion del login. */
		} else {
			pac.setCorreoPct(correo);
			pac.setPassPct(pass);
			
			int verificarPac = pdao.logInPaciente(pac).size();	
			if(verificarPac==1) {

/*				List<Pacientepct> info = pdao.logInPaciente(pac);
				System.out.println(info); */
				System.out.println("Entraste al sistema");
				
				/* Cuando la validacion del LogIn se haga correctamente
				 * se rellenara la variable de sesion "validado" para hacer constar 
				 * que el usuario efectivamente ha iniciado sesión.*/
                  
				/*Recorremos la tabla Paciente con el filtro del login
				 *  y enviamos los datos al perfil del paciente*/
				
				 for (Pacientepct nombrePct:pdao.logInPaciente(pac)) {
					 request.setAttribute("np", nombrePct.getNombresPct());
					 request.setAttribute("ap", nombrePct.getApellidosPct());
					 request.setAttribute("ep", nombrePct.getEdadPct());
					 request.setAttribute("tp", nombrePct.getTelefonoPct());
					 request.setAttribute("dp", nombrePct.getDireccionPct());
					 request.setAttribute("cp", nombrePct.getCorreoPct());
					 
					 request.getRequestDispatcher("/miPerfilPct.jsp").forward(request,response);
					 
				 }
				 
				  
				HttpSession validado = request.getSession(true);
				validado.setAttribute("correoUser", correo);
				response.sendRedirect("miPerfilPct.jsp");
			}else {
				System.out.println("Datos invalidos");
			}
		}
		   
		   
		   //--Insercion de pacientes
		   
/*		   
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
		   
		   */
		    //
		   
		   
		   
		
		}

}
	

	


