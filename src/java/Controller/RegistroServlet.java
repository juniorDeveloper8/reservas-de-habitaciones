/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.RegistroDao;
import Model.Registros;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rober
 */
@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario de registro
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String tipoDni = request.getParameter("tipoDni");
        String dni = request.getParameter("dni");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String contrasena = request.getParameter("contrasena");

        // Crear un objeto Registros con los datos del formulario
        Registros registros = new Registros();
        registros.setNom(nombre);
        registros.setApe(apellido);
        registros.setT_dni(tipoDni);
        registros.setDni(dni);
        registros.setCorreo(correo);
        registros.setPhone(telefono);
        registros.setPsw(contrasena);

        // Crear un objeto RegistroDao
        RegistroDao registroDao = new RegistroDao();

        // Intentar registrar el usuario
        int result = registroDao.saveRegistro(registros);

        if (result > 0) {
            // Registro exitoso, redirigir a la página de inicio (index.jsp)
            response.sendRedirect("index.jsp");
        } else {
            // Error en el registro, mostrar un mensaje de error o redirigir a una página de error
            response.sendRedirect("error_registro.jsp");
        }
    }
}
