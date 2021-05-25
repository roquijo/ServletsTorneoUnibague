<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>Torneo Unibague</title>
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <div class="container-fluid">
            <a class="navbar-brand" href="#">Home</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" role="navigation">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current= "true" href="webapp/WEB-INF/views/faculty.html">Equipos</a>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current= "page" href="faculty.jsp">Jugadores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Acerca de</a>
                    </li>
                </ul>

                <form class="d-flex" style="margin-top:13px;">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Buscar">
                    <button class="btn btn-outline-success" type="submit">Buscar</button>
                </form>
            </div>
        </div>
    </nav>

    <div>
    <h1>Hello ${user}</h1>
    <p>Your Todos are:</p>
    <ol>
        <c:forEach items="${todos}" var="todo">
            <li>${todo.name}<span></span> <a href="delete-todo.do?uuid=${todo.uuid}">Delete</a></li>
        </c:forEach>
    </ol>
    <form action="add-todo.do" method="post">
        <input type="text" name="newTodo">
        <input type="submit" value="Add">
    </form>
    </div>

    <script src="webjars/jquery/3.6.0/src/jquery.js"></script>
    </body>
    </html>
