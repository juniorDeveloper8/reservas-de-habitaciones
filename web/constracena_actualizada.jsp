<%-- 
    Document   : constracena_actualizada
    Created on : 04/09/2023, 19:02:08
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contraseña Actualizada</title>
    <style>
        /* Estilo para el contenedor de la animación */
        .animation-container {
            text-align: center;
            padding: 100px;
            animation: fadeOut 3s ease-in-out; /* Nombre de la animación y duración */
        }

        /* Definición de la animación */
        @keyframes fadeOut {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="animation-container">
        <h1>¡Contraseña Actualizada!</h1>
        <!-- Aquí puedes agregar cualquier contenido adicional, como un mensaje -->
        <a href="index.jsp">Volver a la página de inicio</a>
    </div>

    <!-- Agrega JavaScript si deseas realizar acciones adicionales después de la animación -->
</body>
</html>

