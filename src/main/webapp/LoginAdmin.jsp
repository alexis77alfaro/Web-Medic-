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
</head>

<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <!--  utilice internamente utilice 3/4 de toda la pantalla -->
            <div class="modal-content">
                <!-- contenido del modal -->
                <div class="col-12 user-img">
                    <!-- utilice todo el espacio disponible que hay con col-12 -->
                    <img src="/img/Avatar.png" alt="">
                    <form class="col-12">
                        <!--  que ocupe el ancho total -->
                        <div class="form-group" id="user-group">
                            <!-- id modificardor para modificar y poner el icono a nuestro antojo -->
                            <!-- aqui los grupos individuales para los inputs -->
                            <input type="text" class="form-control" placeholder="Ingrese Usuario">
                        </div>
                        <div class="form-group" id="contrase�a-group">
                            <input type="password" class="form-control" placeholder="Contrase�a">
                        </div>
                        <button type="submit" class="btn btn-primary"> <i class="fas fa-sign-in-alt"></i> Iniciar
                            Sesion</button>
                    </form>
                    <!-- <div class="col-12 forgot">
                        <a href="#">Recordar Contrase�a</a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</body>

</html>