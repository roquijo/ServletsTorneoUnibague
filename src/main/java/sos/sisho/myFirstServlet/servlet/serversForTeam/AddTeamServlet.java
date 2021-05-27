package sos.sisho.myFirstServlet.servlet.serversForTeam;


import client.dto.Team;
import controllers.controller.ControllerForTeam;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/add-team.do")
public class AddTeamServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String name = request.getParameter("txtNombreEquipo");
        String captain = request.getParameter("txtCapitan");
        int idFaculty= Integer.parseInt(request.getParameter("idFaculty"));
        Team add = new Team(name, captain, "imageTeam", idFaculty);
        ControllerForTeam.ControllerForAddTeam(add);
        response.sendRedirect("team.do");
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
