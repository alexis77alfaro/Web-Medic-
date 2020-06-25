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
		$("#correo").prop('disabled', true);
		$("#pas").prop('disabled', true);
		$("#especialidad").prop('disabled', true);
		$("#send").prop('disabled', true);
		$("#nombres").prop('disabled', false);
		$("#apellidos").prop('disabled', false);
		$("#edad").prop('disabled', false);
		$("#direccion").prop('disabled', false);
		$("#telefono").prop('disabled', false);
		$("#next").prop('disabled', false);

		var txtCorreo = document.getElementById("correo");
		txtCorreo.style.backgroundColor = 'grey';
		txtCorreo.style.border = 'none';
		txtCorreo.style.borderRadius = '10px';
		var txtPas = document.getElementById("pas");
		txtPas.style.backgroundColor = 'grey';
		txtPas.style.border = 'none';
		txtPas.style.borderRadius = '10px';
		var txtEsp = document.getElementById("especialidad");
		txtEsp.style.backgroundColor = 'grey';
		txtEsp.style.border = 'none';
		txtEsp.style.borderRadius = '10px';
		var btnSend = document.getElementById("send");
		btnSend.style.backgroundColor = '#888888';

		$("#correo").val('');
		$("#pas").val('');
		$("#especialidad").val('');
		$("#send").val('');
		$("#nombres").val('');
		$("#apellidos").val('');
		$("#edad").val('');
		$("#direccion").val('');
		$("#telefono").val('');

		$( "#next" ).click(function(){

			var txtName = document.getElementById("nombres").value;
			var txtLName = document.getElementById("apellidos").value;
			var txtAge = document.getElementById("edad").value;
			var txtDirect = document.getElementById("direccion").value;
			var txtPhone = document.getElementById("telefono").value;

			if(txtName=='' || txtLName=='' || txtAge=='' || txtDirect=='' || txtPhone==''){
				alert('Para continuar con el Registro de un Nuevo Doctor debe rellenar todos los campos solicitados');
			} else{
				$("#correo").prop('disabled', false);
				$("#pas").prop('disabled', false);
				$("#especialidad").prop('disabled', false);
				$("#send").prop('disabled', false);

				$("#nombres").prop('disabled', true);
				$("#apellidos").prop('disabled', true);
				$("#edad").prop('disabled', true);
				$("#direccion").prop('disabled', true);
				$("#telefono").prop('disabled', true);
				$("#next").prop('disabled', true);

				var txtName = document.getElementById("nombres");
				txtName.style.backgroundColor = 'grey';
				txtName.style.border = 'none';
				txtName.style.borderRadius = '10px';
				var txtLName = document.getElementById("apellidos");
				txtLName.style.backgroundColor = 'grey';
				txtLName.style.border = 'none';
				txtLName.style.borderRadius = '10px';
				var txtAge = document.getElementById("edad");
				txtAge.style.backgroundColor = 'grey';
				txtAge.style.border = 'none';
				txtAge.style.borderRadius = '10px';
				var txtDirect = document.getElementById("direccion");
				txtDirect.style.backgroundColor = 'grey';
				txtDirect.style.border = 'none';
				txtDirect.style.borderRadius = '10px';
				var txtPhone = document.getElementById("telefono");
				txtPhone.style.backgroundColor = 'grey';
				txtPhone.style.border = 'none';
				txtPhone.style.borderRadius = '10px';
				var btnNext = document.getElementById("next");
				btnNext.style.backgroundColor = '#888888';

				var txtCorreo = document.getElementById("correo");
				txtCorreo.style.backgroundColor = 'transparent';
				txtCorreo.style.borderBottom = "solid 1px #FFF";
				txtCorreo.style.borderRadius = '0';
				var txtPas = document.getElementById("pas");
				txtPas.style.backgroundColor = 'transparent';
				txtPas.style.borderBottom = "solid 1px #FFF";
				txtPas.style.borderRadius = '0';
				var txtEsp = document.getElementById("especialidad");
				txtEsp.style.backgroundColor = 'transparent';
				txtEsp.style.borderBottom = "solid 1px #FFF";
				txtEsp.style.borderRadius = '0';
				var btnSend = document.getElementById("send");
				btnSend.style.backgroundColor = '#79d70f';


				$( "#send" ).click(function(){
					var txtC = document.getElementById("correo").value;
					var txtP = document.getElementById("pas").value;
					var txtE = document.getElementById("especialidad").value;

					if(txtC=='' || txtP=='' || txtE==''){
						alert('Termina de ingresar los últimos datos para Confirmar el Registro');
					} else {
						$("#nombres").prop('disabled', false);
						$("#apellidos").prop('disabled', false);
						$("#edad").prop('disabled', false);
						$("#direccion").prop('disabled', false);
						$("#telefono").prop('disabled', false);
						$("#next").prop('disabled', false);
					}
				});
			}
		});
	});
