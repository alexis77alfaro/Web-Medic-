<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!--JQUERY-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <!-- Los iconos tipo Solid de Fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

    <link rel="stylesheet" type="text/css" href="css/AdmStyles.css">
    <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
</head>

<body>

 <!-- header -->
    <header class="head">
		<div class="logo">
			<img src="img/wm_logo2.png">
			<span>Web Medic</span>
		</div>
		<div class="menu">
			<ul>
				<li>
                	<span>Panel de Administrador</span>
             	</li>
			</ul>
		</div>
		
	</header>
<!-- //header -->

    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <!--  utilice internamente utilice 3/4 de toda la pantalla -->
            <div class="modal-content">
                <!-- contenido del modal -->
                <div class="col-12 user-img">
                    <!-- utilice todo el espacio disponible que hay con col-12 -->
                    <img src="img/Avatar.jpg" alt="">
                    <form class="col-12">
                        <!--  que ocupe el ancho total -->
                        <div class="form-group" id="user-group">
                            <!-- id modificardor para modificar y poner el icono a nuestro antojo -->
                            <!-- aqui los grupos individuales para los inputs -->
                            <input type="text" class="form-control" placeholder="Ingrese Usuario">
                        </div>
                        <div class="form-group" id="contraseña-group">
                            <input type="password" class="form-control" placeholder="Contraseña">
                        </div>
                        <button type="submit" class="btn btn-primary"> <i class="fas fa-sign-in-alt"></i> Iniciar
                            Sesion</button>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
      <!-- footer -->
 <div class="footer">
    <div class="footer-contenido">
        <div class="footer-seccion sobre">
            <h1 class="logo-text"><span id="SU">Web</span><span> Medic</span></h1>
            <p>
              Somos una clinica, la cual ofrece diferentes servicios medicos, tambien contamos con diferentes especialidades <br>
              -psiquiatría <br>
              -Cardiologia <br>
              -Reumatologia <br>
              -Pediatría
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