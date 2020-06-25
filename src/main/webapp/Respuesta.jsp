<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
    </body>
</html>
