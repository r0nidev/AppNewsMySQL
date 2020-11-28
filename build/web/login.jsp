<%-- 
    Document   : login
    Created on : Nov 28, 2020, 2:33:53 AM
    Author     : r0ni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="container col-lg-3">
            <form action="">
                <div>
                    <img src="img/user1.png" alt="" heigth="80" width="80"/>
                    <p><strong>Bienvenidos al Sistema de Login</strong></p>
                </div>
                <table>
                    <tr>
                        <td><strong>Usuario:</strong></td><td><input  class="form-control" type="text" name="usuario" placeholder="Usuario"></td>                    
                    </tr>
                    <tr>                        
                        <td><strong>Contraseña:</strong></td><td><input  class="form-control" type="password" name="passwd" placeholder="Contraseña"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="submit" value="Login"></td>
                        <td><a href="">Registrarse</a></td>
                    </tr>
                </table>
                
                    

            </form>
        </div>        
    </body>
</html>
