/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author rober
 */
public class ConexionBase {

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Cambiar la clase del controlador
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConexion() {
        Connection conexion = null;

        try {
            String url = "jdbc:mysql://localhost:3306/integrador"
                    + "?verifyServerCertificate=false" + "&useSSL=true"
                    + "&requireSSL=true";
            String user = "root";
            String password = "123456789";
            conexion = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conexion;
    }
}
