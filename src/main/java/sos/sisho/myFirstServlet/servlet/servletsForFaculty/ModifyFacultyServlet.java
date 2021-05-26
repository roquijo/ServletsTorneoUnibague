package sos.sisho.myFirstServlet.servlet.servletsForFaculty;

import client.dto.Faculty;
import client.dto.Player;
import controllers.controller.ControllerForFaculty;
import sos.sisho.myFirstServlet.todo.service.TodoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/modify-player.do")
public class ModifyFacultyServlet extends HttpServlet {

    private static TodoService todoService = new TodoService();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idFaculty = Integer.parseInt(request.getParameter("txtIdFacultad"));
        String name = request.getParameter("txtNuevoNombreFacultad");
        String code = request.getParameter("txtNuevoCodigoFacultad");
        
        Faculty add = new Faculty(idFaculty, name, code, "imageFaculty");
        ControllerForFaculty.ControllerForUpdateFaculty(add);
        response.sendRedirect("faculty.do");
    }
}
