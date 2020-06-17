package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Dao.CitaDao;
import model.Citact;
import model.Medicomdc;
import model.Pacientepct;

/**
 * Servlet implementation class ServeltCita
 */
public class ServeltCita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeltCita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idCita = request.getParameter("idcita");
		String idMedi = request.getParameter("idMed");
		String idPac = request.getParameter("idPac");
		String desc = request.getParameter("desc");
		String dia = request.getParameter("dia");
		String hora = request.getParameter("hora");
		
		Citact ct = new Citact();
		CitaDao cd = new CitaDao();
		Medicomdc md = new Medicomdc();
	    Pacientepct pt = new Pacientepct();
	    
	    md.setIdMdc(Integer.parseInt(idMedi));
	    pt.setIdPct(Integer.parseInt(idPac));
		ct.setIdCT(Integer.parseInt(idCita));
		ct.setMedicomdc(md);
		ct.setPacientepct(pt);
		ct.setEstado("APROBADA");
		ct.setDescripcionDC(desc);
		ct.setFechaDC(dia);
		ct.setHoraDC(hora);
		cd.aprobarCita(ct);
		response.sendRedirect("PerfilDoctor.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     CitaDao ci = new CitaDao();
			Gson json = new Gson();
			
			try {
				
				response.getWriter().append(json.toJson(ci.verCita()));
				
				
			} catch (Exception e) {
			System.out.println(e);
			}
			
			
	     
	}

}
