package sos.sisho.myFirstServlet.servlet.servletsForPlayer;

import controllers.controller.ControllerForFaculty;
import controllers.controller.ControllerForPlayer;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete-player.do")
public class DeletePlayerServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idPlayer");
        int idPlayer = Integer.parseInt(id);
        ControllerForPlayer.ControllerForDeletePlayer(idPlayer);
        response.sendRedirect("player.do");
    }
}
