/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.ConexionBase;
import Interface.HabitacionInterface;
import Model.Habitaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author rober
 */
public class HabitacionDao implements HabitacionInterface {

    //ingresando datos de la habitacion    
    @Override
    public int saveHabitaciones(Habitaciones habitaciones) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet generatedKeys = null;

        try {
            con = ConexionBase.getConexion();
            String sql = "insert into habitaciones (n_camas, n_adultos,n_infantes, tipo) values (?, ?, ?, ?)";
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            ps.setInt(1, habitaciones.getN_adultos());
            ps.setInt(2, habitaciones.getN_infantes());
            ps.setInt(3, habitaciones.getN_camas());
            ps.setString(4, habitaciones.getTipo());

            ps.executeUpdate();

            generatedKeys = ps.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (generatedKeys != null) {
                    generatedKeys.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return 0;
    }
}
