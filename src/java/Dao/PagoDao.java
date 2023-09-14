/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.ConexionBase;
import Interface.PagoInterface;
import Model.Pagos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Interface.ReservaInterface;

/**
 *
 * @author rober
 */
public class PagoDao implements PagoInterface {

    @Override
    public int savePago(Pagos pagos) {
        Connection con = null;
        PreparedStatement psPago = null;
        ResultSet generatedKeys = null;

        try {
            con = ConexionBase.getConexion();

            // Calcula el monto con un descuento del 30%
            double montoConDescuento = pagos.getValor() * 0.7; // El 30% de descuento se calcula como 1 - 0.3 = 0.7

            String sqlPago = "INSERT INTO pagos (dni, numero_tar, tipo_pago, fecha_p, valor, reservas_id) VALUES (?, ?, ?, ?, ?, ?)";
            psPago = con.prepareStatement(sqlPago, Statement.RETURN_GENERATED_KEYS);

            psPago.setString(1, pagos.getDni());
            psPago.setString(2, pagos.getNumero_tar());
            psPago.setString(3, pagos.getTipo_pago());
            psPago.setDate(4, pagos.getFecha_p());
            psPago.setDouble(5, montoConDescuento); // Utiliza el monto con descuento
            psPago.setInt(6, pagos.getReservas_id().getId()); // Supongo que getReservas_id() devuelve un objeto con un método getId().

            psPago.executeUpdate();

            generatedKeys = psPago.getGeneratedKeys();
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
                if (psPago != null) {
                    psPago.close();
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
