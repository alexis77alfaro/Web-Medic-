<%@page import="Dao.PacienteDao"%>
<%@page import="model.Pacientepct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<title>Web Medic</title>
<link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
<link rel="stylesheet" type="text/css" href="css/miPerfilPctStyle.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
<script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
			
			$.post('ServeltEstadoCitaSoli',{

			}, function(respose){

			let datos = JSON.parse(respose);

            var tabladatos = document.getElementById('EstadoSoli');
            for(var i = 0; i < datos.length; i++)
            

				
			

            	EstadoSoli.innerHTML +=`

                <tr>

                <td> ${datos[i][0]} </td>
                <td> ${datos[i][1]} </td>
                <td> ${datos[i][2]} </td>
                <td> ${datos[i][3]} </td>
                <td> ${datos[i][4]} </td>
                
                </tr>
                `
				
					
					});
				});
				
			</script>


</head>

<%
	HttpSession seccionPrincipal = (HttpSession) request.getSession();
	String sectionVarUsser = String.valueOf(seccionPrincipal.getAttribute("idUser"));
	PacienteDao pctD = new PacienteDao();
	
	System.out.println(sectionVarUsser);
	if (sectionVarUsser == null) {
		response.sendRedirect("LoginPaciente.jsp");
	} else {
		for (Pacientepct nombrePct : pctD.datosPaciente(sectionVarUsser)) {
			request.setAttribute("ip", nombrePct.getIdPct());
			request.setAttribute("np", nombrePct.getNombresPct());
			request.setAttribute("ap", nombrePct.getApellidosPct());
			request.setAttribute("ep", nombrePct.getEdadPct());
			request.setAttribute("tp", nombrePct.getTelefonoPct());
			request.setAttribute("dp", nombrePct.getDireccionPct());
			request.setAttribute("cp", nombrePct.getCorreoPct());
		}
	}
%>


<body>
	<header class="head">
		<div class="logo">
			<img src="img/wm_logo2.png"> <a href="index.jsp">Web Medic</a>
		</div>
		<div class="menu">
			<ul>
				<li><a href="">Soy Doctor &#x25BE;</a>
					<ul class="subMenu">
						<li><a href="loginDct.jsp">Iniciar Sesion</a></li>
						<li><a href="contactarClinica.jsp">Contactar Clínica</a></li>
					</ul></li>
				<hr>
				<li><a href="miPerfilPct.jsp">Mi Perfil </a></li>
				<hr>
				<li><a href="">Servicios</a></li>
				<hr>
				<li><a href="buscar.jsp">Ver Doctores</a></li>
				<hr>
				<li><a href="QuienesSomos.jsp">¿Quienes somos?</a></li>
				<hr>
				<li>
					<form action="ServeltPaciente" method="post">
						<a class="btnAjustes" href="index.jsp" name="btnCerrarSesion">Cerrar
							Sesion</a>
					</form>
				</li>
			</ul>
		</div>
	</header>
	<div class="content">
		<div class="fondo"></div>
		<div class="perfil">
			<img class="avatar" src="img/paciente2.png">
			<div class="inf">
				<h3>
					<%
						out.print(request.getAttribute("np"));
					%>
					<%
						out.print(request.getAttribute("ap"));
					%>
				</h3>
				<h3></h3>
				<span>Correo Electrónico: <%
					out.print(request.getAttribute("cp"));
				%></span>
				<span>Edad: <%
					out.print(request.getAttribute("ep"));
				%></span> <span>Teléfono:
					<%
 	out.print(request.getAttribute("tp"));
 %>
				</span>
				<p>
					Dirección:
					<%
					out.print(request.getAttribute("dp"));
				%>
				</p>
			</div>
			<div class="accion">
				<a class="btnAccion"
					href="buscar.jsp?Idp=<%out.print(request.getAttribute("ip"));%>">Consulta
					la lista de Doctores y solicita tu cita.</a>
			</div>
			<div class="misCitas">
				<h2>Estado de mis citas solicitadas</h2>
				<table class="resultTable" id="EstadoSoli">
					<thead>
						<tr>
							<th>Doctor</th>

							<th>Descripción</th>

							<th>Fecha</th>

							<th>Hora</th>

							<th>Estado</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-contenido">
			<div class="footer-seccion sobre">
				<h1 class="logo-text">
					<span id="SU">Clinic</span><span>Web</span>
				</h1>
				<p>
					Somos una clinica, la cual ofrece diferentes servicios medicos,
					tambien contamos con diferentes especialidades <br>
					-psiquiatria <br> -Cardiologia <br> -Reumatologia <br>
					-Pediatria
				</p>



			</div>
			<div class="footer-seccion contacto">
				<h2>Contactanos</h2>
				<br>
				<div class="contacto">
					<span><i class="fas fa-phone"></i> &nbsp;(+503)5869-4815</span><br>
					<br> <span><i class="fas fa-envelope"></i>
						&nbsp;Info@clinicweb.com</span><br> <br> <span><i
						class="fas fa-map-marker-alt"></i>&nbsp; Avenida salchipapa</span>
				</div>
			</div>
			<div class="footer-seccion-redes">
				<h2>Siguenos en Nuestras redes</h2>
				<br> <a href="#"><i class="fab fa-facebook"></i></a> <a
					href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a>
			</div>

		</div>
		<div class="footer-bottom">&copy;2020,Todos los derechos
			reservados | Clinic Web</div>

	</div>
</body>
</html>