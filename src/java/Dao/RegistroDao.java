/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.ConexionBase;
import Exeptions.CredencialesIncorrectasException;
import Interface.RegistroInterface;
import Model.Registros;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author rober
 */
public class RegistroDao implements RegistroInterface {

    // registro de datos de usuario
    @Override
    public int saveRegistro(Registros registros) {
        int result = 0;
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = ConexionBase.getConexion();
            String sql = "INSERT INTO registros (nom, ape, t_dni, dni, correo, phone, psw) VALUES (?, ?, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);
            ps.setString(1, registros.getNom());
            ps.setString(2, registros.getApe());
            ps.setString(3, registros.getT_dni());
            ps.setString(4, registros.getDni());

            // Validar y establecer el correo electrónico si cumple con los requisitos
            if (validarCorreo(registros.getCorreo())) {
                ps.setString(5, registros.getCorreo());
            } else {
                throw new IllegalArgumentException("El correo electrónico no es válido");
            }

            ps.setString(6, registros.getPhone());

            // Validar y establecer la contraseña si cumple con los requisitos
            if (validarContrasena(registros.getPsw())) {
                ps.setString(7, registros.getPsw());
            } else {
                throw new IllegalArgumentException("La contraseña no cumple con los requisitos");
            }

            result = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Cierre seguro de la conexión y el PreparedStatement
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return result;
    }

    // validaciones
    /**
     * ************************************
     */
    private boolean validarCorreo(String correo) {
        String regex = "^[A-Za-z0-9+_.-]+@gmail\\.com$";
        return correo.matches(regex);
    }

    private boolean validarContrasena(String contrasena) {
        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        return contrasena.matches(regex);
    }

    /**
     * ************************************
     */
    // metodo actulalizar contraceña
    @Override
    public int updateBYPsw(String correo, String newPsw) {
        Connection con = null;
        PreparedStatement ps = null;
        int rowsAffected = 0; // Variable para contar las filas afectadas por la actualización

        try {
            con = ConexionBase.getConexion();
            String sql = "update registros set psw = ? where correo = ?";
            ps = con.prepareStatement(sql);

            ps.setString(1, newPsw); // Nueva contraseña
            ps.setString(2, correo);  // Correo del usuario cuya contraseña se actualizará

            rowsAffected = ps.executeUpdate(); // Ejecuta la actualización y obtén las filas afectadas
        } catch (SQLException e) {
            e.printStackTrace(); // Imprime la excepción para depuración
            throw new RuntimeException("Error al actualizar la contraseña en la base de datos", e);
        } finally {
            // Cerrar recursos (PreparedStatement y Connection) en un bloque finally
            try {
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace(); // Imprime cualquier excepción al cerrar recursos
            }
        }

        return rowsAffected;
    }

    // metodo de ingreso a la plataforma
    @Override
    public Registros login(String psw, String correo) throws CredencialesIncorrectasException, SQLException {
        Registros loggedInUser = null;

        try (Connection con = ConexionBase.getConexion();
                PreparedStatement ps = con.prepareStatement("SELECT id, nom, ape, t_dni, dni, phone FROM registros WHERE correo = ? AND psw = ?")) {

            ps.setString(1, correo);
            ps.setString(2, psw);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int id = rs.getInt("id");
                    String nom = rs.getString("nom");
                    String ape = rs.getString("ape");
                    String t_dni = rs.getString("t_dni");
                    String dni = rs.getString("dni");
                    String phone = rs.getString("phone");

                    loggedInUser = new Registros();
                    loggedInUser.setId(id);
                    loggedInUser.setNom(nom);
                    loggedInUser.setApe(ape);
                    loggedInUser.setT_dni(t_dni);
                    loggedInUser.setDni(dni);
                    loggedInUser.setPhone(phone);
                } else {
                    throw new CredencialesIncorrectasException("Credenciales de inicio de sesión incorrectas");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Registra la excepción para su análisis
            throw new SQLException("Error de conexión");
        }

        return loggedInUser;
    }

}
