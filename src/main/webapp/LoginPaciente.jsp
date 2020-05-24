<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title>Inicio Sesion</title>
    </head>
    <style>
        body{
            background: url(img/fondoMdc1.jpg) 
        }
        .container{
            background-color: #ffffff;
            border-radius: 10px;
            padding: 25px;
            margin-top: 60px;
        }
    </style>
    <body>
        <div class="container col-lg-3">

            <form method="post" action="ServeltPaciente">
             <div class="form-group text-center">
                 <p><strong>Iniciar Seción</strong></p>
             </div>  
             <div class="form-group text-center">
                 <label>Correo Electronico</label>
                 <input type="text" placeholder="usuario@gmail.com" name="txtCorreo" class="form-control">
             </div>

             <div class ="form-group text-center">
                 <label>Contraseña</label>
                 <input type="password" placeholder="**********" name="txtPass" class="form-control">
             </div> 
               <input type="submit" value="Ingresar" class="btn btn-info btn-block">
            </form>
                <br>
                <a href="index.jsp" style="position: relative; top: -2px; left: 20px;">Cancelar</a>
                <a href="RegistrarPaciente.jsp" style="position: relative; top: -2px; left: 110px;">Registrarse</a>
            
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
