package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.Registros;

public final class Reservas_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Reserva de Fondos</title>\n");
      out.write("        <!-- Agregar estilos CSS para el carrusel (asegúrate de incluir los enlaces correctos) -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- Agregar estilos CSS personalizados -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/styles.css\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"Css/body.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Topbar Start -->\n");
      out.write("        <div class=\"container-fluid bg-light pt-3 d-none d-lg-block\" style=\"position: relative; z-index: 1;\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-6 text-center text-lg-left mb-2 mb-lg-0\">\n");
      out.write("                        <div class=\"d-inline-flex align-items-center\">\n");
      out.write("                            <p><i class=\"fa fa-envelope mr-2\"></i>info@example.com</p>\n");
      out.write("                            <p class=\"text-body px-3\">|</p>\n");
      out.write("                            <p><i class=\"fa fa-phone-alt mr-2\"></i>+012 345 6789</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6 text-center text-lg-right\">\n");
      out.write("                        <div class=\"d-inline-flex align-items-center\">\n");
      out.write("                            <a class=\"text-primary px-3\" href=\"\">\n");
      out.write("                                <i class=\"fab fa-facebook-f\"></i>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"text-primary px-3\" href=\"\">\n");
      out.write("                                <i class=\"fab fa-twitter\"></i>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"text-primary px-3\" href=\"\">\n");
      out.write("                                <i class=\"fab fa-linkedin-in\"></i>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"text-primary px-3\" href=\"\">\n");
      out.write("                                <i class=\"fab fa-instagram\"></i>\n");
      out.write("                            </a>\n");
      out.write("                            <a class=\"text-primary pl-3\" href=\"\">\n");
      out.write("                                <i class=\"fab fa-youtube\"></i>\n");
      out.write("                            </a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Topbar End -->\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark \" style=\"position: relative; z-index: 1;\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Reservas de Hotel</a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"./index.jsp\">Inicio</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"./Habitaciones.jsp\">Habitaciones</a>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    ");

                        Registros usuarioAutenticado = (Registros) request.getSession().getAttribute("usuarioAutenticado");
                        if (usuarioAutenticado != null) {
                    
      out.write("\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link btn btn-primary\" href=\"LogoutServlet\">Cerrar sesión</a>\n");
      out.write("                    </li>\n");
      out.write("                    ");

                    } else {
                    
      out.write("\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link btn btn-primary\" href=\"#\" data-toggle=\"modal\" data-target=\"#loginModal\">Iniciar sesión</a>\n");
      out.write("                    </li>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <br />\n");
      out.write("        <br />\n");
      out.write("        <br />\n");
      out.write("\n");
      out.write("        <div class=\"container mt-5\">\n");
      out.write("            <div class=\"card justify-content-center\" style=\"width: 40rem; position: relative; z-index: 1; background: #fff; left: 25%\">\n");
      out.write("                <h1>Reserva de Habitaciones</h1>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form action=\"/integrador/IngresarDatosServlet\" method=\"post\">\n");
      out.write("                        <!-- Campos ocultos para registros_id, habitaciones_id y pagos_id -->\n");
      out.write("                        <input type=\"hidden\" name=\"registros_id\" value=\"1\"> <!-- Reemplaza 1 con el valor adecuado -->\n");
      out.write("                        <input type=\"hidden\" name=\"habitaciones_id\" value=\"2\"> <!-- Reemplaza 2 con el valor adecuado -->\n");
      out.write("                        <input type=\"hidden\" name=\"reservas_id\" value=\"3\"> <!-- Reemplaza 3 con el valor adecuado -->\n");
      out.write("\n");
      out.write("                        <!-- Datos de Reserva -->\n");
      out.write("                        <div class=\"container mt-4\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <!-- Fecha de Entrada -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"fechaEntrada\">Fecha de Entrada:</label>\n");
      out.write("                                        <input type=\"date\" class=\"form-control\" id=\"fechaEntrada\" name=\"fechaEntrada\" required min=\"");
      out.print(java.time.LocalDate.now());
      out.write("\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Fecha de Salida -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"fechaSalida\">Fecha de Salida:</label>\n");
      out.write("                                        <input type=\"date\" class=\"form-control\" id=\"fechaSalida\" name=\"fechaSalida\" required min=\"");
      out.print(java.time.LocalDate.now());
      out.write("\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Tipo de Habitación -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"tipoHabitacion\">Tipo de Habitación:</label>\n");
      out.write("                                        <select class=\"form-control\" id=\"tipoHabitacion\" name=\"tipoHabitacion\">\n");
      out.write("                                            <option value=\"vip\">VIP (Máximo 2 Adultos, Sin Niños)</option>\n");
      out.write("                                            <option value=\"lujuriosa\">Lujuriosa (Máximo 2 Adultos, Sin Niños)</option>\n");
      out.write("                                            <option value=\"familiar\">Familiar (Máximo 5 Adultos o Niños)</option>\n");
      out.write("                                            <option value=\"individual\">Individual (1 Adulto, Sin Niños)</option>\n");
      out.write("                                        </select>\n");
      out.write("                                    </div> \n");
      out.write("                                    <!-- Cantidad de Adultos -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"cantidadAdultos\">Cantidad de Adultos:</label>\n");
      out.write("                                        <input type=\"number\" class=\"form-control\" id=\"cantidadAdultos\" name=\"cantidadAdultos\" min=\"1\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Cantidad de Niños -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"cantidadNinos\">Cantidad de Niños:</label>\n");
      out.write("                                        <input type=\"number\" class=\"form-control\" id=\"cantidadNinos\" name=\"cantidadNinos\" min=\"0\" required>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <!-- Número de Tarjeta -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"tarjeta\">Número de Tarjeta:</label>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"tarjeta\" name=\"tarjeta\" placeholder=\"Número de Tarjeta\">\n");
      out.write("                                        <div id=\"tarjetaMensaje\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- DNI -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"dni\">DNI:</label>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"dni\" name=\"dni\" placeholder=\"Número de Identificación\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Fecha de Pago -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"fechaPago\">Fecha de Salida:</label>\n");
      out.write("                                        <input type=\"date\" class=\"form-control\" id=\"fechaPago\" name=\"fechaPago\" required min=\"");
      out.print(java.time.LocalDate.now());
      out.write("\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- CVV -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"cvv\">CVV:</label>\n");
      out.write("                                        <input type=\"text\" class=\"form-control\" id=\"cvv\" name=\"cvv\" placeholder=\"CVV\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- Costo -->\n");
      out.write("                                    <div class=\"form-group\">\n");
      out.write("                                        <label for=\"valor\">Costo:</label>\n");
      out.write("                                        <input type=\"number\" class=\"form-control\" id=\"valor\" name=\"valor\" placeholder=\"180\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <!-- Cantidad de Camas -->\n");
      out.write("                            <div class=\"form-group mt-4\">\n");
      out.write("                                <label for=\"cantidadCamas\">Cantidad de Camas:</label>\n");
      out.write("                                <input type=\"number\" class=\"form-control\" id=\"cantidadCamas\" name=\"cantidadCamas\" min=\"0\" required>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <!-- Método de Pago -->\n");
      out.write("                        <h4 class=\"mt-4\">Método de Pago</h4>\n");
      out.write("                        <div class=\"form-check\">\n");
      out.write("                            <input class=\"form-check-input\" type=\"radio\" name=\"metodoPago\" id=\"tarjetaCredito\" value=\"tarjetaCredito\" checked>\n");
      out.write("                            <label class=\"form-check-label\" for=\"tarjetaCredito\">Tarjeta de Crédito</label>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-check\">\n");
      out.write("                            <input class=\"form-check-input\" type=\"radio\" name=\"metodoPago\" id=\"paypal\" value=\"paypal\">\n");
      out.write("                            <label class=\"form-check-label\" for=\"paypal\">PayPal</label>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <!-- Botón para abrir el modal -->\n");
      out.write("                        <button type=\"button\" class=\"btn btn-primary mt-4\" id=\"openReservaModal\" data-toggle=\"modal\" data-target=\"#reservaModal\">Previsualizar Reserva</button>\n");
      out.write("\n");
      out.write("                        <!-- Botón de Envío -->\n");
      out.write("                        <div class=\"text-center mt-4\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" id=\"reservarButton\">Reservar</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div id=\"reservaModal\" class=\"modal fade\" tabindex=\"-1\" aria-labelledby=\"reservaModalLabel\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"reservaModalLabel\">Detalles de la Reserva</h5>\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Cerrar\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <!-- Aquí se mostrarán los detalles de la reserva -->\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cerrar</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Carrusel de imágenes -->\n");
      out.write("        <div id=\"imageCarousel\" class=\"carousel slide\" data-ride=\"carousel\" style=\"position: absolute; top: 0; left: 0; right: 0; bottom: 0; z-index: 0;\">\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"carousel-item active\">\n");
      out.write("                    <img src=\"./img/fond_jlo.jpg\" class=\"d-block w-100\" alt=\"Imagen 1\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"./img/familiar3.jpg\" class=\"d-block w-100\" alt=\"Imagen 2\">\n");
      out.write("                </div>\n");
      out.write("                <!-- Agrega más imágenes aquí -->\n");
      out.write("            </div>\n");
      out.write("            <a class=\"carousel-control-prev\" href=\"#imageCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Previous</span>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"carousel-control-next\" href=\"#imageCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"sr-only\">Next</span>\n");
      out.write("            </a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- Carrusel de imágenes -->\n");
      out.write("\n");
      out.write("    <!--modal-->\n");
      out.write("\n");
      out.write("    <!-- Modal de Inicio de Sesión -->\n");
      out.write("    <div class=\"modal fade\" id=\"loginModal\" tabindex=\"-1\" aria-labelledby=\"loginModalLabel\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <h5 class=\"modal-title\" id=\"loginModalLabel\">Iniciar Sesión</h5>\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <!-- Aquí puedes agregar tus campos de inicio de sesión, como un formulario -->\n");
      out.write("                    <form action=\"/integrador/LoginServlet\" method=\"post\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"email\">Correo Electrónico</label>\n");
      out.write("                            <input type=\"email\" class=\"form-control\" id=\"email\" name=\"correo\" placeholder=\"Correo Electrónico\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"password\">Contraseña</label>\n");
      out.write("                            <input type=\"password\" class=\"form-control\" id=\"password\" name=\"contrasena\" placeholder=\"Contraseña\">\n");
      out.write("                        </div>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">Iniciar sesión</button>\n");
      out.write("                        <a type=\"button\" class=\"btn btn-secondary\" href=\"./Recuperacion.jsp\" >Olvide mi contraceña</a>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    ");

                        // Verifica si hay un mensaje de error en la sesión (por ejemplo, credenciales incorrectas)
                        String error = (String) request.getSession().getAttribute("errorLogin");
                        if (error != null) {
                    
      out.write("\n");
      out.write("                    <div class=\"alert alert-danger\" role=\"alert\">\n");
      out.write("                        ");
      out.print( error);
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    ");

                            // Elimina el mensaje de error de la sesión para que no se muestre nuevamente
                            request.getSession().removeAttribute("errorLogin");
                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-footer\">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cerrar</button>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!--modal-->\n");
      out.write("\n");
      out.write("    <!-- Agregar scripts JS (asegúrate de incluir los enlaces correctos) -->\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"JavaScript/fecha.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"JavaScript/Reserva.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script src=\"JavaScript/Tarjeta.js\" type=\"text/javascript\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
