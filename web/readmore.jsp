<%-- 
    Document   : readmore
    Created on : Nov 27, 2020, 2:13:47 AM
    Author     : r0ni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read</title>
        <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
      
    </head>
    <body>
        
        <div class="container">
        <form action="Controlador" method="POST" enctype="multipart/form-data">
            <h2>${post.getTitulo()}</h2> <br><br>               
            <img src="ControlerIMG?id=${post.getId()}"  width="650" height="350"><br><br>
                <b>Descripción:</b> <br>
                <label>${post.getDescripcion()}</label><br>                
                <b>Contenido:</b>
                <label>${post.getContenido()}</label><br>                                                
                
                
                <input type="submit" name="accion" value="Comentar" class="btn btn-outline-info">                
                <a href="Controlador?accion=Listar" class="btn btn-outline-warning">Atrás</a> 
            </form>
                 
        </div>
        
    </body>
</html>
