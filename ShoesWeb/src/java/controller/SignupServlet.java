/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.UserAccount;
import service.UserAccountService;
import utils.CodeProcessing;
import utils.EmailSending;
import utils.SessionUtil;
import utils.TimestampHandler;

/**
 *
 * @author Admin
 */
public class SignupServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignupServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServlet at " + request.getContextPath() + "</h1>");
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
        UserAccountService uAService = new UserAccountService();
        TimestampHandler timeHandler = new TimestampHandler();
        EmailSending emailSending = new EmailSending();
        // get form input data 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String fullname = request.getParameter("fullname");

        //-------------------------------
        UserAccount user = new UserAccount(username, email, password, fullname, phone, address);

        // Check if email address is already in use
        if (uAService.getUserByEmailAddress(email) != null) {
            String invalidAlert = "inuse";
            request.setAttribute("invalidAlert", invalidAlert);
            request.getRequestDispatcher("/frontend/views/client/auth/signup.jsp").forward(request, response);
        } else {
            // Generate email confirmation code and set expiration
            CodeProcessing codeProcessing = new CodeProcessing();
            user.setEmailConfirmationCode(codeProcessing.getOtpCode());

            boolean isSent = emailSending.sendEmail(user);
            if (isSent) {
                timeHandler.setEmailCreatedTime(user);
                uAService.insertUserAccount(user);
                SessionUtil.getInstance().putValue(request, "user", user);
                //-----------------------------
                response.sendRedirect(request.getContextPath() + "/frontend/views/client/auth/verification.jsp");
            } else {
                // Handle email sending failure
                // Redirect to an error page or display an error message
            }
        }

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
