/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.UserAccount;
import service.InterfaceService.IUserAccountService;
import service.UserAccountService;

/**
 *
 * @author Admin
 */
public class UserAccountManagement extends HttpServlet {

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
            out.println("<title>Servlet UserAccountManagement</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserAccountManagement at " + request.getContextPath() + "</h1>");
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
    private IUserAccountService uAServ = new UserAccountService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String redirect = request.getParameter("redirect");
        if (redirect != null && redirect.equals("edit")) {
            String email = request.getParameter("email");
            UserAccount account = uAServ.getUserByEmailAddress(email);
            
            request.setAttribute("account", account);
            request.getRequestDispatcher("/frontend/views/admin/accountedit.jsp").forward(request, response);
        } else {
            List<UserAccount> accountList = uAServ.getAllUserAccount();
            request.setAttribute("accountList", accountList);
            request.getRequestDispatcher("/frontend/views/admin/usermanagement.jsp").forward(request, response);
        }
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
        String action = request.getParameter("action");
        if (action != null && action.equals("edit")) {
            UserAccount user = new UserAccount();
            user.setId(Integer.parseInt(request.getParameter("id")));
            user.setUsername(request.getParameter("username"));
            user.setEmailAddress(request.getParameter("emailaddress"));
            user.setRoleName(request.getParameter("rolename"));
            user.setPhoneNumber(request.getParameter("phone"));
            user.setAddress(request.getParameter("address"));
            user.setFullName(request.getParameter("fullname"));
            System.out.println(user);
            uAServ.editAccount(user);
        } else if (action != null && action.equals("delete")) {
            int userId = Integer.parseInt(request.getParameter("userIdForDelete"));
            System.out.println(userId);
            uAServ.deleteAccount(userId);
            
        }
        response.sendRedirect(request.getContextPath() + "/admin-manage-account");
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
