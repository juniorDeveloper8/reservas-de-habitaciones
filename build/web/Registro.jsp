<%-- 
    Document   : Registro
    Created on : 12/09/2023, 1:03:48
    Author     : rober
--%>

<%@page import="Model.Registros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link href="Css/Registro.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/intl-tel-input.js"></script>
    </head>
    <body>
        <!-- Topbar Start -->
        <div class="container-fluid bg-light pt-3 d-none d-lg-block">
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

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">Reservas de Hotel</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
            </div>
        </nav>
        <!-- Navbar -->

        <!-- Container -->
        <div class="container_card">
            <div class="container mt-5 container_card_ani">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="text-center">Registro</h2>
                            </div>
                            <div class="card-body">
                                <!-- Formulario de registro -->
                                <form class="row g-3" method="POST" action="/integrador/RegistroServlet"> <!-- Agregamos method y action -->

                                    <div class="col-md-6">
                                        <label for="inputName" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" id="inputName" name="nombre"> <!-- Cambiamos type a text y agregamos name -->
                                    </div>

                                    <div class="col-md-6">
                                        <label for="inputLastName" class="form-label">Apellido</label>
                                        <input type="text" class="form-control" id="inputLastName" name="apellido"> <!-- Cambiamos type a text y agregamos name -->
                                    </div>

                                    <div class="col-md-6">
                                        <label for="inputEmail4" class="form-label">Email (solo: @gmail)</label>
                                        <input type="email" class="form-control" id="inputEmail4" name="correo"> <!-- Cambiamos type a email y agregamos name -->
                                    </div>

                                    <div class="col-md-6">
                                        <label for="inputPassword4" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="inputPassword4" name="contrasena"> <!-- Cambiamos type a password y agregamos name -->
                                        <label class="form-label">minimo 8 caracteres (ex: Jose@584)</label>
                                    </div>
                                    <div class="col-md-4">
                                        <select id="inputT_dni" class="form-select" name="tipoDni"> <!-- Agregamos name -->
                                            <option selected>Cedula</option>
                                            <option>Pasaporte</option>
                                        </select>
                                    </div>
                                    <div class="col-6">
                                        <input type="text" class="form-control" id="inputDni" placeholder="1752550000000" name="dni"> <!-- Agregamos name -->
                                    </div>
                                    <div class="col-4">
                                        <label for="inputPhone" class="form-label">Celular</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div id="flag-container"></div>
                                            </div>
                                            <input type="phone" class="form-control" id="inputPhone" placeholder="123456789" name="telefono"> <!-- Agregamos name -->
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="gridCheck" name="aceptaTerminos"> <!-- Agregamos name -->
                                            <label class="form-check-label" for="gridCheck">
                                                Acepta Terminos y Condiciones
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary">Sign in</button>
                                    </div>
                                </form>

                                <!-- Formulario de registro -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container -->
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
        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
    </body>
</html>
