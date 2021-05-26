package sos.sisho.myFirstServlet.servlet.servletsForFaculty;


import client.collection.NodeList;
import client.dto.Faculty;
import controllers.controller.ControllerForFaculty;
import sos.sisho.myFirstServlet.user.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns =  "/faculty.do")
public class FacultyServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("faculties", ControllerForFaculty.ControllerForReadFacultyList());
        request.getRequestDispatcher("WEB-INF/views/faculty.jsp").forward(request, response);
    }
}
