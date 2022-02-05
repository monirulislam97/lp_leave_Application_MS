/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.NAdao;
import DAO.NAdaoImpl;
import Model.NewApplication;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Monir
 */
@WebServlet(name = "application_status", urlPatterns = {"/application_status"})
public class application_status extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          NAdao dao = new NAdaoImpl();
          List<NewApplication> NewAppList = dao.getAllNAdao();
    
          request.getSession().setAttribute("NewAppList", NewAppList); //Session scope
         // request.getServletContext().setAttribute("ul", ul);

        
         // response.sendRedirect("View/leave_applications.jsp");
          request.getRequestDispatcher("/View/leave_applications.jsp").forward(request, response);

        }
    }

 