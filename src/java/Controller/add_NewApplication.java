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
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Monir
 */
@WebServlet(name = "add_NewApplication", urlPatterns = {"/add_NewApplication"})
public class add_NewApplication extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String name = request.getParameter("name");
            String id= request.getParameter("id");
            String Sdate= request.getParameter("start_date");
            String Edate= request.getParameter("end_date");
            int days= Integer.parseInt(request.getParameter("numdays"));
            String status= request.getParameter("status");
            String reason= request.getParameter("reason");
            NewApplication na = new NewApplication(name, id, Sdate, Edate,days,status,reason);
            

       
            NAdao dao = new NAdaoImpl();
            dao.insertNAdao(na);

            response.sendRedirect("View/staff_main.html");
        
        }
    }