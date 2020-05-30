<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/buscarStyle.css">
	<link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
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
							<a href="">Contactar Clínica</a>
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
					<a href="buscar.jsp">Buscar</a>
				</li>
				<hr>
				<li>
					<a href="">¿Quienes somos?</a>
				</li>
				<hr>
				<li>
					<a href="creditos.jsp">Creditos</a>
				</li>
			</ul>
		</div>
	</header>
	<div class="content">
		<form class="buscador">
			<input class="textBox" type="text" name="" placeholder="Escribe la especialidad del doctor que buscas...">
			<input class="botonBuscar" id="btn" type="submit" name="">
		</form>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#resultados').show();

				$( "#btn" ).click(function(){
					$('#resultados').hide();
				});
			});
		</script>
		<div class="result" id="resultados">
			<table class="resultTable">
				<thead>
					<tr>
						<th>
							Especialidad
						</th>
						<th>
							Doctor
						</th>
						<th>
							Opciones
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							Pediatra
						</td>
						<td>
							Juan Perez
						</td>
						<td>
							<a href="">Solicitar Consulta</a>
						</td>
					</tr>
					<tr>
						<td>
							Pediatra
						</td>
						<td>
							Juan Perez
						</td>
						<td>
							<a href="">Solicitar Consulta</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
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