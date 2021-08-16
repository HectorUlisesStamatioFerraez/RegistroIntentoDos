<%--
  Created by IntelliJ IDEA.
  User: Ulises
  Date: 10/08/2021
  Time: 08:35 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>Crear un juego</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<div class="modal fade" id="details" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h2 style="color: #bb2d3b"> Registrar un Juego </h2>
            </div>
                <div class="modal-body">
                    <form action="${context}/createGames" method="POST">
                        <label>Nombre Juego: </label>
                        <input type="text" id="lbl_name" required>
                        <br>
                        <label>Imagen Juego: </label>
                        <input type="file" id="lbl_imgGame" img src="data:image/jpeg;base64,${ game.imgGame }" required >
                        <br>
                        <label>Fecha de Estreno: </label>
                        <input type="date"  id="lbl_datePremiere" required >
                        <br>
                        <label>Categoria del Juego: </label>
                        <select id="lbl_Category_idCategory" name="ID CATEGORY GAME :" required>
                            <c:forEach items="${categoryList}" var="category">
                                <option value="${category.idCategory}">${category.name}</option>
                            </c:forEach>
                        </select>
                        <button class="btn btn-primary" onclick="btn-create()">Registrar el Juego</button>
                    </form>
                </div>
        </div>
    </div>
</div>
<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"> </script>
</body>
</html>
