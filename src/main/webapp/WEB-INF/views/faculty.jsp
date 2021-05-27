<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Facultades</title>
    <link href="resources/faculty.css" rel="StyleSheet" type="text/css">

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
            <h2 text-align="center">Agregar Facultad</h2>
            <form action="add-faculty.do" method="post" class="form-control">
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

                <br> <br>

                <button type="submit" class="btn btn-success">Agregar</button>

            </form>
        </div>

        <div class="col">
            <h2>Modificar Facultad</h2>
            <form action="modify-faculty.do" method="post" class="form-control">
                <hr>

                <label>
                    Identificador de la Facultad :
                    <input type="text" name="txtIdModificarFacultad" value= "${update.idFaculty}" readonly="readonly" class="form-control"/>

                </label>

                <label>
                    Nuevo nombre :
                    <input type="text" name="txtNuevoNombreFacultad" value= "${update.name}" class="form-control"/>

                </label>

                <label>
                    Nuevo Codigo :
                    <input type="text" name="txtNuevoCodigoFacultad" value="${update.code}" class="form-control"/>

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
        <th scope="col">Delete</th>
        <th scope="col">Update</th>
    </tr>
    </thead>
    <tbody>

        <c:forEach items="${faculties}" var="facul">
        <tr>
                <td>${facul.name}</td>
                <td>${facul.code}</td>
                <td>${facul.idFaculty}</td>
                <td><a href="delete-faculty.do?idFaculty=${facul.idFaculty}">Delete</a></td>
                <td><a href="modify-faculty.do?idFaculty=${facul.idFaculty}">Update</a></td>
        </tr>
        </c:forEach>

    </tbody>
</table>

</body>
</html>