package com.nl.modelo;

/**
 *
 * @author r0ni
 */
public class Personal {
 
    int id;
    String nombres;
    String apellidop;
    String apellidom;
    String usuario;
    String email;
    String password;
    String direccion;
    String fechaIngreso;
    String tipoUser;
    
    public Personal(){
        
    }

    public Personal(int id, String nombres, String apellidop, String apellidom, String usuario, String email, String password, String direccion, String fechaIngreso, String tipoUser) {
        this.id = id;
        this.nombres = nombres;
        this.apellidop = apellidop;
        this.apellidom = apellidom;
        this.usuario = usuario;
        this.email = email;
        this.password = password;
        this.direccion = direccion;
        this.fechaIngreso = fechaIngreso;
        this.tipoUser = tipoUser;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidop() {
        return apellidop;
    }

    public void setApellidop(String apellidop) {
        this.apellidop = apellidop;
    }

    public String getApellidom() {
        return apellidom;
    }

    public void setApellidom(String apellidom) {
        this.apellidom = apellidom;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getTipoUser() {
        return tipoUser;
    }

    public void setTipoUser(String tipoUser) {
        this.tipoUser = tipoUser;
    }
    
    
    
    
}
