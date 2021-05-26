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
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(urlPatterns = "/modify-player.do")
public class ModifyPlayerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idPlayer = Integer.parseInt(request.getParameter("idPlayer"));

        List<Player> lista= ControllerForPlayer.ControllerForReadPlayerList();

        Player add = lista.stream()
                .filter(list -> list.getIdPlayer() == (idPlayer))
                .collect(Collectors.toList()).get(0);

        request.setAttribute("update", add);
        ControllerForPlayer.ControllerForUpdatePlayer(add);
        request.setAttribute("players", ControllerForPlayer.ControllerForReadPlayerList());
        request.getRequestDispatcher("WEB-INF/views/player.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("txtNuevoNombreJugador");
        System.out.println(name);
        String position = request.getParameter("txtNuevaPosicionJugador");
        int age = Integer.parseInt(request.getParameter("txtNuevaEdadJugador"));
        int idPlayer = Integer.parseInt(request.getParameter("txtIdModificarJugador"));
        String nameTeam = request.getParameter("equipoJugador");
        Player add = new Player(idPlayer, name,position,age,nameTeam, "");
        System.out.println(add);
        ControllerForPlayer.ControllerForUpdatePlayer(add);
        response.sendRedirect("player.do");

    }
}
