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
import java.sql.Timestamp;
import model.UserAccount;
import service.InterfaceService.IUserAccountService;
import service.UserAccountService;
import utils.OTPTracker;
import utils.SessionUtil;
import utils.TimestampHandler;

/**
 *
 * @author Admin
 */
public class VerifyCode extends HttpServlet {

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
            out.println("<title>Servlet VerifyCode</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerifyCode at " + request.getContextPath() + "</h1>");
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
        IUserAccountService uAService = new UserAccountService();
        TimestampHandler timeH = new TimestampHandler();
        UserAccount user = (UserAccount) SessionUtil.getInstance().getValue(request, "user");
        String authCode = request.getParameter("otpCode");

        if (user == null || authCode == null) {
            // Handle missing session or authentication code
            // Redirect to an error page or display an error message
            return;
        }
       
        if (!timeH.isExpired(user.getEmailCreatedTime())) {

            if (user.getEmailConfirmationCode().equals(authCode)) {
                uAService.setActivatedAccount(user);
                uAService.setUserAccountRole(user, "CLIENT");
                response.sendRedirect(request.getContextPath() + "/frontend/views/client/homepage.jsp");
            } else {
                handleInvalidAuthCode(request, response, user);
            }
        } else {
            String expiryMess = "expired";
            int resendMessCode = 500;
            request.setAttribute("resendMessCode", resendMessCode);
            request.setAttribute("expiryMess", expiryMess);
            request.setAttribute("resendMessCode", resendMessCode);
            request.getRequestDispatcher("frontend/views/client/homepage.jsp").forward(request, response);

        }

    }


    private void handleInvalidAuthCode(HttpServletRequest request, HttpServletResponse response, UserAccount user) throws ServletException, IOException {
        OTPTracker.inputNewOtp(user);

        if (OTPTracker.isMaxAttempts(user)) {
            int resendMessCode = 500;
            request.setAttribute("resendMessCode", resendMessCode);
        } else {
            int numsOfFails = OTPTracker.getNumsOfAttempts(user);
            request.setAttribute("numsOfFails", numsOfFails);
        }
        request.getRequestDispatcher("/frontend/views/client/auth/verification.jsp").forward(request, response);
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
