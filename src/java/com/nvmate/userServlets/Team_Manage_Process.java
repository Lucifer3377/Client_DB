/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nvmate.userServlets;

import com.nvmate.Helper.DBHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sai_Kameswari
 */
public class Team_Manage_Process extends HttpServlet {

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

                switch (status) {
                    case "Active": {
                        long id = Long.parseLong(request.getParameter("id"));

                        String upquery = "update Team_Details set Approve_Status='Active' where contact=?";
                        PreparedStatement ps = null;
                        try {
                            ps = DBHelper.preparedstmtInstance(upquery);
                            ps.setLong(1, id);
                            ps.executeUpdate();
                        } catch (SQLException ex) {
                            //Logger.getLogger(Team_Manage_Process.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        break;
                    }

                    case "Delete": {
                        long id = Long.parseLong(request.getParameter("id"));

                        String delquery = "delete from Team_Details where contact=?";
                        PreparedStatement ps = null;
                        try {
                            ps = DBHelper.preparedstmtInstance(delquery);
                            ps.setLong(1, id);
                            ps.executeUpdate();
                        } catch (SQLException ex) {
                            //Logger.getLogger(Team_Manage_Process.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        break;
                    }

                    default:
                        break;
                }
                Long Team_ID = (long) ses.getAttribute("Team_ID");

                String sqlQuery = "select Rep_Name, Contact, Approve_Status from Team_Details where Team_ID=?";

                try {

                    PreparedStatement preparedStatement = DBHelper.preparedstmtInstance(sqlQuery);
                    preparedStatement.setLong(1, Team_ID);
                    ResultSet rs = preparedStatement.executeQuery();
                    request.setAttribute("resultset", rs);
                    request.getRequestDispatcher("Team_Manage_Display.jsp").forward(request, response);
                } catch (SQLException ex) {
                    request.setAttribute("error_message", "Error fetching details from Database");
                    request.getRequestDispatcher("user_home.jsp").forward(request, response);
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
