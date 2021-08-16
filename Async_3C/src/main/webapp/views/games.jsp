<%--
  Created by IntelliJ IDEA.
  User: Ulises
  Date: 06/08/2021
  Time: 08:35 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Listado De Games</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
    <div class="modal fade" id="details" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel2">Detalles de Games</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h5>Id del juego: </h5>
                    <label id="lbl_idGames"></label>
                    <h5>Nombre del juego:</h5>
                    <label id="lbl_name"></label>
                    <h5>Imagen del juego:<img src="data:image/jpeg;base64,${ game.imgGame }"> </h5>
                    <label id="lbl_imgGame" ></label>
                    <h5>Fecha de lanzamiento:</h5>
                    <label id="lbl_datePremiere"></label>
                    <h5>Id categoria:</h5>
                    <label id="lbl_Category_idCategory"></label>
                    <h5>Status:</h5>
                    <label id="lbl_status"></label>
                </div>
            </div>
        </div>
    </div>

    <script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="${context}/assets/dist/js/main.js"> </script>
</body>
</html>
