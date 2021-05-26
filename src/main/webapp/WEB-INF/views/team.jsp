<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Team</title>

    <style>

        .tabla
        {
            background-color: lightblue;
            text-align: center;
            border-collapse: collapse;
            width:100%;
            margin-top: 0.5%;
            margin-right: 0;
            padding: 0;
        }

        th, td{
            padding: 20px;
            border: solid 1px black;
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

        ul
        {
            margin-left: 0;
        }

        .btn
        {
            background-color: #06bbc2;
            border: 1px solid black;
        }

    </style>


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
                <button class="btn btn-outline-success" type="submit">Buscar</button>
            </form>
        </div>
    </div>
</nav>

    <!-- opciones -->

    <div class="container">
        <div class="row">
            <div class="col">
                 <h2>Agregar Equipo</h2>
                 <form action="" method="post" class="form-control">
                    <hr>

                     <label>
                         Nombre :
                         <input type="text" name="txtNombreEquipo" class="form-control"/>
                     </label>

                        <label>
                            Capitan :
                            <input type="text" name="txtCapitan" class="form-control"/>
                        </label>

                        <label>
                            Id de la Facultad :
                            <input type="text" name="txtIdFacultad" class="form-control"/>
                        </label>

                        <label>
                            Ruta Imagen :
                            <input type="text" name="txtRutaImagenEquipo" class="form-control"/>
                        </label>

                        <button type="submit" class="btn btn-success">Agregar</button>

                    </form>
            </div>
            <div class="col">
               <h2>Modificar Equipo</h2>
                <form action="" method="post" class="form-control">
                    <hr>

                     <label>
                         Identificador :
                         <input type="text" name="txtIdModificarEquipo" class="form-control"/>

                    </label>

                    <label>
                         Nuevo nombre :
                         <input type="text" name="txtNuevoNombreEquipo" class="form-control"/>

                    </label>

                    <label>
                        Nuevo Capitan :
                        <input type="text" name="txtNuevoCapitan" class="form-control"/>
                    </label>

                    <button type="submit" class="btn btn-warning">Modificar</button>

                </form>

            </div>
        </div>
    </div>

    <table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Captain</th>
        <th scope="col">Id Faculty</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${teams}" var="team">
        <tr>
            <td>${team.name}</td>
            <td>${team.captain}</td>
            <td>${team.idFaculty}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
