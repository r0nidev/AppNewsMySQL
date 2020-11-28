<%-- 
    Document   : admin
    Created on : Nov 26, 2020, 11:33:35 PM
    Author     : r0ni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        
    </head>
    <body>
        
        
        <!-- navbar -->
        
        <!-- END navbar -->
        <center>
            <form action="Controlador" method="POST">            
                <!--<input type="submit" name="accion" value="Listar" class="btn btn-outline-info">    -->
                <input type="submit" name="accion" value="Nuevo" class="btn btn-outline-success">                
                <a href="Controlador?accion=Listar" class="btn btn-outline-warning">Inicio</a> 
        </form>
            
            <div class="container">
                <h3>Portal de Administrador</h3>
                <table border="0" class="table table-hover">
                    <thead>
                        <tr> 
                            <th>ID</th>
                            <th>Título</th>
                            <th>Descripción</th>
                            <th>Contenido</th>
                            <th>Foto</th>
                            <th>Acciones</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${datos}">
                        <tr>
                            <td>${p.getId() }</td>
                            <td>${p.getTitulo() }</td>
                            <td>${p.getDescripcion()}</td>
                            <td>${p.getContenido() }</td>                            
                            <td><img src="ControlerIMG?id=${p.getId()}" width="215" height="190"></td>
                            <td class="d-flex">
                                <form action="Controlador" method="POST">
                                    <input type="hidden" name="id" id="idp" value="${ p.getId() }">
                                    <input type="submit" name="accion" value="Editar" class="btn btn-outline-warning">
                                    <!-- <i class="fas fa-edit"></i>-->
                                    <!-- <a href="#" id="btnDelete" style="margin-left: 10px;"><i class="fa fa-trash" aria-hidden="true"></i></a>-->
                                    <a href="#" id="btnDelete" style="margin-left: 10px;"> <i class="far fa-trash-alt"></i> </a>                                    
                                </form>  
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </center>
    <!-- Script jQuery 3.4.1 -->
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
        <!-- SweetAlert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="js/funcion.js" type="text/javascript"></script>
    <!-- -->
    </body>
</html>
