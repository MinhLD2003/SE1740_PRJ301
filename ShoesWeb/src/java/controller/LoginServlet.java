/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.UserAccount;
import service.InterfaceService.IUserAccountService;
import service.UserAccountService;
import utils.CodeProcessing;
import utils.SessionUtil;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
    private IUserAccountService uAService = new UserAccountService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String isRemembered = request.getParameter("remember");

        UserAccount foundAccount = uAService.getUserByUserName(username);

        CodeProcessing codeProcess = new CodeProcessing();
        if (foundAccount == null) {
            String failLoginMess = "fail";
            request.setAttribute("failLoginMess", failLoginMess);
            request.getRequestDispatcher("/frontend/views/client/auth/login.jsp").forward(request, response);
        } else {
            if (codeProcess.authenticate(password, foundAccount.getPasswordHash(), foundAccount.getPasswordSalt())) {
                SessionUtil.getInstance().putValue(request, "user", foundAccount);

                if (foundAccount.getRoleName().equals("ADMIN")) {
                    response.sendRedirect(request.getContextPath() + "/admin-home");
                } else if (foundAccount.getRoleName().equals("CLIENT")) {
                    response.sendRedirect(request.getContextPath() + "/home");
                }

                //------------------- Cookie -----------------------
                Cookie usernameCookie = new Cookie("username", username);
                Cookie passwordCookie = new Cookie("password", password);
                Cookie rememberCookie = new Cookie("isRemembered", isRemembered);
                if (isRemembered != null) {
                    usernameCookie.setMaxAge(60 * 60 * 24);
                    passwordCookie.setMaxAge(60 * 60 * 24);
                    rememberCookie.setMaxAge(60 * 60 * 24);
                } else {
                    usernameCookie.setMaxAge(0);
                    passwordCookie.setMaxAge(0);
                    rememberCookie.setMaxAge(0);
                }
                response.addCookie(usernameCookie);
                response.addCookie(passwordCookie);
                response.addCookie(rememberCookie);

            } else {
                String failLoginMess = "fail";
                request.setAttribute("failLoginMess", failLoginMess);
                request.getRequestDispatcher(request.getContextPath() + "/frontend/views/client/auth/login.jsp").forward(request, response);
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
