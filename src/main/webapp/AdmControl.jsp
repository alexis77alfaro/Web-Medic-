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
  <script src="http://code.jquery.com/jquery-latest.js"> </script>

<script type="text/javascript">

	$(document).ready(function(){
		
			
			$.post('ServeltControlCita',{

			}, function(respose){

			let datos = JSON.parse(respose);

            var tabladatos = document.getElementById('tabla');
            for(var i = 0; i < datos.length; i++)
            

				
			

				tabla.innerHTML +=`

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
             <hr>
             <br>
             <li>
                 <a class="btnAjustes" href="">Ajustes</a>
             </li>
         </ul>
     </div>

 </header>
 <!-- //header -->


<div id="encabezado">
        <h3>Bienvenido</h3>
        <h3>Nombre</h3>
    </div>


    <div id="container">
        <div id="ingresardoctores">
            <form>

                <h3>Registro De Doctores</h3>

                <Label for="Nombres">Nombres:</Label>
                <input type="text" placeholder="Ingrese los Nombres">

                <label for="Apellidos">Apellidos:</label>
                <input type="text" placeholder="Ingrese los apellidos">

                <label for="Edad">Edad:</label>
                <input type="number" min="18" max="100" placeholder="Ingrese una edad">

                <label for="Direccion">Dirección:</label>
                <input type="text" placeholder="Ingrese una Dirección">

                <label for="Telefono">Teléfono:</label>
                <input type="text" placeholder="Ingrese un número teléfono">

                <label for="Correo">Correo Electrónico:</label>
                <input type="text" placeholder="Ingrese un correo electrónico">

                <label for="Password">Contraseña:</label>
                <input type="Password" placeholder="Ingrese una contraseña">


                <button class="buttonC" type="reset">Cancelar</button>
                <button class="buttonA" type="submit">Siguiente</button>
            </form>
        </div>

        <div class="especialidad">
            <form>

                <h2>Especialidad de Doctores</h2>

                <label for="Id">ID</label>
                <input type="text" placeholder="Digite Id">

                <label for="Especialidad">Especialidad</label>
                <input type="text" name="especialidad" placeholder="Digite una especialidad">


                <button class="btn-A" type="submit">Agregar Doctor</button>
                <button class="btn-C" type="reset">Cancelar</button>
            </form>
        </div>

        <div class="resultado" id="resultados">
            <table class="resultadoTabla" id="medicos">
                <thead>
                    <tr>
                        <th>
                            Id
                        </th>

                        <th>
                            Nombre Doctor
                        </th>
                        <th>
                            Apellido Doctor
                        </th>
                        <th>
                            Especialidad
                        </th>
                        <th>
                         <!-- aca podes escribir el nombre de la columna y si queres agregar mas solo pone th asi como lo hice en las anteriores -->
                        </th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>


    </div>
    
     <div id="part2">
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
                      <!--   <tr>
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
                        </tr> -->
                    </tbody>
                </table>
            </div>
        </div>

    </div>



 <!-- footer -->
 <div class="footer">
     <div class="footer-contenido">
         <div class="footer-seccion sobre">
             <h1 class="logo-text"><span id="SU">Clinic</span><span>Web</span></h1>
             <p>
                 Somos una clinica, la cual ofrece diferentes servicios medicos, tambien contamos con diferentes
                 especialidades <br>
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
         &copy;2020,Todos los derechos reservados | Clinic Web
     </div>

 </div>
 <!-- //footer -->
    
   
   
    
</body>

</html>