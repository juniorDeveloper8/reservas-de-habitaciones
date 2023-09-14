<%-- 
    Document   : compra
    Created on : 07/09/2023, 16:07:55
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gracias por reservar con nosotros</title>
        <style>
            /* Estilos CSS para centrar el contenido */
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                text-align: center;
            }

            /* Estilos CSS para la animación del robot */
            @keyframes robot-animation {
                0% {
                    transform: translateY(0);
                }
                50% {
                    transform: translateY(-10px);
                }
                100% {
                    transform: translateY(0);
                }
            }

            .robot {
                animation: robot-animation 2s infinite;
            }
        </style>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="./img/icon.png" rel="icon">

    </head>
    <body>
        <div class="container">
            <h1>Gracias por reservar con nosotros</h1>
            <p>
                Te agradecemos por elegir nuestro servicio de reservas. Esperamos que tengas una experiencia increíble durante tu estadía.
            </p>
            <div class="form-group">
                <a href="./index.jsp">
                    <span class="btn btn-primary btn-block py-3">Volver a Inico</span>
                </a>
            </div>
            <br />
            <img src="./img/rob.gif" alt="Robot" class="robot">

        </div>

    </body>
</html>

