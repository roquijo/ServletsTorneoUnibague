<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

    <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
    <title>Jugadores</title>

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
                            <select class="form-select" name="equipoJugador" aria-label="Default select example">
                                <option selected>Open this select menu</option>
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
                         <input type="text" name="txtIdModificarJugador" value="${update.idPlayer}" readonñl class="form-control"/>

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
                <td><a href="modify-player.do?idPlayer=${player.idPlayer}">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</body>
</html>
