<%-- 
    Document   : blog
    Created on : 09/08/2023, 11:09:03
    Author     : rober
--%>

<%@page import="Model.Registros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>TRAVELER - Free Travel Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/icon.png" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" type="text/css"/>
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" type="text/css"/>

        <!-- Customized Bootstrap Stylesheet -->
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid page-header">
            <div class="container">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                    <h3 class="display-4 text-white text-uppercase">Blog</h3>
                    <div class="d-inline-flex text-white">
                        <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                        <i class="fa fa-angle-double-right pt-1 px-3"></i>
                        <p class="m-0 text-uppercase">Blog</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Blog Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row pb-3">
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-1.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-2.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-3.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-1.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-2.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-3.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-1.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 pb-2">
                                <div class="blog-item">
                                    <div class="position-relative">
                                        <img class="img-fluid w-100" src="./img/blog-2.jpg" alt="">
                                        <div class="blog-date">
                                            <h6 class="font-weight-bold mb-n1">01</h6>
                                            <small class="text-white text-uppercase">Jan</small>
                                        </div>
                                    </div>
                                    <div class="bg-white p-4">
                                        <div class="d-flex mb-2">
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Admin</a>
                                            <span class="text-primary px-2">|</span>
                                            <a class="text-primary text-uppercase text-decoration-none" href="">Tours & Travel</a>
                                        </div>
                                        <a class="h5 m-0 text-decoration-none" href="">Dolor justo sea kasd lorem clita justo diam amet</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination pagination-lg justify-content-center bg-white mb-0" style="padding: 30px;">
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                        </li>
                                        <li class="page-item active"><a class="page-link" href="./destination.jsp">1</a></li>
                                        <li class="page-item"><a class="page-link" href="./single.jsp">2</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 mt-5 mt-lg-0">
                        <!-- Author Bio -->
                        <div class="d-flex flex-column text-center bg-white mb-5 py-5 px-4">
                            <img src="./img/gojo.jpg" class="img-fluid mx-auto mb-3" style="width: 100px;">
                            <h3 class="text-primary mb-3">Roberth Zambrano</h3>
                            <p>Dueño y administrador de la plataformas para reservas del HotelItsco</p>
                            <div class="d-flex justify-content-center">
                                <a class="text-primary px-2" href="">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="text-primary px-2" href="">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="text-primary px-2" href="">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                                <a class="text-primary px-2" href="">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a class="text-primary px-2" href="">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </div>
                        </div>

                        <!-- Search Form -->
                        <div class="mb-5">
                            <div class="bg-white" style="padding: 30px;">
                                <div class="input-group">
                                    <input type="text" class="form-control p-4" placeholder="Keyword">
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-primary border-primary text-white"><i
                                                class="fa fa-search"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Category List -->
                        <div class="mb-5">
                            <h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">Categories</h4>
                            <div class="bg-white" style="padding: 30px;">
                                <ul class="list-inline m-0">
                                    <li class="mb-3 d-flex justify-content-between align-items-center">
                                        <a class="text-dark" href="#"><i class="fa fa-angle-right text-primary mr-2"></i>Web
                                            Design</a>
                                        <span class="badge badge-primary badge-pill">150</span>
                                    </li>
                                    <li class="mb-3 d-flex justify-content-between align-items-center">
                                        <a class="text-dark" href="#"><i class="fa fa-angle-right text-primary mr-2"></i>Web
                                            Development</a>
                                        <span class="badge badge-primary badge-pill">131</span>
                                    </li>
                                    <li class="mb-3 d-flex justify-content-between align-items-center">
                                        <a class="text-dark" href="#"><i
                                                class="fa fa-angle-right text-primary mr-2"></i>Online Marketing</a>
                                        <span class="badge badge-primary badge-pill">78</span>
                                    </li>
                                    <li class="mb-3 d-flex justify-content-between align-items-center">
                                        <a class="text-dark" href="#"><i
                                                class="fa fa-angle-right text-primary mr-2"></i>Keyword Research</a>
                                        <span class="badge badge-primary badge-pill">56</span>
                                    </li>
                                    <li class="d-flex justify-content-between align-items-center">
                                        <a class="text-dark" href="#"><i
                                                class="fa fa-angle-right text-primary mr-2"></i>Email Marketing</a>
                                        <span class="badge badge-primary badge-pill">98</span>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!-- Recent Post -->
                        <div class="mb-5">
                            <h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">Post Recientes</h4>
                            <a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
                                <img class="img-fluid" src="./img/blog-100x100.jpg" alt="">
                                <div class="pl-3">
                                    <h6 class="m-1">Despertar en la playa es lo mejor</h6>
                                    <small>Jan 01, 2050</small>
                                </div>
                            </a>
                            <a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
                                <img class="img-fluid" src="./img/blog-100x100.jpg" alt="">
                                <div class="pl-3">
                                    <h6 class="m-1">Un dia en la playa</h6>
                                    <small>Jan 01, 2050</small>
                                </div>
                            </a>
                            <a class="d-flex align-items-center text-decoration-none bg-white mb-3" href="">
                                <img class="img-fluid" src="./img/blog-100x100.jpg" alt="">
                                <div class="pl-3">
                                    <h6 class="m-1">It's fonny is here in the beach Cancun </h6>
                                    <small>Jan 01, 2050</small>
                                </div>
                            </a>
                        </div>

                        <!-- Tag Cloud -->
                        <div class="mb-5">
                            <h4 class="text-uppercase mb-4" style="letter-spacing: 5px;">Tag Cloud</h4>
                            <div class="d-flex flex-wrap m-n1">
                                <a href="" class="btn btn-light m-1">Design</a>
                                <a href="" class="btn btn-light m-1">Development</a>
                                <a href="" class="btn btn-light m-1">Marketing</a>
                                <a href="" class="btn btn-light m-1">SEO</a>
                                <a href="" class="btn btn-light m-1">Writing</a>
                                <a href="" class="btn btn-light m-1">Consulting</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 py-5 px-sm-3 px-lg-5" style="margin-top: 90px;">
            <div class="row pt-5">
                <div class="col-lg-3 col-md-6 mb-5">
                    <a href="" class="navbar-brand">
                        <h1 class="text-primary"><span class="text-white">TRAVELER</span>ITSCO</h1>
                    </a>
                    <p>Escápate a nuestro lujoso paraíso costero y sumérgete en la relajación. Descubre el refugio perfecto para tus vacaciones</p>
                    <h6 class="text-white text-uppercase mt-4 mb-3" style="letter-spacing: 5px;">Síganos</h6>
                    <div class="d-flex justify-content-start">
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Nuestros Servicios</h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Destination</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Services</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Packages</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Guides</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Testimonial</a>
                        <a class="text-white-50" href="#"><i class="fa fa-angle-right mr-2"></i>Blog</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Enlaces útiles</h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Destination</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Services</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Packages</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Guides</a>
                        <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Testimonial</a>
                        <a class="text-white-50" href="#"><i class="fa fa-angle-right mr-2"></i>Blog</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Contactenos</h5>
                    <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, Ecuador, LATAM</p>
                    <p><i class="fa fa-phone-alt mr-2"></i>+593 987358460</p>
                    <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-dark text-white border-top py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="row">
                <div class="col-lg-6 text-center text-md-left mb-3 mb-md-0">
                    <p class="m-0 text-white-50">Copyright &copy; <a href="https://github.com/juniorDeveloper8/">Robert Zambrano</a>. All Rights Reserved.</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="./lib/easing/easing.min.js"></script>
        <script src="./lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="./lib/tempusdominus/js/moment.min.js"></script>
        <script src="./lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="./lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="./mail/jqBootstrapValidation.min.js"></script>
        <script src="./mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

</html>
