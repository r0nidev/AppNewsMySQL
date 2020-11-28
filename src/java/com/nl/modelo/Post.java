package com.nl.modelo;

import java.io.InputStream;
import javafx.scene.text.Text;

/**
 *
 * @author r0ni
 */
public class Post {
    
    int id;
    String titulo;
    String descripcion;
    String contenido;
    //Text textolargo;
    InputStream foto;
    int status;
    String fecha;   
    
    public Post(){        
    }

    //public Post(int id, String titulo, String descripcion, Text textlargo, String contenido, InputStream foto, int status, String fecha) {
    public Post(int id, String titulo, String descripcion, String contenido, InputStream foto, int status, String fecha) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        //this.textolargo = textlargo;
        this.contenido = contenido;
        this.foto = foto;
        this.status = status;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    /*public Text getTextolargo() {
        return textolargo;
    }

    public void setTextolargo(Text textolargo) {
        this.textolargo = textolargo;
    }*/
    
}
