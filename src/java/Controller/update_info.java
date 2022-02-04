
package Controller;

import DAO.UserDAO;
import DAO.UserDAOImpl;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "update_info", urlPatterns = {"/update_info"})
public class update_info extends HttpServlet {


     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int level = Integer.parseInt(request.getParameter("level"));
        User u = new User(username, id, password, level );
       
        UserDAO dao = new UserDAOImpl();
        
        
        request.setAttribute("u", u);

        dao.updateUserDAO(u);
        
//        request.getServletContext().setAttribute("id", id);
//        request.getServletContext().setAttribute("username", username);
//        request.getServletContext().setAttribute("password", password);
//        request.getServletContext().setAttribute("level", level);
//       
//        
//        
//        response.sendRedirect("View/newjsp.jsp");
        
        response.sendRedirect("View/staff_main.html");
        
        }
    }

