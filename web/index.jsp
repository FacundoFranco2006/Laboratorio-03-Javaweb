<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitud</title>
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
    <h1>Solicitud</h1>
    <form action="paginaDestino.jsp" method="post">
        <table>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="nombre"></td>
            </tr>
            <tr>
                <td>Apellidos:</td>
                <td><input type="text" name="apellidos"></td>
            </tr>
            <tr>
                <td>Tu correo es:</td>
                <td><input type="email" name="correo"></td>
            </tr>
        </table>
        
        <p>Eres:
            <input type="radio" name="genero" value="Hombre">Hombre
            <input type="radio" name="genero" value="Mujer">Mujer
        </p>
        
        <p>Selecciona lo que sabes:
            <input type="checkbox" name="lenguajes" value="Java">Java
            <input type="checkbox" name="lenguajes" value="C/C++">C/C++
            <input type="checkbox" name="lenguajes" value="Basic">Basic
            <input type="checkbox" name="lenguajes" value="HTML">HTML
        </p>
        <p>idiomas que conoces: 
            <select name="idiomas[]" multiple>
                <option value="Español">Español</option>
                <option value="Ingles">Ingles</option>
                <option value="Frances">Frances</option>
                <option value="Aleman">Aleman</option>
            </Select>
        </p>
        <p>Comentarios Adicionales: <textarea name="comentarios"></textarea>
        </p>
        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </p>
    </form>
</body>

</html>