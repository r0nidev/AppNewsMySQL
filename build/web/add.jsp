<%-- 
    Document   : add
    Created on : Nov 26, 2020, 6:04:23 PM
    Author     : r0ni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
      
    </head>
    <body>                       
        <div class="container">
            <h3>Agregar Nuevo Post</h3>
            <div class="col-lg-6">
            <form action="Controlador" method="POST" enctype="multipart/form-data" >
                <b>Titulo:</b>
                <input class="form-control" type="text" name="txttitulo" required=""><br>
                <b>Foto:  </b>
                <input type="file" name="fileFoto"> <br><br>
                <b>Breve descripción: </b>
                <input class="form-control" type="text" name="txtdesc" required=""><br>
                <b>Contenido:</b>
                <input class="form-control" type="text" name="txtcontenido" required=""><br><br>
                
                <input type="submit" name="accion" value="Guardar" class="btn btn-outline-success">
                <a href="Controlador?accion=Admin" class="btn btn-outline-danger">Cancelar</a> 
            </form>
        </div>

        </div>
    </body>
</html>
