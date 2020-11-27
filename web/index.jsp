<%-- 
    Document   : index
    Created on : Nov 26, 2020, 6:04:10 PM
    Author     : r0ni
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

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
                
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">News</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="Controlador?accion=home">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Admin</a>
                </li>     
      

            <li class="nav-item">
                <a class="nav-link" href="Controlador?accion=Carrito">Agregar Noticias </a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>

            <ul class="navbar-nav">
                <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Iniciar Sesión
              </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
               </li>
            </ul>
      
            </div>
        </nav>
        <h1>Sistema Web de Noticias, Java, JSP, Servlet</h1>
         <form action="Controlador" method="POST">
            <input type="submit" name="accion" value="Listar" class="btn btn-info">    
            <input type="submit" name="accion" value="Nuevo" class="btn btn-info">    
        </form>
        
      <!-- Listar Noticias -->
        <div class="container mt-4">
            <div class="row">
                <c:forEach var="p" items="${post}">
                <div class="col-sm-4">                      
                      <div class="card">                        
                            
                        <div class="card-header">                                                                                   
                            <h5>${p.getTituloe() }<h5>                                                                        
                        </div>
                        <div class="card-body">
                            <i> data 2</i>
                            <img src="" width="200" height="180">
                        </div>
                        <div class="card-footer text-center">
                            <label>comentario</label>
                            <div>
                                
                                <a href="#" class="btn btn-danger">Leer más</a>
                            </div>
                        </div>
                       </div>
                    </div>
                </c:forEach>     
            </div>
        </div>
          

    </body>
</html>
