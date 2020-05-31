<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" type="text/css" href="css/head&footStyle.css">
    <link rel="stylesheet" href="css/estilosDct.css">
    <title>Doctor</title>
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
							<a href="">Contactar Clínica</a>
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
					<a href="buscar.jsp">Buscar</a>
				</li>
				<hr>
				<li>
					<a href="">¿Quienes somos?</a>
				</li>
				<hr>
				<li>
					<a href="creditos.jsp">Creditos</a>
				</li>
			</ul>
		</div>
	</header>

<body>
    <div class="login-box">
    <img src="img/avatar.png" class="avatar">
    <h1>LOGIN</h1>
    <form action="">
        <p>Usuario</p>
        <input type="text" name="nombre de usuario" placeholder="usuario">
        <p>Contraseña</p>
        <input type="password" name="contraseña" placeholder="Contraseña">
        <input type="submit" name="submit" value="Login">
        <a href="#"></a>
    </form>

    </div>
    
</body>
</html>