<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/navigation.jspf"%>

<html>
<head>

    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Facultades</title>
    <!--<link rel="stylesheet" type="text/css" href="../resources/faculty.css">-->

    <style>
        .table
        {
            background-color: lightblue;
            text-align: center;
            border-collapse: collapse;
            width:100%;
            margin-top: 0.5%;
        }

        th, td
        {
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
    </style>
</head>

<body>
<!--NavBar-->

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

<table class="table" id="tabla">
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