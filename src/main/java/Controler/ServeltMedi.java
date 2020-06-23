package Controler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Dao.CitaDao;
import Dao.DoctorDao;
import model.Citact;
import model.Medicomdc;
import model.Pacientepct;

/**
 */
public class ServeltMedi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeltMedi() {
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
		String idM = request.getParameter("iMedi");
		String idp = request.getParameter("idp");
		String desc = request.getParameter("desc");
	    String fecha = request.getParameter("dia");
	    String hora = request.getParameter("hora");
	    CitaDao ci = new CitaDao();
	    Citact ct = new Citact();
	    Medicomdc md = new Medicomdc();
	    Pacientepct pt = new Pacientepct();
	    
	     try {
	    SimpleDateFormat sd = new SimpleDateFormat("yyyy-dd-MM");
	    Date dia = sd.parse(fecha);
	    Date fechaActual = new Date();
	    
	    
	    if(dia.before(fechaActual)) {
	    	 response.sendRedirect("Respuesta.jsp?mens='No puedes agendar una cita antes de la fecha actual'");
	    }else if(dia.after(fechaActual)) {
	    	response.sendRedirect("Respuesta.jsp?mens='La cita se guardo con exito'");

	    	try {
				md.setIdMdc(Integer.parseInt(idM));
				pt.setIdPct(Integer.parseInt(idp));
				ct.setPacientepct(pt);
				ct.setDescripcionDC(desc);
				ct.setEstado("ESPERA");
				ct.setFechaDC(fecha);
				ct.setHoraDC(hora);
				ct.setMedicomdc(md);
				ci.agregarCita(ct);
				response.sendRedirect("cita.jsp");
			} catch (Exception e) {
				System.out.println("Error al registrar la cita"+ e.toString());
			
		}
	    	
	    }
		
	     }catch (Exception e) {
			System.out.println("Error al castear las fechas"+ e);
		}
	   
	    
			 
			
			
			DoctorDao dd = new DoctorDao();
			Gson json = new Gson();
				
				try {

					response.getWriter().append(json.toJson(dd.verDoc()));
					
				} catch (Exception e) {
				System.out.println(e);
		
	}
	
			
	}
	
	
}
