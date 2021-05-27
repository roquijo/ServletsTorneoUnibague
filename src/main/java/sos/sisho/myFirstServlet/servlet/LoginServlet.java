package sos.sisho.myFirstServlet.servlet;

import sos.sisho.myFirstServlet.user.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns =  "/login.do")
public class LoginServlet  extends HttpServlet {

    private  final UserService userService = new UserService();
    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("user");
        String password = request.getParameter("password");

        boolean userValid = userService.isUserValid(user,password);

        if( userValid){
            request.getSession().setAttribute("user", user);
            response.sendRedirect("principal.do");

        }
        else{
            request.setAttribute("errorMessage", "Invalid Credentials");
            request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
        }
    }
}
