package com.nl.modelo;

import com.nl.configbd.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author r0ni
 */
public class PostDAO {
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet  rs;
    
    public List listar(){
        List<Post> post = new ArrayList();
        String sql = "select *from post";
        try{
            con = cn.Conexion(); //  getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Post p = new Post();
                p.setId(rs.getInt(1));
                p.setTitulo(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setContenido(rs.getString(4));
                p.setFoto(rs.getBinaryStream(5));
                p.setFecha(rs.getString(6));
                p.setStatus(rs.getInt(7));
                //p.setTextolargo(rs.get);
                post.add(p);
            }
        }catch(Exception e){
            System.out.println("EXCEPTION(listar): "+ e.toString());
        }
        return post;
    }
    
    public int agregar(Post p){
        int r = 0;
        //String sql = "INSERT INTO post(titulo, descripcion, contenido) VALUES(?,?,?)";
        String sql = "INSERT INTO post(titulo, descripcion, contenido, foto, fecha_registro) VALUES(?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            //ps.setInt(1, p.getId() );
            ps.setString(1, p.getTitulo() );
            ps.setString(2, p.getDescripcion());
            ps.setString(3, p.getContenido());
            ps.setBlob(4, p.getFoto());
            ps.setString(5, p.getFecha());
            //ps.setString(6, p.getStatus());
            //p.add(p);
            r = ps.executeUpdate(); // return 0 or 1
            if( r == 1){
                r = 1;
            }else{
                r = 0;
            }
                
        }catch(Exception e){
            System.out.println("EXCEPTION(agregar): "+ e.toString());
        }
        return r;
    }
    

    public void listarImg(int id, HttpServletResponse response){
        String sql = "select *from post where id="+ id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try{
            outputStream = response.getOutputStream();
            con = cn.Conexion(); //getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){              // name column of db
                inputStream = rs.getBinaryStream("foto"); 
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while((i = bufferedInputStream.read()) != -1 ){
                bufferedOutputStream.write(i);
            }
        }catch(Exception e){
            System.out.println("DATA EXCEPTION(listarIMG): "+ e.toString());
        }
    }
    
    // Para editar Post
    public Post listarId(int id){
        String sql = "select *from post where id ="+id;
        Post p = new Post();
        try{
            con = cn.Conexion(); //.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while ( rs.next()){
                p.setId(rs.getInt(1));
                p.setTitulo(rs.getString(2));
                p.setDescripcion(rs.getString(3));
                p.setContenido(rs.getString(4));
                p.setFoto(rs.getBinaryStream(5));
                p.setFecha(rs.getString(6));
                p.setStatus(rs.getInt(7));
            }
        }catch(Exception e){
            System.out.println("Exception(listarId): "+e.toString());
        }
        return p;
    }
    
    public int actualizar(Post p){
        int r = 0;
        //String sql = "UPDATE post SET titulo=?, descripcion=?, contenido=? WHERE id=?"; //, Estado=?, User=? where IdEpleado=?";
        String sql = "UPDATE post SET titulo=?, descripcion=?, contenido=?, foto=?, fecha_registro=? WHERE id=?"; //, Estado=?, User=? where IdEpleado=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);            
            ps.setString(1, p.getTitulo());
            ps.setString(2, p.getDescripcion());
            ps.setString(3, p.getContenido());  
            ps.setBlob(4, p.getFoto()); // added
            ps.setString(5, p.getFecha());
            ps.setInt(6, p.getId());
            
            ps.executeUpdate();
            if( r == 1){
                r = 1;
            }else {
                r = 0;
            }
        }catch(Exception e){
            System.out.println("EXCEPTION(actualizar): "+ e.toString());
        }
        return r;
    }
    
    public void eliminar(int id){ //(String id){
        String sql = "DELETE FROM post WHERE id="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();                    
        }catch(Exception e){
            System.out.println("EXCEPTON(Delete): "+ e.toString());
        }
    }
}
