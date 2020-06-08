<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control</title>
    <link rel="stylesheet" type="text/css" href="css/AdminStyle.css">
    <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
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
					<a href="">Mi Perfil</a>
				</li>
				<hr>
				<br>
				<li>
					<a href="">Servicios</a>
				</li>
				<hr>
				
				<li>
					<a href="">Buscar</a>
				</li>
				<hr>
			
			</ul>
		</div>
		
	</header>
<!-- //header -->

    <div class="container">
        <div id="encabezado">
            <h3>Bienvenido</h3>
            <h3>Nombre</h3>
        </div>

        <div id="ingresardoctores">
            <form>

              <h3>Registro De Doctores</h3>

                <Label for="Nombres">Nombres:</Label>
                <input type="text" placeholder="Ingrese Un Nombre">

                <label for="Apellidos">Apellidos:</label>
                <input type="text" placeholder="Ingrese los apellidos">

                <label for="Edad">Edad:</label>
                <input type="text" placeholder="Ingrese la edad">

                <label for="Direccion">Dirección:</label>
                <input type="text" placeholder="Ingrese una Dirección">

                <label for="Telefono">Teléfono:</label>
                <input type="text" placeholder="Ingrese el teléfono">

                <label for="Correo">Correo Electrónico:</label>
                <input type="text" placeholder="Ingrese el correo electrónico">

                <label for="Password">Contraseña:</label>
                <input type="Password" placeholder="Ingrese una contraseña">


                <button class="buttonC" type="reset">Cancelar</button>
                <button class="buttonA" type="submit">Agregar Doctor</button>
            </form>
        </div>

        <div id="solicitudes">
            <div class="container1">
                <table class="table">
                    <caption>Control De Citas</caption>
                    <thead>
                        <tr>
                            <th>Paciente</th>
                            <th>Descripción-cita</th>
                            <th>Doctor</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                        <tr>
                            <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
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
    </div>
    
     <!-- footer -->
 
    
</body>

</html>