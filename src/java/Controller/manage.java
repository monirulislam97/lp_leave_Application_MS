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
@WebServlet(name = "manage", urlPatterns = {"/manage"})
public class manage extends HttpServlet {

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
        String datatype = request.getParameter("datatype");

        PAdao dao = new PAdaoImpl();
        List<PreviousApplication> PreAppList = dao.getAllPAdao();

        request.getSession().setAttribute("PreAppList", PreAppList); //Session scope
        // request.getServletContext().setAttribute("ul", ul);
        //  NewApplication naa = dao.getNAdao("1004");

        //request.getServletContext().setAttribute("naa", naa); //Session scope
        // request.getServletContext().setAttribute("ul", ul);
        NAdao ado = new NAdaoImpl();
        List<NewApplication> NewAppList = ado.getAllNAdao();

        request.getSession().setAttribute("NewAppList", NewAppList); //Session scope

        // response.sendRedirect("View/leave_applications.jsp");
        request.getRequestDispatcher("/View/Approve.jsp").forward(request, response);
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

        request.getRequestDispatcher("/View/Approve.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
