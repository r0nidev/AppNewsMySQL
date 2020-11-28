<%-- 
    Document   : edit
    Created on : Nov 27, 2020, 12:06:06 AM
    Author     : r0ni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
         <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
      
    </head>
    <body>                          
            <div class="container">
                <h3>Editar Post</h3>
                <div class="col-lg-6">
            <form action="Controlador" method="POST" enctype="multipart/form-data">
                <b>Titulo:</b>
                <input class="form-control" type="text" name="txtTitulo" value="${post.getTitulo()}" required=""><br>
                <b>Descripción: </b>
                <input class="form-control" type="text" name="txtDesc" value="${post.getDescripcion()}" required=""><br>
                <b>Contenido:</b>
                <input class="form-control" type="text" name="txtContenido" value="${post.getContenido()}"><br><br>
                <b>Foto:  </b>
                <input type="file" name="fileFoto" > <br><br>
                <input type="submit" name="accion" value="Actualizar" class="btn btn-outline-success">
                <a href="Controlador?accion=Admin" class="btn btn-outline-danger">Cancelar</a>                 
            </form>                
        </div>
                </div>
            
    </body>
</html>
