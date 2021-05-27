package sos.sisho.myFirstServlet.servlet.serversForTeam;

import controllers.controller.ControllerForFaculty;
import controllers.controller.ControllerForTeam;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/team.do")

public class TeamServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       request.setAttribute("faculties", ControllerForFaculty.ControllerForReadFacultyList());
       request.setAttribute("teams", ControllerForTeam.ControllerForReadTeamList());
        request.getRequestDispatcher("WEB-INF/views/team.jsp").forward(request, response);
    }
}
