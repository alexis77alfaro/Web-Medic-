package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Dao.DoctorDao;
import model.Especialidadesmdc;
import model.Medicomdc;

/**
 * Servlet implementation class ServeltAgregarDoctor
 */
public class ServeltAgregarDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeltAgregarDoctor() {
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
		//doGet(request, response);
		
		//Insertar Doctor
		 String nombreD=request.getParameter("nombre");
		 String apellidoD=request.getParameter("apellido");
		 String edadD=request.getParameter("edad");
		 String direccionD=request.getParameter("direccion");
		 String telefonoD=request.getParameter("telefono");
		 String correoD=request.getParameter("correo");
		 String contraD=request.getParameter("contra");
		 String especialidadD=request.getParameter("especialidad");
		
		Medicomdc mdc = new Medicomdc();
		Especialidadesmdc esp = new Especialidadesmdc();
		DoctorDao dDao = new DoctorDao();
		 	 
		  mdc.setNombresMdc(nombreD);
		  mdc.setApellidosMdc(apellidoD);
		  mdc.setEdadMdc(Integer.parseInt(edadD));
		  mdc.setDireccionMdc(direccionD);
		  mdc.setTelefonoMdc(telefonoD);
		  mdc.setCorreoMdc(correoD);
		  mdc.setPassMdc(contraD);
		  dDao.agregarMedico(mdc); 
		 
		
		 
		  System.out.println("Se agrego el medico");
			System.out.println("iniciando consulta del id...");
			String lastId = String.valueOf(dDao.UltimoIdDoctor());
			
			if(lastId.equals("") || lastId.equals("[]")) {
				System.out.println("Error al consultar id registrado");
			} else {
				int id = Integer.parseInt(lastId.substring(1, (lastId.length() - 1)));

				System.out.println("id: " + id);
				
				mdc.setIdMdc(id);
				
				esp.setMedicomdc(mdc);
				esp.setEspecialidadEspMdc(especialidadD);
				dDao.EspecialidadDoctor(esp);
				
				response.sendRedirect("AdmControl.jsp");
			}
	}

}
