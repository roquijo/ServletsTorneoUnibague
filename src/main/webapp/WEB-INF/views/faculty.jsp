<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Facultades</title>

    <style>
        .tabla
        {
            background-color: lightblue;
            text-align: center;
            border-collapse: collapse;
            width:100%;
            margin-top: 0.5%;
        }

        th, td{
            border: solid 1px black;
            padding: 20px;
        }

        thead
        {
            background-color: #06bbc2;
            border-bottom: solid 3px;
            color: black;
        }
         li
        {
            list-style: none;
        }

        .btn-group
        {
            display: flex;
            justify-content: center;
        }

        .btn
        {
            background-color: #06bbc2;
            border: 1px solid black;

        }
    </style>

    <script type="text/javascript">

        let facul = [["Ingenieria", 11, 100], ["Derecho",22,200],["Humanidades", 33,300]]

        window.onload = function generarTabla(){

             let list = "<thead><tr><th>iter</th><th>Nombre</th><th>Codigo</th><th>Id</th></tr></thead><tbody>"
             for(let i = 0 ; i < facul.length ; i++){
                 list+="<tr><td style='width: 100px;text-align: left;'>" +i+ "</td>";
                 list+="<td style='width: 100px;text-align: left;'>" + facul[i][0] + "</td>";
                 list+="<td style='width: 100px;text-align: left;'>" + facul[i][1] + "</td>";
                 list+="<td style='width: 100px;text-align: left;'>" + facul[i][2] + "</td>";
                 list+="</tr>";
             }
                document.getElementById("tabla").innerHTML = list;
        }

        var myModal = document.getElementById('staticBackdrop')
        var myInput = document.getElementById('btnAgregar')

        myModal.addEventListener('shown.bs.modal', function () {
            myInput.focus()
        })
    </script>
</head>

<body>
<!--NavBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <div class="container-fluid">
            <a class="navbar-brand" href="principal.do">Home</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" role="navigation">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link" aria-current= "true" href="faculty.do">Facultades</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" aria-current= "true" href="team.do">Equipos</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" aria-current= "true" href="player.do">Jugadores</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="alert('Proyecto Desarollado Por Jorge, Juan Pablo y Juan Esteban')">Acerca de</a>
                    </li>

                </ul>

                <form class="d-flex" style="margin-top:13px;">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Buscar">
                    <button class="btnBuscar btn-outline-success" type="submit">Buscar</button>
                </form>

            </div>
        </div>
    </nav>

    <div class="btn-group">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="staticBackdrop" id="btnAgregar">Agregar</button>
        <button type="button" class="btn">Eliminar</button>
        <button type="button" class="btn">Modificar</button>
    </div>

    <table class="tabla" id="tabla"></table>


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Understood</button>
                </div>
            </div>
        </div>
    </div>

<img src="./banner.png" class="img-fluid" alt="">

</body>
</html>
