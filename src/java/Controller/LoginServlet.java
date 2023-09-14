/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.RegistroDao;
import Model.Registros;
import Exeptions.CredencialesIncorrectasException;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario de inicio de sesión
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        // Crear un objeto RegistroDao
        RegistroDao registroDao = new RegistroDao();

        try {
            // Intentar iniciar sesión
            Registros usuarioAutenticado = registroDao.login(contrasena, correo);

            if (usuarioAutenticado != null) {
                // Si el inicio de sesión es exitoso, puedes almacenar el usuario en la sesión
                request.getSession().setAttribute("usuarioAutenticado", usuarioAutenticado);

                // Verificar si el correo electrónico corresponde a un administrador
                if ("admin@gmail.com".equals(correo)) {
                    // Si el correo es igual a "admin@gmail.com", considerarlo como un administrador
                    response.sendRedirect("admin.jsp"); // Cambia "admin.jsp" por la página de administrador que tengas
                } else {
                    // Si el correo no corresponde a un administrador, redirigir a otra página (por ejemplo, Habitaciones.jsp)
                    response.sendRedirect("Habitaciones.jsp"); // Cambia "Habitaciones.jsp" por la página que prefieras
                }
            } else {
                // Las credenciales son incorrectas, redirigir a una página de error de inicio de sesión
                response.sendRedirect("error_login.jsp");
            }
        } catch (SQLException e) {
            // Manejo de excepción si hay un error de base de datos
            e.printStackTrace(); // Puedes registrar la excepción para su análisis
            response.sendRedirect("error_db.jsp"); // Redirigir a una página de error de base de datos
        } catch (Exception e) {
            // Manejo de excepciones generales (puedes personalizar este bloque según tus necesidades)
            e.printStackTrace(); // Puedes registrar la excepción para su análisis
            response.sendRedirect("error_login.jsp"); // Redirigir a una página de error general
        }
    }
}


