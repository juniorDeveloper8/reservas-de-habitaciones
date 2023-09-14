<%-- 
    Document   : index
    Created on : 11/09/2023, 20:11:20
    Author     : rober
--%>

<%@page import="Model.Registros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>App de Reservas de Hotel</title>
        <!-- Enlace a Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <!-- Enlace a tu hoja de estilos personalizada -->
        <link href="Css/index.css" rel="stylesheet" type="text/css"/>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Reservas de Hotel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Habitaciones.jsp">Habitaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Registro.jsp">Registro</a>
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

        <header>
            <!-- Carrusel de imágenes -->
            <div id="carouselExample" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./img/room_1.jpg" class="d-block w-100" alt="Imagen 1">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/room_1b.jpg" class="d-block w-100" alt="Imagen 2">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/room_1c.jpg" class="d-block w-100" alt="Imagen 3">
                    </div>
                </div>
                <!-- Controles del carrusel -->
                <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </header>

        <main class="container">
            <section class="hero text-center py-5">
                <!-- Contenido de la sección hero -->
            </section>

            <section class="features">
                <!-- Características Destacadas -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/psina.jpg" alt="Característica 1" class="feature-image">
                            <h3>Psicina</h3>
                            <a href="./blog.jsp" ><p>Descripción de la característica 1.</p> </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/Spa.jpg" alt="Característica 2" class="feature-image">
                            <h3>Salas dVip</h3>
                            <a href="./blog.jsp" ><p>Descripción de la característica 2.</p></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/habitaciones.jpg" alt="Característica 3" class="feature-image">
                            <h3>Habitaciones</h3>
                           <a href="./blog.jsp" > <p>Descripción de la característica 3.</p></a>
                        </div>
                    </div>
                    <!-- Repite estos tres bloques para las otras tres características -->
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/fond_jlo.jpg" alt="Característica 1" class="feature-image">
                            <h3>hoteles</h3>
                            <a href="./blog.jsp" ><p>Descripción de la característica 1.</p></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/vip.jpg" alt="Característica 2" class="feature-image">
                            <h3>Presidenciales</h3>
                            <a href="./blog.jsp" ><p>Descripción de la característica 2.</p></a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature text-center p-4 rounded">
                            <img src="./img/blog-1.jpg" alt="Característica 3" class="feature-image">
                            <h3>Turismo</h3>
                          <a href="./blog.jsp" >  <p>Descripción de la característica 3.</p></a>
                        </div>
                    </div>
                    <!-- Repite estos tres bloques para las otras tres características -->
                </div>
            </section>

            <section class="special-offers text-center py-5">
                <!-- Ofertas Especiales -->
                <p>¡Explore nuestras ofertas especiales de temporada y obtenga descuentos exclusivos en su estancia!</p>
                <a href="#" class="btn btn-primary btn-lg">Ver Ofertas</a>
            </section>
        </main>

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


        <footer class="bg-dark text-white text-center py-3">
            <!-- Pie de página -->
            <p>&copy; 2023 App de Reservas de Hotel</p>
        </footer>

        <!-- Enlaces a las bibliotecas de Bootstrap -->

        <script>
            // Después de un inicio de sesión exitoso, muestra el botón "Cerrar sesión" y oculta "Iniciar sesión"
            function mostrarCerrarSesion() {
                document.getElementById("logoutButton").style.display = "block";
                document.querySelector('.btn-primary').style.display = "none";
            }
        </script>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
