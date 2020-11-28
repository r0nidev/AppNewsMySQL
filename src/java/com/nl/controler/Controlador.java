package com.nl.controler;

import com.nl.modelo.Post;
import com.nl.modelo.PostDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author r0ni
 */
@MultipartConfig // para que funcione lo de las imágenes.
public class Controlador extends HttpServlet {

    PostDAO dao = new PostDAO();
    List<Post> post = new ArrayList<>();
    Post p = new Post();
    int ide;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
         post = dao.listar();
        
        switch(accion){
            case "Login":
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
            case "Listar":
                request.setAttribute("post", post); // with this name, capturemos en index.jsp
                request.getRequestDispatcher("index.jsp").forward(request, response);  
                break;
            case "Nuevo":
                request.getRequestDispatcher("add.jsp").forward(request, response);
                break;
            case "Admin":
                List<Post> datos = dao.listar();
                request.setAttribute("datos", datos); 
                request.getRequestDispatcher("admin.jsp").forward(request, response);                  
                break;
            case "Guardar":
                //String id = request.getParameter("txtid");
                //int id = request.getParameter("txtid");
                String titulo = request.getParameter("txttitulo");
                String desc = request.getParameter("txtdesc");
                String contenido = request.getParameter("txtcontenido");
                Part part = request.getPart("fileFoto");
                InputStream inputStream = part.getInputStream();                
                Date f = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YY hh:mm a");
                String fecha = sdf.format(f);
                //p.setId(id);
                p.setTitulo(titulo);
                p.setDescripcion(desc);
                p.setContenido(contenido);
                p.setFoto(inputStream);
                p.setFecha(fecha);
                dao.agregar(p);
                request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);                                             
                break;
            case "Editar":
                // the same time, show data in form
                //int ide = Integer.parseInt(request.getParameter("id"));
                //String ide1 = request.getParameter("id");
                ide = Integer.parseInt(request.getParameter("id"));// this ID viene de la view Empleado.jsp
                //int id = Integer.parseInt(request.getParameter("id"));
                Post po = dao.listarId(ide); // .listarId(ide1);
                request.setAttribute("post", po);
                request.getRequestDispatcher("edit.jsp").forward(request, response);
                break;
            case "Actualizar":                
                String titulo1 = request.getParameter("txtTitulo");
                String desc1 = request.getParameter("txtDesc");
                String contenido1 = request.getParameter("txtContenido");    
                Part part1 = request.getPart("fileFoto");
                InputStream inputStream1 = part1.getInputStream();
                Date f1 = new Date();
                SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/YY hh:mm a");
                String fecha1 = sdf1.format(f1);
                p.setTitulo(titulo1);                    
                p.setDescripcion(desc1);
                p.setContenido(contenido1);
                p.setFoto(inputStream1);
                p.setFecha(fecha1);
                p.setId(ide);
                dao.actualizar(p);
                request.getRequestDispatcher("Controlador?accion=Admin").forward(request, response);
                break;
            case "Eliminar":
                // capture ID post
                //String id2 = request.getParameter("id");
                int id1 = Integer.parseInt(request.getParameter("idp"));
                for (int i = 0; i < post.size(); i++) {
                    if(post.get(i).getId() == id1) {
                        //post.remove(i);//verificar why no esta funcionando.
                        dao.eliminar(id1); // this yes it works. 
                    }
                }
                // below it works without confirmation
                /*ide = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(ide);
                request.getRequestDispatcher("Controlador?accion=Admin").forward(request, response);
                */
                request.getRequestDispatcher("Controlador?accion=Admin").forward(request, response);
                break;
            case "ReadMore":                
                ide = Integer.parseInt(request.getParameter("id"));// this ID viene de la view Empleado.jsp                
                Post pos = dao.listarId(ide); // .listarId(ide1);
                request.setAttribute("post", pos);
                request.getRequestDispatcher("readmore.jsp").forward(request, response);  
                break;
            default:
                throw new AssertionError();
                //request.setAttribute("post", post); // with this name, capturemos en index.jsp
                //request.getRequestDispatcher("index.jsp").forward(request, response);
        }
/*        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
