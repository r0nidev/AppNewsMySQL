
package com.nl.configbd;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author r0ni
 */
public class Conexion {
    
    Connection con;
    String url = "jdbc:mysql://localhost:3306/sistemadb";
    String user = "nic";
    String pass = "pentester";    
    
    
    public Connection Conexion() {        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(url, user, pass);
            
        }catch(Exception e){
            
        }
        return con;
    }
    
}