</script>
  
  

<script type="text/javascript">

	$(document).ready(function(){
		
			
			$.post('ServeltCitaControl',{

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
			

<script type="text/javascript">

	$(document).ready(function(){
		
			
			$.post('ServeltMostrarMedico',{

			}, function(respose){

			let datos = JSON.parse(respose);

            var tabladatos = document.getElementById('medicos');
            for(var i = 0; i < datos.length; i++)
            

				
			

            	medicos.innerHTML +=`

                <tr>

                <td> ${datos[i][0]} </td>
                <td> ${datos[i][1]} </td>
                <td> ${datos[i][2]} </td>
                <td> ${datos[i][3]} </td>
                
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
                 <a class="btnAjustes" href="LoginAdmin.jsp">Cerrar Sesión</a>
             </li>
         </ul>
     </div>

 </header>
 <!-- //header -->

<div class="contentCSSAD">
		<div class="containerCSSAD">
			<h2>Bienvenido al Panel de Administración</h2>
			<form class="frmCSSAD" action="ServeltAgregarDoctor" method="post">
				<div class="panelCSSAD" id="panel1">
					<label class="rotulo">Nombres: </label>
					<input type="text" class="control" id="nombres" name="nombre" placeholder="Digite ambos nombres aquí..." 
					id="nombre" maxlength="20" pattern="[A-Za-z]{3,20}" title="introduces máximo 20 letras" required>
					
					<label class="rotulo">Apellidos: </label>
					<input type="text" class="control" id="apellidos" name="apellido" placeholder="Digite ambos apellidos aquí..."
					maxlength="20" pattern="[A-Za-z]{3,20}" title="introducir entre 3 y 20 letras" required>
					
					<label class="rotulo">Edad: </label>
					<input type="number" class="control" id="edad" name="edad" min="18" max="100" placeholder="Seleccione la edad"
					min="18" max="100"  title="introducir edad entre 18 y 100" required>
					
					<label class="rotulo">Dirección: </label>
					<input type="text" class="control" id="direccion" name="direccion" placeholder="Escriba la dirección completa aquí..."
					 maxlength="50" title="introducir entre 1 y 50 letras" required>
					
					<label class="rotulo">Teléfono: </label>
					<input type="text" class="control" id="telefono" name="telefono" placeholder="Escriba el numero de contacto telefónico...."
					 maxlength="8" pattern="[0-9]{8}" title="introducir número telefonico de 8 cifras" required>
					
					<span class="btnNext" id="next">Continuar</span>
				</div>
				<div class="panelCSSAD" id="panel2">
					<label class="rotulo">Correo electrónico: </label>
					<input type="text" class="control" id="correo" name="correo" placeholder="Escriba el correo elctronico aquí..."
					 maxlength="30" title="introduce tu correo electronico" pattern="[a-z-0-9]+@+[a-z]+.+[a-z]" required>
					
					<label class="rotulo">Contraseña: </label>
					<input type="password" class="control" id="pas" name="contra" placeholder="Escriba la contraseña aquí..."
					 maxlength="16" min="4" max="16"  title="introducir contraseña entre 4 y 16 digitos" pattern="[a-z-0-9]{4,16}" required>
					
					<label class="rotulo">Especialidad del doctor: </label>
					<input type="text" class="control" id="especialidad" name="especialidad" placeholder="Escriba la especialidad del doctor aquí..."
					maxlength="20" pattern="[A-Za-z]{1,20}" title="introduces máximo 20 letras" required>
					
					<button type="submit" class="btnNext extraSpaceBtn" id="send">Confirmar Registro</button>
				</div>
			</form>
		</div>
	</div>


    <div id="container">
    
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
                <table class="table" id="tabla">
                    <caption>Control De Citas <button class="opcion">Opciones</button> </caption>
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
                         <!--    <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                          <!--   <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                         <!--    <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                   <!--          <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                         <!--    <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                        <!--     <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
                        <tr>
                         <!--    <td>Juan Quintanilla</td>
                            <td>Dolor de cabeza</td>
                            <td>Dr. Edwin Rivas</td>
                            <td>26 de junio de 2020</td>
                            <td>2:00 p.m</td> -->
                        </tr>
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