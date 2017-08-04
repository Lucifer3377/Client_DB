/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nvmate.userServlets;

import com.navimate.biz.db.BizDbHelper;
import com.navimate.biz.objects.AppUserObject;
import com.navimate.biz.objects.LeadObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sandeep
 */
public class Leads_Manage_process extends HttpServlet {

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
            HttpSession ses = request.getSession(false);
            if (ses.getAttribute("name") == null || ses.getAttribute("name").equals("")) {
                request.setAttribute("error_message", "Login First");
                request.getRequestDispatcher("Navimate_home.jsp").forward(request, response);
            } else {

                String status = request.getParameter("status");
                int Team_ID = (Integer) ses.getAttribute("Team_ID");
                //ArrayList<LeadObject> lead = null;

                //lead = BizDbHelper.leadsTable.GetAll();
                switch (status) {
                    case "Delete": {
                        int id = Integer.parseInt(request.getParameter("id"));

                        ArrayList<LeadObject> lead = BizDbHelper.leadsTable.GetAll();
                        LeadObject lead_object = BizDbHelper.leadsTable.GetLeadById(id);
                        for (LeadObject user : lead) {
                            if (user.id == id) {
                                lead.remove(user);
                                // BizDbHelper.leadsTable.Remove(id);

                                break;
                            }
                        }
                    }
                    case "Save": {
                        ArrayList<LeadObject> lead_object = BizDbHelper.leadsTable.GetAll();
                        for (LeadObject obj : lead_object) {
                                BizDbHelper.leadsTable.Update(obj);
                        }
                    }

                }

            }
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
        processRequest(request, response);
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
