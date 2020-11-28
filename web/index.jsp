<%-- 
    Document   : index
    Created on : Nov 26, 2020, 6:04:10 PM
    Author     : r0ni
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.nl.modelo.Post"%>
<%@page import="com.nl.modelo.PostDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
          <!-- CDN DE Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">   
      
    </head>
    <body>
                
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Noticias</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="Controlador?accion=Listar">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Controlador?accion=Admin">Servicios</a>
                </li>     
                <li class="nav-item">
                  <a class="nav-link" href="Controlador?accion=Admin">Admin</a>
                </li>     
                

            <li class="nav-item">
                <a class="nav-link" href="Controlador?accion=Nuevo">Agregar Noticias </a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>

            <ul class="navbar-nav">
                <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="Controlador?accion=Login" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
        
        
        <!--<h1>Sistema Web de Noticias, Java, JSP, Servlet</h1>-->
        <center><h1>NOTICIAS</h1>
        <p>Esto es lo que está sucediendo el mundo de la tecnología,<br>
        estérate de las noticias más relevantes.<p>
        </center>
        <%= new java.util.Date()  %>
        
        
        <!--<form action="Controlador" method="POST">
            <input type="submit" name="accion" value="Listar" class="btn btn-info">    
            <input type="submit" name="accion" value="Nuevo" class="btn btn-info">    
            <input type="submit" name="accion" value="Admin" class="btn btn-info">    
        </form>-->
         <%  
            PostDAO dao = new PostDAO();
            List<Post> post = dao.listar();
           %>
      <!-- Listar Noticias -->      
        <div class="container mt-5">
            <div class="card" >    
                <c:forEach var="p" items="<%= post %>">
                <div class="row">   
                    <!--    Horizontal card -->                                          
                        <div class="col-md-4">                            
                            <img src="ControlerIMG?id=${p.getId()}" class="img-fluid">
                        </div>    
                        <div class="col-md-8">                                                                                   
                            <h4 class="card-title mt-3">  ${p.getTitulo() } </h4>                                                                        
                            <p>${p.getDescripcion()}</p>                                    
                        <form action="Controlador" method="POST">
                            <input type="hidden" name="id" value="${ p.getId() }">                            
                            <button type="submit" name="accion" value="ReadMore" class="btn btn-outline-success">Leer más</button>
                        </form>
                        </div>                                                                                                                           
                </div> <br><br>                                    
                        
                </c:forEach>  
                </div>    
            </div>
            
    </body>
</html>
