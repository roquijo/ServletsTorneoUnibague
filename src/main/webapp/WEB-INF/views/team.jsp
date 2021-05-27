<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/navigation.jspf"%>
<html>
<head>
    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Team</title>
    <!--<link href="resources/team.css" rel="StyleSheet" type="text/css">-->

    <style>
        .table
        {
            background-color: lightblue;
            text-align: center;
            border-collapse: collapse;
            width:100%;
            margin-top: 0.5%;
            margin-right: 0;
            padding: 0;
        }

        th, td
        {
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

    <!-- opciones -->

    <div class="container">
        <div class="row">
            <div class="col">
                 <h2>Agregar Equipo</h2>
                 <form action="add-team.do" method="post" class="form-control">
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
                            <select class="form-select" name="idFaculty" aria-label="Default select example">
                                <option selected>Facultades :</option>
                                <c:forEach items="${faculties}" var="facul">
                                        <option>${facul.idFaculty}</option>
                                </c:forEach>
                            </select>
                        </label>

                        <button type="submit" class="btn btn-success">Agregar</button>

                    </form>
            </div>
            <div class="col">
               <h2>Modificar Equipo</h2>
                <form action="modify-team.do" method="post" class="form-control">
                    <hr>
                    <label>
                        Nombre del equipo :
                        <input type="text" value = "${update.name}" readonly="readonly" name="txtNameToModify" class="form-control"/>
                    </label>

                    <label>
                        Nuevo Capitan :
                        <input type="text" value = "${update.captain}" name="txtNuevoCapitan" class="form-control"/>
                    </label>

                    <label>
                        id Facultad Perteneciente :
                        <input type="text" value = "${update.idFaculty}" readonly="readonly"  name="txtidFaculty" class="form-control"/>
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
        <th scope="col">Delete</th>
        <th scope="col">Update</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${teams}" var="team">
        <tr>
            <td>${team.name}</td>
            <td>${team.captain}</td>
            <td>${team.idFaculty}</td>
            <td><a href="delete-team.do?name=${team.name}">Delete</a></td>
            <td><a href="modify-team.do?name=${team.name}">Update</a></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
