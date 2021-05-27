package sos.sisho.myFirstServlet.servlet.servletsForPlayer;

import client.dto.Player;
import controllers.controller.ControllerForPlayer;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/add-player.do")
public class AddPlayerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombreJugador");
        System.out.println(name);
        String position = request.getParameter("posicionJugador");
        int age = Integer.parseInt(request.getParameter("edad"));
        int idPlayer = Integer.parseInt(request.getParameter("idJugador"));
        String nameTeam = request.getParameter("equipoJugador");
        Player add = new Player(idPlayer, name,position,age,nameTeam, "");
        ControllerForPlayer.ControllerForAddPlayer(add);
        response.sendRedirect("player.do");
    }
}
