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

        String datatype = request.getParameter("datatype");

        if (datatype.equals("delete")) {
            String id = request.getParameter("id");

            UserDAO dao = new UserDAOImpl();
            dao.deleteUserDAO(id);

            response.sendRedirect("userlist");

        } else if (datatype.equals("edit")) {

            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int level = Integer.parseInt(request.getParameter("level"));
            User u = new User(username, id, password, level);

            UserDAO dao = new UserDAOImpl();

     

            dao.updateUserDAO(u);

            response.sendRedirect("View/admin_main.jsp");
        } else {
            
           
                
                

            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            int level = Integer.parseInt(request.getParameter("level"));
            User u = new User(username, id, password, level);

            UserDAO dao = new UserDAOImpl();

           

            dao.updateUserDAO(u);
            
            
            
          if (level==1) {
            response.sendRedirect("View/admin_main.jsp");
         } else  if (level==2) {    
            response.sendRedirect("View/manager_main.jsp");
        }else {    
            response.sendRedirect("View/staff_main.jsp");
        }
        
        }

    }
}
