<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="Js/RegistrarClientes.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    
        <title>Registro de Cliente</title>
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
        <div class="container col-lg-4" style="opacity: 0.9">
            <form action="">
                <div class="form-group text-center">
                 <h5>Registro de Pacientes</h5>

                </div>

                <div class="row">
                    <div class="col-sm-12 form-group">
                        <label class="">Ingrese su Nombre</label>
                        <input type="text"  maxlength="50" class="form-control" placeholder="Nombre(s)">
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12 form-group">
                        <label >Ingrese su apellido</label>
                        <input type="text" maxlength="50" class="form-control" placeholder="Apellido(s)">
                    </div>
                    <br>
                    <br>
                    <div class="col form-group">
                        <label>Ingrese su edad</label>
                        <input type="text" maxlength="10" class="form-control" placeholder="Edad">
                    </div>
                    <br>
                    <br>

                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su dirección</label>
                        <input type="text" placeholder="Direccion" class="form-control"maxlength="50">

                    </div>

                    <br>
                    <br>
  
                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su telefono</label>
                        <input type="text" placeholder="Telefono" class="form-control"  maxlength="8">

                    </div>

                    <br>  
                    <br>  

                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su usuario</label>
                        <input type="text" placeholder="Usuario" class="form-control"  maxlength="30">

                    </div>
                    <br>  
                    <br>  
                    <div class="col-sm-12 form-group"> 
                        <label>Ingrese su contraseña</label>
                        <input type="password" class="form-control" maxlength="16" placeholder="Contraseña">

                    </div> 
                    <br>  
                    <br>

                    <div class="col-sm-12 form-group"> 
                        <label>Confirme su contraseña</label>
                        <input type="password" class="form-control" maxlength="16" placeholder="Confirmar">

                    </div>

                </div>

                <input type="button" class="btn btn-info btn-block" value="Registrar"> 

            </form>
            <br>  
            <a href="LoginPaciente.jsp"> Cancelar </a>

        </div>


        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    </body>
</html>