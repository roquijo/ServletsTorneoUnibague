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

            window.onload = function generarTabla(){
            let list = "<thead><tr><th>Nombre</th><tbody>"

            document.getElementById("tabla").innerHTML = list;
        }

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

<div class="container">
    <div class="row">
        <div class="col">
            <h2>Agregar Facultad</h2>
            <form action="" method="post" class="form-control">
                <hr>

                <label>
                    Nombre :
                    <input type="text" name="txtNombreFacultad" class="form-control"/>
                </label>

                <label>
                    Codigo :
                    <input type="text" name="txtCodigoFacultad" class="form-control"/>
                </label>

                <label>
                    Identificador :
                    <input type="text" name="txtIdFacultad" class="form-control"/>
                </label>

                <label>
                    Ruta Imagen :
                    <input type="text" name="txtRutaImagenFacultad" class="form-control"/>
                </label>
                <br> <br>

                <button type="submit" class="btn btn-success">Agregar</button>

            </form>
        </div>

        <div class="col">
            <h2>Eliminar Facultad</h2>
            <form action="" method="post" class="form-control">
                <hr>

                <label>
                    Identificador :
                    <input type="text" name="FacultadtxtIdEliminar" class="form-control"/>

                </label>
                <br> <br>

                <button type="submit" class="btn btn-danger">Eliminar</button>


            </form>
        </div>

        <div class="col">
            <h2>Modificar Facultad</h2>
            <form action="" method="post" class="form-control">
                <hr>

                <label>
                    Identificador :
                    <input type="text" name="txtIdModificarFacultad" class="form-control"/>

                </label>

                <label>
                    Nuevo nombre :
                    <input type="text" name="txtNuevoNombreFacultad" class="form-control"/>

                </label>

                <label>
                    Nuevo Codigo :
                    <input type="text" name="txtNuevoCodigoFacultad" class="form-control"/>

                </label>
                <br> <br>

                <button type="submit" class="btn btn-warning">Modificar</button>

            </form>

        </div>
    </div>
</div>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Code</th>
        <th scope="col">Id Faculty</th>
    </tr>
    </thead>
    <tbody>

        <c:forEach items="${faculties}" var="facul">
        <tr>
                <td>${facul.name}</td>
                <td>${facul.code}</td>
                <td>${facul.idFaculty}</td>
        </tr>
        </c:forEach>

    </tbody>
</table>

</body>
</html>