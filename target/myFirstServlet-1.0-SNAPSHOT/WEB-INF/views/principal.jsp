<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>Pagina Principal</title>
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


    <img  src="${pageContext.request.contextPath}/images/banner.png" id="banner" alt="Image" class="img-fluid">

    </body>
    </html>
