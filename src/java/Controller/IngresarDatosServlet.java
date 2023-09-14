/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.HabitacionDao;
import Dao.PagoDao;
import Dao.ReservasDao;
import Model.Habitaciones;
import Model.Reservas;
import Model.Registros;
import Model.Pagos;
import java.sql.Date;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/IngresarDatosServlet")
public class IngresarDatosServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("usuarioAutenticado") != null) {
            Registros usuarioAutenticado = (Registros) session.getAttribute("usuarioAutenticado");

            // Obtén los valores de registros_id, habitaciones_id y reservas_id según la lógica de tu aplicación
            int registrosId = usuarioAutenticado.getId(); // Reemplaza esto con la forma correcta de obtener registros_id
            int habitacionesId = 5; // Reemplaza 1 con el valor adecuado
            int reservasId = 5; // Reemplaza 2 con el valor adecuado

            String tipo = request.getParameter("tipoHabitacion");
            String fechaInicioStr = request.getParameter("fechaEntrada");
            String fechaFinStr = request.getParameter("fechaSalida");
            int nCamas;
            int nAdultos;
            int nInfantes;

            try {
                nCamas = Integer.parseInt(request.getParameter("cantidadCamas"));
                nAdultos = Integer.parseInt(request.getParameter("cantidadAdultos"));
                nInfantes = Integer.parseInt(request.getParameter("cantidadNinos"));
            } catch (NumberFormatException e) {
                // Manejo de excepción si hay un error al convertir las variables en enteros
                e.printStackTrace(); // Puedes registrar la excepción para su análisis
                request.setAttribute("errorMessage", "Error al ingresar datos. Por favor, verifica que los valores sean válidos.");
                request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                return; // Termina la ejecución del método en caso de error
            }

            try {
                Date fecha_inicio = Date.valueOf(fechaInicioStr);
                Date fecha_fin = Date.valueOf(fechaFinStr);

                // Validar que la fecha de inicio sea anterior a la fecha de fin
                if (fecha_inicio.before(fecha_fin)) {
                    Habitaciones habitaciones = new Habitaciones();
                    habitaciones.setN_camas(nCamas);
                    habitaciones.setN_adultos(nAdultos);
                    habitaciones.setN_infantes(nInfantes);
                    habitaciones.setTipo(tipo);

                    HabitacionDao habitacionDao = new HabitacionDao();
                    int habitacionId = habitacionDao.saveHabitaciones(habitaciones);

                    if (habitacionId > 0) {
                        Reservas reservas = new Reservas();
                        reservas.setFecha_inicio(fecha_inicio);
                        reservas.setFecha_fin(fecha_fin);
                        reservas.setRegistros_id(usuarioAutenticado);
                        reservas.setHabitaciones_id(habitaciones);
                        
                        // Establece los valores de registros_id, habitaciones_id y reservas_id
                        reservas.setRegistros_id(usuarioAutenticado);
                        reservas.setHabitaciones_id(habitaciones);

                        ReservasDao reservasDao = new ReservasDao();
                        int reservaId = reservasDao.saveReservas(reservas);

                        if (reservaId > 0) {
                            String dni = request.getParameter("dni");
                            String numeroTarjeta = request.getParameter("tarjeta");
                            String tipoPago = request.getParameter("metodoPago");
                            Date fechaPago = Date.valueOf(request.getParameter("fechaPago"));
                            int valor;

                            try {
                                valor = Integer.parseInt(request.getParameter("valor"));
                            } catch (NumberFormatException e) {
                                // Manejo de excepción si hay un error al convertir el valor en entero
                                e.printStackTrace(); // Puedes registrar la excepción para su análisis
                                request.setAttribute("errorMessage", "Error al ingresar el valor. Por favor, verifica que sea un número válido.");
                                request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                                return; // Termina la ejecución del método en caso de error
                            }

                            Pagos pagos = new Pagos();
                            pagos.setFecha_p(fechaPago);
                            pagos.setNumero_tar(numeroTarjeta);
                            pagos.setDni(dni);
                            pagos.setTipo_pago(tipoPago);
                            pagos.setValor(valor);
                            pagos.setReservas_id(reservas);
                            
                            PagoDao pagoDao = new PagoDao();
                            int pagoId = pagoDao.savePago(pagos);

                            if (pagoId > 0) {
                                response.sendRedirect("compra.jsp");
                            } else {
                                // Error al guardar el pago
                                request.setAttribute("errorMessage", "Error al guardar el pago. Por favor, inténtalo de nuevo.");
                                request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                            }
                        } else {
                            // Error al guardar la reserva
                            request.setAttribute("errorMessage", "Error al guardar la reserva. Por favor, inténtalo de nuevo.");
                            request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                        }
                    } else {
                        // Error al guardar la habitación
                        request.setAttribute("errorMessage", "Error al guardar la habitación. Por favor, inténtalo de nuevo.");
                        request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                    }
                } else {
                    // Manejo de error si la fecha de inicio es posterior a la fecha de fin
                    request.setAttribute("errorMessage", "La fecha de inicio debe ser anterior a la fecha de fin.");
                    request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
                }
            } catch (IllegalArgumentException e) {
                // Manejo de excepción si hay un error en los argumentos o valores no válidos
                e.printStackTrace(); // Puedes registrar la excepción para su análisis
                request.setAttribute("errorMessage", "Error en los argumentos. Por favor, verifica que los valores sean válidos.");
                request.getRequestDispatcher("formulario_de_reserva.jsp").forward(request, response);
            }
        } else {
            // El usuario no ha iniciado sesión
            response.sendRedirect("login.jsp");
        }
    }
}

