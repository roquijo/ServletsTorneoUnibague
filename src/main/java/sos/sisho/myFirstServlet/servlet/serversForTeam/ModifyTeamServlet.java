package sos.sisho.myFirstServlet.servlet.serversForTeam;



import client.dto.Team;
import controllers.controller.ControllerForTeam;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(urlPatterns = "/modify-team.do")
public class ModifyTeamServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("name");

        List<Team> lista = ControllerForTeam.ControllerForReadTeamList();


        Team add = lista.stream()
                .filter(list -> list.getName().equals(name))
                .collect(Collectors.toList()).get(0);

        request.setAttribute("update", add);
        ControllerForTeam.ControllerForUpdateTeam(add);
        request.setAttribute("teams", ControllerForTeam.ControllerForReadTeamList());
        request.getRequestDispatcher("WEB-INF/views/team.jsp").forward(request, response);



    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String capitan = request.getParameter("txtNuevoCapitan");
        String name = request.getParameter("txtNameToModify");
        int id = Integer.parseInt(request.getParameter("txtidFaculty"));
        
        Team modifiedTeam = new Team( name, capitan, "imageTeam",id);
        ControllerForTeam.ControllerForUpdateTeam(modifiedTeam);
        response.sendRedirect("team.do");

    }
}
