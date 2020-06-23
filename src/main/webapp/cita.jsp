<!DOCTYPE html>
<html>
<head>
	<title>Web Medic</title>
	<link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
	<link rel="stylesheet" type="text/css" href="css/citaStyle.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
</head>
<body>
	<header class="head">
		<div class="logo">
			<img src="img/wm_logo2.png">
			<a href="index.jsp">Web Medic</a>
		</div>
		<div class="menu">
			<ul>
				<li>
					<a href="">Soy Doctor &#x25BE;</a>
					<ul class="subMenu">
						<li>
							<a href="loginDct.jsp">Iniciar Sesion</a>
						</li>
						<li>
							<a href="contactarClinica.jsp">Contactar Clínica</a>
						</li>
					</ul>
				</li>
				<hr>
				<li>
					<a href="miPerfilPct.jsp">Mi Perfil</a>
				</li>
				<hr>
				<li>
					<a href="">Servicios</a>
				</li>
				<hr>
				<li>
					<a href="buscar.jsp">Ver Doctores</a>
				</li>
				<hr>
				<li>
					<a href="QuienesSomos.jsp">¿Quienes somos?</a>
				</li>
			</ul>
		</div>
	</header>
	<form action="ServeltMedi" method="POST" >
	<div class="content">
				<div class="citaPlace" >
			<div class="infMedic">
				<div class="title">
					<h3>DATOS GENERALES DEL MÉDICO</h3>
				</div>
				<div class="data">
					<div class="datos">
						<div class="frm">
							<div class="formulario">
							    <h4 class="rotulo">Paciente</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("idp"));%>" name="idp">
								<h4 class="rotulo">Id Medico</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("imedi"));%>" name="iMedi">
								<h4 class="rotulo">Nombre Completo</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("nmedi"));%>">
								<h4 class="rotulo">Especialidad</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("espe"));%>">
								<h4 class="rotulo">Telefono</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("tel"));%>">
								<h4 class="rotulo">Correo Electronico</h4>
								<input type="text" class="control" readonly="readonly" value ="<%out.print(request.getParameter("corr"));%>">
							</div>
						</div>
					</div>
					<div class="horario">
						<h3>HORARIO</h3>
						<table class="resultTable">
							<thead>
								<tr>
									<th>
										Día
									</th>
									<th>
										Hora Inicio
									</th>
									<th>
										Hora Final
									</th>
								</tr>	
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="cita">
				<div class="frm">
					<div class="formulario">
		                <label class="rotulo" for="Cita">Descripción de la Cita:</label>
	                	<input class="control" type="text" placeholder="Descripción de su cita..." name ="desc">
	                	<label class="rotulo" for="Dia">Fecha:</label>
        	    	    <input class="control" type="date" name ="dia">
            	    	<label class="rotulo" for="Dia">Dia:</label>
        	    	    <input class="control" type="text" name ="dia">
    	    	        <label class="rotulo" for="Hora">Hora:</label>
	    	            <input class="control" type="time"  name ="hora">
    		            <input class="button" type="submit" value="Solicitar">
		            </div>
				</div>
			</div>
		</div>
		<div class="horarioDoc">
			<div class="divisionDoc">
				<h3>Agenda del Doctor</h3>
				<table class="resultTable">
					<thead>
						<tr>
							<th>
								Día
							</th>
							<th>
								Hora
							</th>
							<th>
								Fecha
							</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</form>
	
	<div class="footer">
        <div class="footer-contenido">
            <div class="footer-seccion sobre">
                <h1 class="logo-text"><span id="SU">Clinic</span><span>Web</span></h1>
                <p>
                  Somos una clinica, la cual ofrece diferentes servicios medicos, tambien contamos con diferentes especialidades <br>
                  -psiquiatria <br>
                  -Cardiologia <br>
                  -Reumatologia <br>
                  -Pediatria
                </p>
              
                
               
            </div>
            <div class="footer-seccion contacto">
                <h2>Contactanos</h2>
             <br>
             <div class="contacto">
                <span><i class="fas fa-phone"></i> &nbsp;(+503)5869-4815</span><br> <br>
                <span><i class="fas fa-envelope"></i> &nbsp;Info@clinicweb.com</span><br> <br>
                <span><i class="fas fa-map-marker-alt"></i>&nbsp; Avenida salchipapa</span>
            </div>
            </div>
            <div class="footer-seccion-redes">
                <h2>Siguenos en Nuestras redes</h2>
                <br>
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            
        </div>
            <div class="footer-bottom">
                &copy;2020,Todos los derechos reservados | Clinic Web
            </div>
        
    </div>
</body>
</html>