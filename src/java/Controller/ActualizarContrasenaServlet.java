/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexion.ConexionBase;
import Dao.RegistroDao;
import Model.Registros;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author rober
 */
@WebServlet("/ActualizarContrasenaServlet")
public class ActualizarContrasenaServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener el correo electrónico y la nueva contraseña del formulario
        String correo = request.getParameter("correo");
        String nuevaContrasena = request.getParameter("psw"); // Cambiado para que coincida con el nombre del campo

        // Validar los datos del formulario (puedes agregar más validaciones según tus requisitos)
        if (correo == null || correo.isEmpty() || nuevaContrasena == null || nuevaContrasena.isEmpty()) {
            // Manejo de error si los datos son inválidos o faltan
            request.getRequestDispatcher("error_actualizacion_contrasena.jsp").forward(request, response);
            return;
        }

        // Crear un objeto RegistroDao
        RegistroDao registroDao = new RegistroDao();

        // Actualizar la contraseña en la base de datos
        int filasAfectadas = registroDao.updateBYPsw(correo, nuevaContrasena);
        if (filasAfectadas > 0) {
            // Contraseña actualizada con éxito
            request.getRequestDispatcher("contrasena_actualizada.jsp").forward(request, response);
        } else {
            // Manejo de error si la actualización falló
            request.getRequestDispatcher("error_actualizacion_contrasena.jsp").forward(request, response);
        }
    }
}
