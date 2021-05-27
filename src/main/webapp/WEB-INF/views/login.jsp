<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>

        <link href="webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
        <title>Torneo De Futbol Unibague</title>
        <link href="resources/login.css" rel="StyleSheet" type="text/css">

    </head>

    <body class="text-center">

        <main class ="singin">

            <form  method="post">

                <img src="https://static.vecteezy.com/system/resources/previews/001/199/877/original/silhouettes-soccer-png.png" id = "imgLogin" class="imgLogin" alt="imgLogin">
                <h1 class="h2 mb-2 fw-normal">IDENTIFIQUESE</h1>
                <p style="color: red"> ${errorMessage}</p>
                <div style="width: 30%">
                    <label>Usuario:</label>
                </div>
                <div class = "form-floating" >
                    <input type="user" name="user" value="jorge" style="WIDTH: 270px ">
                </div>

                <div style="width: 30%">
                    <label>Contraseña:</label>
                </div>
                <div class = "form-floating" >
                     <input type="password" name="password" value="123" style="WIDTH: 270px" >
                </div>
                <div class="btn">
                        <button class="btnIngreso btn-outline-danger" type="submit" value="Login">Confirmar</button>
                </div>
            </form>
        </main>
    </body>
    </html>
