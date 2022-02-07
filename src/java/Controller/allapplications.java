/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.NAdao;
import DAO.NAdaoImpl;
import DAO.PAdao;
import DAO.PAdaoImpl;
import Model.NewApplication;
import Model.PreviousApplication;
import Model.User;
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
 * @author User
 */
@WebServlet(name = "allapplications", urlPatterns = {"/allapplications"})
public class allapplications extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet allapplications</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet allapplications at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String datatype = request.getParameter("datatype");

        PAdao dao = new PAdaoImpl();
        List<PreviousApplication> PreAppList = dao.getAllPAdao();

        request.getSession().setAttribute("PreAppList", PreAppList); //Session scope

        NAdao ado = new NAdaoImpl();
        List<NewApplication> NewAppList = ado.getAllNAdao();

        request.getSession().setAttribute("NewAppList", NewAppList); //Session scope

        if (datatype.equals("search")) {

            String staffID = request.getParameter("staffID");
            request.getSession().setAttribute("staffID", staffID); //Session scope
            request.getRequestDispatcher("/View/view_search_staff.jsp").forward(request, response);
        } else {

            // response.sendRedirect("View/leave_applications.jsp");
            request.getRequestDispatcher("/View/allreport.jsp").forward(request, response);
        }

    }

}
