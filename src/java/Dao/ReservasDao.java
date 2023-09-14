/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.ConexionBase;
import DTO.ReservaDTO;
import Model.Reservas;
import Model.Habitaciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Interface.ReservaInterface;
import Model.Pagos;
import Model.Registros;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rober
 */
public class ReservasDao implements ReservaInterface {

    @Override
    public int saveReservas(Reservas reservas) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet generatedKeys = null;
        int reservaId = -1; // Valor por defecto en caso de error

        try {
            con = ConexionBase.getConexion();
            String sql = "INSERT INTO reservas (fecha_inicio, fecha_fin, registros_id, habitaciones_id) VALUES ( ?, ?, ?, ?)";

            ps = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setDate(1, reservas.getFecha_inicio());
            ps.setDate(2, reservas.getFecha_fin());
            ps.setInt(3, reservas.getRegistros_id().getId());
            ps.setInt(4, reservas.getHabitaciones_id().getId());

            int affectedRows = ps.executeUpdate();

            if (affectedRows > 0) {
                generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    reservaId = generatedKeys.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Aquí puedes registrar la excepción o manejarla de otra forma según tus necesidades
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
                // Manejo de excepción en caso de error al cerrar las conexiones
            }
        }

        return reservaId; // Devuelve el ID de la reserva insertada o -1 en caso de error

    }
}
