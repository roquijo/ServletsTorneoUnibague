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
                            <input type="text" name="equipoJugador" class="form-control"/>
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
                         <input type="text" name="txtIdModificarJugador" value="${idPlayer}" class="form-control"/>

                    </label>

                    <label>
                         Nuevo nombre :
                         <input type="text" name="txtNuevoNombreJugador" value="${name}" class="form-control"/>

                    </label>

                    <label>
                        Nueva Posicion :
                        <input type="text" name="txtNuevaPosicionJugador" value="${position}" class="form-control"/>
                    </label>

                    <label>
                        Nueva Edad :
                        <input type="text" name="txtNuevaEdadJugador" value ="${age}"class="form-control"/>
                     </label>

                     <br> <br>

                    <button type="submit"  class="btn btn-warning">Modificar</button>

                </form>

            </div>
        </div>
    </div>

    <table class="table">
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
                <td><a href="player.do?idPlayer=${player.idPlayer},name=${player.name},position=${player.position},nameOfTeam=${player.nameOfTeam},age=${player.age}">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>
