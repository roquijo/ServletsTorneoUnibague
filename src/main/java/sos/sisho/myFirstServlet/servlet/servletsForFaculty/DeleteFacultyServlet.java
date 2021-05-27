package sos.sisho.myFirstServlet.servlet.servletsForFaculty;

import controllers.controller.ControllerForFaculty;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//Ser
//

@WebServlet(urlPatterns = "/delete-faculty.do")
public class DeleteFacultyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idFaculty");
        int idFacul = Integer.parseInt(id);
        ControllerForFaculty.ControllerForDeleteFaculty(idFacul);
        response.sendRedirect("faculty.do");
    }
}
