package sos.sisho.myFirstServlet.servlet.servletsForFaculty;

import client.dto.Faculty;
import client.dto.Player;
import controllers.controller.ControllerForFaculty;
import controllers.controller.ControllerForPlayer;
import sos.sisho.myFirstServlet.todo.service.TodoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/add-faculty.do")
public class AddFacultyServlet extends HttpServlet {

    private static TodoService todoService = new TodoService();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idFaculty = Integer.parseInt(request.getParameter("txtIdModificarFacultad"));
        String name = request.getParameter("txtNombreFacultad");
        String code = request.getParameter("txtCodigoFacultad");
        
        Faculty add = new Faculty(idFaculty, name, code, "imageFaculty");
        ControllerForFaculty.ControllerForAddFaculty(add);
        response.sendRedirect("faculty.do");
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
