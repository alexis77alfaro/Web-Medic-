<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>	
        <title>Respuesta</title>
    </head>
    <style>
        body{
            background: url(img/docotorAnimated1.jpg); 
        }
        .container{
            background-color: #ffffff;
            border-radius: 10px;
            padding: 25px;
            margin-top: 60px;
        }
    </style>
    <body>
    
      <!-- header -->
 <header class="head">
     <div class="logo">
         <img src="img/wm_logo2.png">
         <span>Web Medic</span>
     </div>
     <div class="menu">
         <ul>
            
             <hr>
             <br>
             <li>
                 <a class="btnRegresar" href="index.jsp">Regresar</a>
             </li>
         </ul>
     </div>

 </header>
 <!-- //header -->
    
        <div class="container col-lg-3">   
         
         <div class="form-group">  
             <%
                 if(request.getParameter("mens")!= null){
                  out.println(request.getParameter("mens"));
                 }
                 %>
                 
         </div>
             <br>   
            
        </div>
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