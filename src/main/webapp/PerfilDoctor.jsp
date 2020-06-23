<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Perfil Del Doctor</title>
    <link rel="stylesheet" type="text/css" href="css/PerfilDoc.css">
    <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

  
</head>
 <script src="http://code.jquery.com/jquery-latest.js"> </script>
  <script type="text/javascript">
     $(document).ready(function(){
       
          $.post('ServeltCita',{
          }, function(response){
          let datos = JSON.parse(response);
          
          var tabladatos = document.getElementById('cita');
          
          for(let item of datos){
          
            tabladatos.innerHTML += `
            
            	<td>${item[0]}</td>
                <td>${item[1]}</td>
                <td>${item[2]}</td>
                <td>${item[3]}</td>
                <td>${item[4]}</td>
                <td>${item[5]}</td>
                <td>${item[6]}</td>
                <td>
                <a href="ServeltCita?idcita=${item[0]}&idMed=${item[7]}&idPac=${item[8]}&desc=${item[4]}&dia=${item[5]}&hora=${item[6]}" class="btn btn-info">Aprobar</a>
                </td>
       
            `
           }
         
         });
     
     });
     $(document).ready(function(){
         
         $.post('ServeltDCita',{
         }, function(response){
         let datos = JSON.parse(response);
         
         var tabladatos = document.getElementById('aprobadas');
         
         for(let item of datos){
         
           tabladatos.innerHTML += `
           
           	<td>${item[0]+item[1]}</td>
               <td>${item[2]}</td>
               <td>${item[3]}</td>
           `
          }
        
        });
    
    });
   </script>

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
        	         <a class="btnAjustes" href="">Ajustes</a>
            	 </li>
			</ul>
		</div>
		
	</header>
<!-- //header -->

    <div class="header">
        <img class="avatar" src="https://png.pngtree.com/element_origin_min_pic/17/08/27/d29869ee820d8b3f8c2518830bced789.jpg" alt=""><br>
        <h1 class="nombredeusuario"><% out.print(request.getAttribute("name")); %></h1>
    </div>
  
        <ul class="social">
            <li>
                <i class="icon email"></i>
                <a href=""><%out.print(request.getAttribute("correo"));%></a>
            </li>
            <li>
                <i class="icon facebook"></i>
                <a href=""><%out.print(request.getAttribute("name")); %></a>
            </li>
            <li>
                <i class="icon twitter"></i>
                <a href="twitter.com">twitter</a>
            </li>
        </ul>
        <br>
        <br>
        
        <div class="container1">
        <div class="infoper">
            <h2>Información Personal <button class="opcioni">Opciones</button> </h2>
        
         <h4 id="espacio">Dirección: <span>bla bla bla bla bla bla</span></h4>
         <br>
         
         <h4>Teléfono: <span>bla bla bla bla bla bla</span></h4>
         <br>
         <br>
         <h4>Descripción: <span>bla bla bla bla bla bla</span></h4>
        </div>

        <div class="horario">
            <div class="container2">
                <table class="table1">
                    <caption>Horarios De Consulta <button class="opcionh">Opciones</button> </caption>
                    <thead>
                        <tr>
                            <th>Dia</th>
                            <th>hora</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Lunes</td>
                           
                            <td>9:00 a.m</td>

                        </tr>
                        <tr>
                            <td>Miercoles</td>
                           
                            <td>10:00 a.m </td>

                        </tr>
                        <tr>
                            <td>Viernes</td>
                           
                            <td>9:30 a.m</td>

                        </tr>
                        <tr>
                            <td>Sábado</td>
                           
                            <td>11:30 a.m</td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
        <div class="container">
        <table class="table" id="cita">
            <caption>Solicitudes De Pacientes  <button class="opciones">Opciones</button></caption>
           
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre Paciente</th>
                    <th>Apellido Paciente</th>
                    <th>Estado</th>
                    <th>Descripcion</th>
                     <th>Fecha</th>
                     <th>Hora</th>
                    <th>¿Que Desea Hacer?</th>
                </tr>
            </thead>
               <tbody>
   
              </tbody>
           
        </table>
    </div>
    
    <br>
    <br>
    <br>
    <br>
    
     <div id="general">
    <div id="proximacita">
        <h2>Proxima cita medica <button class="opcionc">Opciones</button> </h2>
        <h4>Paciente: <span>Edwin Rivas</span></h4>
        <br>
        <br>
        <h4>Descripción Del Paciente: <span>bla bla bla bla jjjjjjjjjjjjjalgo algo clgo algo</span></h4>
        <br>
        <br>
        <h4>Descripción De La Cita: <span>Dolor en la espalda, con complicaciones arteriales severas, fuerte
        migraña</span></h4>
        <br>
        <br>
        <h4>Hora De La Cita: <span>3:00 p.m</span></h4>
    </div>
    <div id="aunnosesabe">
    <button class="opcionn">Opciones</button>
   <h2>Aun no se nos ocurre nada XDXD</h2>
    </div>
    
    <div id="agenda">
        <div class="container2">
            <table class="table2" id="aprobadas">
                <caption>Agenda de la semana <button>Opciones</button></caption>
                <thead>
                    <tr>
                        <th>Paciente</th>
                        <th>fecha</th>
                        <th>hora</th>

                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>
        </div>
    </div>
    </div>
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