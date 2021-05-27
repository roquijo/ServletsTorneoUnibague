package sos.sisho.myFirstServlet.servlet.servletsForFaculty;

import client.dto.Faculty;
import client.dto.Player;
import controllers.controller.ControllerForFaculty;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(urlPatterns = "/modify-faculty.do")
public class ModifyFacultyServlet extends HttpServlet {

    public Faculty getFaculty(int idFaculty){

        List<Faculty> lista= ControllerForFaculty.ControllerForReadFacultyList();

        Faculty add = lista.stream()
                .filter(list -> list.getIdFaculty() == (idFaculty))
                .collect(Collectors.toList()).get(0);

        return  add;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idFaculty = Integer.parseInt(request.getParameter("idFaculty"));

        Faculty add = (Faculty) getFaculty(idFaculty);
        
        request.setAttribute("update", add);
        ControllerForFaculty.ControllerForUpdateFaculty(add);
        request.setAttribute("faculties", ControllerForFaculty.ControllerForReadFacultyList());
        request.getRequestDispatcher("WEB-INF/views/faculty.jsp").forward(request, response);



    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idFaculty = Integer.parseInt(request.getParameter("txtIdModificarFacultad"));
        String name = request.getParameter("txtNuevoNombreFacultad");
        String code = request.getParameter("txtNuevoCodigoFacultad");

        Faculty add = new Faculty(idFaculty, name, code, "imageFaculty");
        ControllerForFaculty.ControllerForUpdateFaculty(add);
        response.sendRedirect("faculty.do");
    }
}
