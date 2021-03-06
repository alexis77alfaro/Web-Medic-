<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="Js/RegistrarClientes.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
	    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
	    <script src="http://code.jquery.com/jquery-latest.js"> </script>
	 
	    
        <title>Registro de Cliente</title>
            
    </head>
    
 
    
    <style>
        body{
            background: url(img/fondoMdc1.jpg);
            
        }
        .container{
            background-color: #ffffff;
            border-radius: 10px;
            padding: 25px;
            margin-top: 60px;
        }
    </style>
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
        <div class="container col-lg-4" style="opacity: 0.9; margin-bottom:60px;">
        
            <form name="formulario" action="ServeltPaciente" method="Post">
                <div class="form-group text-center">
                 <h5>Registro de Pacientes</h5>

                </div>

                <div class="row">
                    <div class="col-sm-12 form-group">
                        <label class="">Ingrese su Nombre</label>
                        <input type="text" class="form-control"  placeholder="Nombre(s)" name="txtnombres"
                         id="nombre" maxlength="20" pattern="[A-Z a-z]{3,20}"
                        title="introduce entre 3 y 20 letras" required>
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12 form-group">
                        <label >Ingrese su apellido</label>
                        <input type="text"  id="apellido" class="form-control" placeholder="Apellido(s)" name="txtapellidos" maxlength="20"
                        pattern="[A-Z a-z]{3,20}" title="introducir entre 3 y 20 letras" required>
                    </div>
                    <br>
                    <br>
                    <div class="col form-group">
                        <label>Ingrese su edad</label>
                        <input type="number" id="edad" class="form-control" placeholder="Edad" name="txtedad" id="edad" min="18" max="100" 
                               title="introducir edad entre 18 y 100" required>
                    </div>
                    <br>
                    <br>

                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su direcci�n</label>
                        <input type="text" id="direccion" placeholder="Direccion" class="form-control" maxlength="50" name="txtdireccion"
                          title="introducir entre 1 y 50 letras" required>

                    </div>

                    <br>
                    <br>
  
                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su telefono</label>
                        <input type="text" id="telefono" placeholder="Telefono" class="form-control"  maxlength="8" name="txttelefono"
                         pattern="[0-9]{8}" title="introducir n�mero telefonico de 8 cifras" required>

                    </div>

                    <br>  
                    <br>  

                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su Correo</label>
                        <input type="email" id="usuario" placeholder="Usuario" class="form-control"  maxlength="30" name="txtusuario"
                          title="introduce tu correo electronico" pattern="[a-z-0-9]+@+[a-z]+.+[a-z]" required >

                    </div> 
                    <br>  
                    <br>  
                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su contrase�a</label>
                        <input type="password" id="contrasenia" class="form-control" maxlength="16" placeholder="Contrase�a" name="txtcontrasenia"
                            min="4" max="16"  title="introducir contrase�a entre 4 y 16 digitos" pattern="[a-z-0-9]{4,16}" required>

                    </div> 
                    <br>  
                    <br>

                </div>
             

                <input type="submit" class="btn btn-info btn-block" value="Registrar" name="btn" > 

            </form>
            <br>  
            <a href="index.jsp"> Cancelar </a>

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


        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </body>
    
   
    
    
</html>