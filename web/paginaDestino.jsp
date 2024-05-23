<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Solicitud Recibida</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Solicitud Recibida</h1>
    <table>
        <tr>
            <td>Te llamas:</td>
            <td><%= request.getParameter("nombre") %></td>
        </tr>
        <tr>
            <td>Apellidos:</td>
            <td><%= request.getParameter("apellidos") %></td>
        </tr>
        <tr>
            <td>Tu correo es:</td>
            <td><%= request.getParameter("correo") %></td>
        </tr>
        <tr>
            <td>Eres:</td>
            <td><%= request.getParameter("genero") %></td>
        </tr>
    </table>
        
    <p>Manejas los siguientes lenguajes de programación: 
        <%
            String[] lenguajes = request.getParameterValues("lenguajes");
            if ( lenguajes != null) {
                for (String lenguaje : lenguajes) {
                    out.print(lenguaje + " , ");
                }
            }
        %>
    </p>
    
    <p>Idiomas que conoces:
        <%
            String[] idiomas = request.getParameterValues("idiomas[]");
            if (idiomas != null) {
                for (String idioma : idiomas) {
                    out.print(idioma + " , ");
                }
            }
        %>
    </p>
    
    
    <p>Comentarios adicionales: <%= request.getParameter("comentarios") %></p>
    
    <form action="index.jsp">
            <input type="submit" value="Regresar">
        </form>
    
</body>
</html>
