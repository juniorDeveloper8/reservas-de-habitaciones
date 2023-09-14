<%-- 
    Document   : error
    Created on : 12/09/2023, 23:11:58
    Author     : rober
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <h1>Error</h1>
    <p>Ocurrió un error durante la operación:</p>
    <p>${requestScope.errorMessage}</p> <!-- Muestra el mensaje de error personalizado -->
    <p>Puede ponerse en contacto con el soporte técnico para obtener más información.</p>
</body>
</html>

