<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../common/navigation.jspf"%>


<html>
<head>

    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Jugadores</title>

<style>
    .table
    {
        background-color: lightblue;
        text-align: center;
        border-collapse: collapse;
        width: 100%;
        margin-top: 0.5%;
        margin-right: 0;
        padding: 0;
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
    <!-- opciones -->

    <div class="container">
        <div class="row">
            <div class="col">
                 <h2>Agregar Jugador</h2>
                 <form action="add-player.do" method="post" class="form-control">
                    <hr>

                     <label>
                         Nombre :
                         <input type="text" name="nombreJugador" class="form-control"/>
                     </label>

                        <label>
                            identificador :
                            <input type="text" name="idJugador" class="form-control" />
                        </label>

                        <label>
                            Equipo :
                            <select class="form-select" name="equipoJugador" aria-label="Default select example">
                                <option selected>Equipos :</option>
                                <c:forEach items="${teams}" var="team">
                                        <option>${team.name}</option>
                                </c:forEach>
                            </select>
                        </label>

                        <label>
                            Posicion :
                            <input type="text" name="posicionJugador" class="form-control"/>
                        </label>

                        <label>
                            Edad :
                            <input type="text" name="edad" class="form-control"/>
                        </label>
            <br> <br>
                     <button type="submit"  class="btn btn-warning">Agregar</button>
                    </form>
            </div>

            <div class="col">
               <h2>Modificar Jugador</h2>
                <form action="modify-player.do" method="post" class="form-control">
                    <hr>

                     <label>
                         Identificador :
                         <input type="text" name="txtIdModificarJugador" value="${update.idPlayer}" readonly="readonly" class="form-control"/>

                    </label>

                    <label>
                         Nuevo nombre :
                         <input type="text" name="txtNuevoNombreJugador" value="${update.name}" class="form-control"/>

                    </label>

                    <label>
                        Nueva Posicion :
                        <input type="text" name="txtNuevaPosicionJugador" value="${update.position}" class="form-control"/>
                    </label>

                    <label>
                        Nueva Edad :
                        <input type="text" name="txtNuevaEdadJugador" value ="${update.age}"class="form-control"/>
                     </label>

                     <br> <br>

                    <button type="submit"  class="btn btn-warning">Modificar</button>

                </form>

            </div>
        </div>
    </div>

    <table class="table" id="tabla">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Id Player</th>
            <th scope="col">Age</th>
            <th scope="col">Name of team</th>
            <th scope="col">Position</th>
            <th scope="col">Delete</th>
            <th scope="col">Update</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${players}" var="player">
            <tr>
                <td>${player.name}</td>
                <td>${player.idPlayer}</td>
                <td>${player.age}</td>
                <td>${player.nameOfTeam}</td>
                <td>${player.position}</td>
                <td><a href="delete-player.do?idPlayer=${player.idPlayer}">Delete</a></td>
                <td><a href="modify-player.do?idPlayer=${player.idPlayer}">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>
