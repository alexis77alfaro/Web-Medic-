package Controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Dao.ControlCitaDao;
import Dao.EstadoCitaSoli;

/**
 * Servlet implementation class ServeltEstadoCitaSoli
 */
public class ServeltEstadoCitaSoli extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServeltEstadoCitaSoli() {
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
		
		EstadoCitaSoli sct = new EstadoCitaSoli();
		
		Gson json = new Gson();
		
		try {
			
			response.getWriter().append(json.toJson(sct.EstadoCitaSolicitada()));
			
			
		}catch (Exception e) {
			
		 System.out.println(e);	
		}
		
		
	}

}
