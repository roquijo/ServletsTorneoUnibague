package sos.sisho.myFirstServlet.servlet.serversForTeam;



import controllers.controller.ControllerForTeam;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/delete-team.do")
public class DeleteTeamServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        
        ControllerForTeam.ControllerForDeleteTeam(name);
        response.sendRedirect("team.do");
    }
}
