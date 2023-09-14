<%-- 
    Document   : Reservas
    Created on : 12/09/2023, 10:30:26
    Author     : rober
--%>

<%@page import="Model.Registros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reserva de Fondos</title>
        <!-- Agregar estilos CSS para el carrusel (asegúrate de incluir los enlaces correctos) -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Agregar estilos CSS personalizados -->
        <link rel="stylesheet" href="css/styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="Css/body.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid bg-light pt-3 d-none d-lg-block" style="position: relative; z-index: 1;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                        <div class="d-inline-flex align-items-center">
                            <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                            <p class="text-body px-3">|</p>
                            <p><i class="fa fa-phone-alt mr-2"></i>+012 345 6789</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-center text-lg-right">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a class="text-primary px-3" href="">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a class="text-primary pl-3" href="">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark " style="position: relative; z-index: 1;">
            <a class="navbar-brand" href="#">Reservas de Hotel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="./index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Habitaciones.jsp">Habitaciones</a>
                    </li>

                    <%
                        Registros usuarioAutenticado = (Registros) request.getSession().getAttribute("usuarioAutenticado");
                        if (usuarioAutenticado != null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="LogoutServlet">Cerrar sesión</a>
                    </li>
                    <%
                    } else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary" href="#" data-toggle="modal" data-target="#loginModal">Iniciar sesión</a>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </nav>

        <br />
        <br />
        <br />

        <div class="container mt-5">
            <div class="card justify-content-center" style="width: 40rem; position: relative; z-index: 1; background: #fff; left: 25%">
                <h1>Reserva de Habitaciones</h1>
                <div class="card-body">
                    <form action="/integrador/IngresarDatosServlet" method="post">
                        <!-- Campos ocultos para registros_id, habitaciones_id y pagos_id -->
                        <input type="hidden" name="registros_id" value="1"> <!-- Reemplaza 1 con el valor adecuado -->
                        <input type="hidden" name="habitaciones_id" value="2"> <!-- Reemplaza 2 con el valor adecuado -->
                        <input type="hidden" name="reservas_id" value="3"> <!-- Reemplaza 3 con el valor adecuado -->

                        <!-- Datos de Reserva -->
                        <div class="container mt-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <!-- Fecha de Entrada -->
                                    <div class="form-group">
                                        <label for="fechaEntrada">Fecha de Entrada:</label>
                                        <input type="date" class="form-control" id="fechaEntrada" name="fechaEntrada" required min="<%=java.time.LocalDate.now()%>">
                                    </div>
                                    <!-- Fecha de Salida -->
                                    <div class="form-group">
                                        <label for="fechaSalida">Fecha de Salida:</label>
                                        <input type="date" class="form-control" id="fechaSalida" name="fechaSalida" required min="<%=java.time.LocalDate.now()%>">
                                    </div>
                                    <!-- Tipo de Habitación -->
                                    <div class="form-group">
                                        <label for="tipoHabitacion">Tipo de Habitación:</label>
                                        <select class="form-control" id="tipoHabitacion" name="tipoHabitacion">
                                            <option value="vip">VIP (Máximo 2 Adultos, Sin Niños)</option>
                                            <option value="lujuriosa">Lujuriosa (Máximo 2 Adultos, Sin Niños)</option>
                                            <option value="familiar">Familiar (Máximo 5 Adultos o Niños)</option>
                                            <option value="individual">Individual (1 Adulto, Sin Niños)</option>
                                        </select>
                                    </div> 
                                    <!-- Cantidad de Adultos -->
                                    <div class="form-group">
                                        <label for="cantidadAdultos">Cantidad de Adultos:</label>
                                        <input type="number" class="form-control" id="cantidadAdultos" name="cantidadAdultos" min="1" required>
                                    </div>
                                    <!-- Cantidad de Niños -->
                                    <div class="form-group">
                                        <label for="cantidadNinos">Cantidad de Niños:</label>
                                        <input type="number" class="form-control" id="cantidadNinos" name="cantidadNinos" min="0" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <!-- Número de Tarjeta -->
                                    <div class="form-group">
                                        <label for="tarjeta">Número de Tarjeta:</label>
                                        <input type="text" class="form-control" id="tarjeta" name="tarjeta" placeholder="Número de Tarjeta">
                                        <div id="tarjetaMensaje"></div>
                                    </div>
                                    <!-- DNI -->
                                    <div class="form-group">
                                        <label for="dni">DNI:</label>
                                        <input type="text" class="form-control" id="dni" name="dni" placeholder="Número de Identificación">
                                    </div>
                                    <!-- Fecha de Pago -->
                                    <div class="form-group">
                                        <label for="fechaPago">Fecha de Salida:</label>
                                        <input type="date" class="form-control" id="fechaPago" name="fechaPago" required min="<%=java.time.LocalDate.now()%>">
                                    </div>
                                    <!-- CVV -->
                                    <div class="form-group">
                                        <label for="cvv">CVV:</label>
                                        <input type="text" class="form-control" id="cvv" name="cvv" placeholder="CVV">
                                    </div>
                                    <!-- Costo -->
                                    <div class="form-group">
                                        <label for="valor">Costo:</label>
                                        <input type="number" class="form-control" id="valor" name="valor" placeholder="180">
                                    </div>
                                </div>
                            </div>
                            <!-- Cantidad de Camas -->
                            <div class="form-group mt-4">
                                <label for="cantidadCamas">Cantidad de Camas:</label>
                                <input type="number" class="form-control" id="cantidadCamas" name="cantidadCamas" min="0" required>
                            </div>
                        </div>

                        <!-- Método de Pago -->
                        <h4 class="mt-4">Método de Pago</h4>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="metodoPago" id="tarjetaCredito" value="tarjetaCredito" checked>
                            <label class="form-check-label" for="tarjetaCredito">Tarjeta de Crédito</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="metodoPago" id="paypal" value="paypal">
                            <label class="form-check-label" for="paypal">PayPal</label>
                        </div>



                        <!-- Botón para abrir el modal -->
                        <button type="button" class="btn btn-primary mt-4" id="openReservaModal" data-toggle="modal" data-target="#reservaModal">Previsualizar Reserva</button>

                        <!-- Botón de Envío -->
                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-primary" id="reservarButton">Reservar</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>



        <!-- Modal -->
        <div id="reservaModal" class="modal fade" tabindex="-1" aria-labelledby="reservaModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="reservaModalLabel">Detalles de la Reserva</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Aquí se mostrarán los detalles de la reserva -->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- Carrusel de imágenes -->
        <div id="imageCarousel" class="carousel slide" data-ride="carousel" style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; z-index: 0;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./img/fond_jlo.jpg" class="d-block w-100" alt="Imagen 1">
                </div>
                <div class="carousel-item">
                    <img src="./img/familiar3.jpg" class="d-block w-100" alt="Imagen 2">
                </div>
                <!-- Agrega más imágenes aquí -->
            </div>
            <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- Carrusel de imágenes -->

    <!--modal-->

    <!-- Modal de Inicio de Sesión -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Iniciar Sesión</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Aquí puedes agregar tus campos de inicio de sesión, como un formulario -->
                    <form action="/integrador/LoginServlet" method="post">
                        <div class="form-group">
                            <label for="email">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" name="correo" placeholder="Correo Electrónico">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="contrasena" placeholder="Contraseña">
                        </div>
                        <button type="submit" class="btn btn-primary">Iniciar sesión</button>
                        <a type="button" class="btn btn-secondary" href="./Recuperacion.jsp" >Olvide mi contraceña</a>
                    </form>

                    <%
                        // Verifica si hay un mensaje de error en la sesión (por ejemplo, credenciales incorrectas)
                        String error = (String) request.getSession().getAttribute("errorLogin");
                        if (error != null) {
                    %>
                    <div class="alert alert-danger" role="alert">
                        <%= error%>
                    </div>
                    <%
                            // Elimina el mensaje de error de la sesión para que no se muestre nuevamente
                            request.getSession().removeAttribute("errorLogin");
                        }
                    %>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>

                </div>
            </div>
        </div>
    </div>

    <!--modal-->

    <!-- Agregar scripts JS (asegúrate de incluir los enlaces correctos) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="JavaScript/fecha.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="JavaScript/Reserva.js" type="text/javascript"></script>
    <script src="JavaScript/Tarjeta.js" type="text/javascript"></script>
</body>
</html>
