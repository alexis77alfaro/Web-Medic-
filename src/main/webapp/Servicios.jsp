<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Servicios</title>
	<link rel="stylesheet" type="text/css" href="css/head&footStyle.css">

	<link rel="stylesheet" type="text/css" href="css/Servicios.css">
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
				<li id="menuDoc">
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
					<a href="Servicios.jsp">Servicios</a>
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

<div class="content">
		<div class="encabezado">
			<h2>Web Medic</h2>
			<h3>Nuestros servicios</h3>
		</div>
		<div class="servicios">
			<div class="panel">
				<h4 class="title">Perfil de Paciente</h4>
				<p class="text">
				<ul>
				    <li>Perfil de paciente con sus datos personales</li><br>
					<li>Consultar lista de Medicos y realizar una Cita personalizada donde puede elegir
					el dia y la hora que desee</li><br>
					<li>Tiene su apartado de poder ver el estado de las citas solicitadas a los doctores,
					Ver si la cita esta aprovada o no</li>
					</ul>
					
			</p>
			</div>
			<div class="panel">
				<h4 class="title">Perfil de Médico</h4>
				<p class="text">
				<ul>
				<li>Perfil de médico con sus datos personales</li><br>
				
				<li>Visualizar las solicitudes de los pacientes como tambien la potestad de
				aprobar las citas que esten a su alcance para atender durtante todas las semanas</li><br>
				<li>Tambien ofrece una agenda de la semana actual personalizada para llevar un control de atención
				muy ordenado</li>
					</ul>
				</p>
			</div>
			<div class="panel">
				<h4 class="title">Especialidades de Médico</h4>
				<p class="text">
				<ul>
				 <li>Dentro de las especialidades tenemos variedad de médicos con experiencia en una área definida,
				 de las cuales se encuentran las siguientes:</li><br>
				 <li>Cardiólogia</li><br>
				 <li>Psiquiatra</li><br>
				 <li>Reumatologia</li><br>
				 <li>Pediatra</li><br>
				 <li>Ortopediatria</li><br>
				 <li>Neurologia</li>
				 </ul>
				</p>
			</div>
		</div>
	</div>

<br>
<br>
<br>
<br>
<br>



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