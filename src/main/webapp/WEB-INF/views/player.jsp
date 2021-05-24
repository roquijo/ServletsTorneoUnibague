
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Jugadores</title>

    <style>

        .tabla
        {
            background-color: lightblue;
            text-align: center;
            border-collapse: collapse;
            width: 100%;
            margin-top: 0.5%;
            margin-right: 0;
            padding: 0;
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

        let players = [["Juan Esteban Gomez",2220191007,19, "Deportivo Tapitas", "Delantero"], ["Juan Pablo Meneses",2220191009,19, "100 de Cilantro", "Arquero"], ["Jorge Eliecer Rojas",2220191003,19, "Tinto Frio", "Defensa"]]

        window.onload = function generarTabla(){

            let list = "<thead><tr><th>iter</th><th>Nombre</th><th>Id</th><th>Edad</th><th>Equipo</th><th>Posicion</th></tr></thead><tbody>"
            for(let i = 0 ; i < players.length ; i++){
                list+="<tr><td style='width: 100px;text-align: left;'>" +i+ "</td>";
                list+="<td style='width: 100px;text-align: left;'>" + players[i][0] + "</td>";
                list+="<td style='width: 100px;text-align: left;'>" + players[i][1] + "</td>";
                list+="<td style='width: 100px;text-align: left;'>" + players[i][2]+ "</td>";
                list+="<td style='width: 100px;text-align: left;'>" + players[i][3] + "</td>";
                list+="<td style='width: 100px;text-align: left;'>" + players[i][4]+ "</td>";
                list+="</tr>";
            }
            document.getElementById("tabla").innerHTML = list;
        }

    </script>

</head>
<body>
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
        <button type="button" class="btn">Agregar</button>
        <button type="button" class="btn">Eliminar</button>
        <button type="button" class="btn">Modificar</button>
    </div>

    <table class="tabla" id="tabla"></table>

</body>
</html>
