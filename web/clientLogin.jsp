<%--
  Created by IntelliJ IDEA.
  User: jackdaniel
  Date: 10/11/2018
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Cliente</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1, user-scalable=no">
    <link type="text/css" rel="stylesheet" href="../css/catalogoEstilo.css">
    <link type="text/css" rel="stylesheet" href="../css/miscontenedores.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
</head>
<body>
<header class="cabecera"><a class="subtitulo" href="catalogo.html">DAM: ACCESO A DATOS</a>
    <h5 class="titulo">Tienda Harnina</h5>
</header>

<div class="contenido01">
    <div class="medio dadoCatalogo">
        <div class="dado d1 informatica"></div>
    </div>
    <div class="medio dadoCatalogo">
        <div class="dado d3 harnina"></div>
    </div>
</div>

<c:if test="${not empty error}">
    <div class="etiqueta s8">
            ${error}
    </div>
</c:if>
<div class="contenido01">
    <form enctype="multipart/form-data" id="client_register" method="POST" action="/valiLoginIn">
        <div class="menu s3 caja03">
            <h4>Login</h4>

            <div id="div_clientUsuario">
                <label class="labelInput" for="clientUsuario">Usuario:</label>
                <input class="etiqueta s8" id="clientUsuario" name ="UsuarioCliente" value="<%= session.getAttribute("UsuarioCliente") %>" type="text" data-functioncallback="ValidacionExpresionRegular.validarUsuario" size="24" minlength="7" maxlength="7" required placeholder="input your User" title="3 to 50 characters">
            </div>

            <div id="div_password">
                <label for="password">Password:</label>
                <input class="etiqueta s8" id="password" name ="PasswordCliente" value="<%= session.getAttribute("PasswordCliente") %>" type="password" placeholder="Contraseña" data-functioncallback="ValidacionExpresionRegular.validarPassword">
            </div>

            <div class="etiqueta errorColor" id="alertaError">Error:</div>
            <button id="submit" type="submit">Enviar</button>
        </div>
    </form>
</div>
</body>
</html>
<script src="../js/jscss/dado.js"></script>
<script src="../js/jsStore/store.js"></script>
<script src="../js/jsStore/prefijos.js"></script>
<script src="../js/jsStore/color.js"></script>
<script src="../js/jsStore/lista.js"></script>
<script src="../js/jsStore/file.js"></script>
<script src="../js/jsStore/error.js"></script>
<script src="../js/jsStore/submit.js"></script>
<script src="../js/jsStore/validate.js"></script>
<script src="../js/jsStore/init.js"></script>

</body>
</html>
