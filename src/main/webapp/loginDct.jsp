<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
    <link rel="stylesheet" href="css/estilosDct.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    <title>Doctor</title>
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
							<a href="contactarClinica.jsp">Contactar Cl�nica</a>
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
					<a href="QuienesSomos.jsp">�Quienes somos?</a>
				</li>
			</ul>
		</div>
	</header>


    <div class="login-box">
    <img src="img/avatar.png" class="avatar">
    <h1>LOGIN</h1>
    <form action="ServeletMedico" method="Post">
        <p>Correo Electr�nico</p>
        <input type="text"  placeholder="Correo" name="usuario" maxlength="30" 
         title="introduce tu correo electronico" pattern="[a-z-0-9]+@+[a-z]+.+[a-z]" required>
         
        <p>Contrase�a</p>
        <input type="password"  placeholder="Contrase�a" name="pass" maxlength="16" min="4" max="16"
         title="introducir contrase�a entre 4 y 16 digitos" pattern="[a-z-0-9]{4,16}" required>
        
        <input type="submit"  value="Login" name="btn">
        <a href="#"></a>
    </form>

    </div>
    
      <!-- footer -->
 <div class="footer">
    <div class="footer-contenido">
        <div class="footer-seccion sobre">
            <h1 class="logo-text"><span id="SU">Web</span><span> Medic</span></h1>
            <p>
              Somos una clinica, la cual ofrece diferentes servicios medicos, tambien contamos con diferentes especialidades <br>
              -psiquiatr�a <br>
              -Cardiologia <br>
              -Reumatologia <br>
              -Pediatr�a
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
            &copy;2020,Todos los derechos reservados | Web Medic
        </div>
    
</div>
<!-- //footer -->   
    
    
</body>
</html>