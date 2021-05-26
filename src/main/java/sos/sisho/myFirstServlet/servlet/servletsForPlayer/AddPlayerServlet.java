package sos.sisho.myFirstServlet.servlet.servletsForPlayer;

import client.dto.Player;
import controllers.controller.ControllerForPlayer;
import sos.sisho.myFirstServlet.todo.service.TodoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/add-player.do")
public class AddPlayerServlet extends HttpServlet {

    private static TodoService todoService = new TodoService();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombreJugador");
        System.out.println(name);
        String position = request.getParameter("posicionJugador");
        int age = Integer.parseInt(request.getParameter("edad"));
        int idPlayer = Integer.parseInt(request.getParameter("idJugador"));
        String nameTeam = request.getParameter("equipoJugador");
        Player add = new Player(idPlayer, name,position,age,nameTeam, "");
        System.out.println(add);
        ControllerForPlayer.ControllerForAddPlayer(add);
        response.sendRedirect("player.do");
    }
/*
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        System.out.println(name);
        String position = request.getParameter("position");
        int age = Integer.parseInt(request.getParameter("age"));
        int idPlayer = Integer.parseInt(request.getParameter("idPlayer"));
        String nameTeam = request.getParameter("team");
        Player add = new Player(idPlayer, name,position,age,nameTeam, "");
        System.out.println(add);
        ControllerForPlayer.ControllerForAddPlayer(add);
        response.sendRedirect("player.do");
    }
 */
}
