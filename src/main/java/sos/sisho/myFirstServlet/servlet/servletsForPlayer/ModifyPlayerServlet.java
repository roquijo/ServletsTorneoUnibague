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


@WebServlet(urlPatterns = "/modify-player.do")
public class ModifyPlayerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        System.out.println(name);
        String position = request.getParameter("position");
        int age = Integer.parseInt(request.getParameter("age"));
        int idPlayer = Integer.parseInt(request.getParameter("idPlayer"));
        String nameTeam = request.getParameter("nameOfTeam");
        Player add = new Player(idPlayer, name,position,age,nameTeam, "");
        request.setAttribute("update", add);
        System.out.println(add);
        //ControllerForPlayer.ControllerForUpdatePlayer(add);
        request.getRequestDispatcher("WEB-INF/views/player.jsp").forward(request, response);
    }
}
