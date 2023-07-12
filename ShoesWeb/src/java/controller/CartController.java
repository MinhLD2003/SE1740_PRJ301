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
import model.Cart;
import model.CartLine;
import model.Product;
import service.InterfaceService.IProductService;
import service.ProductService;
import utils.SessionUtil;

/**
 *
 * @author Admin
 */
public class CartController extends HttpServlet {

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
            out.println("<title>Servlet CartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartController at " + request.getContextPath() + "</h1>");
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
    private IProductService IPService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String product_code = request.getParameter("product_code");
        
        String size = request.getParameter("size");
        Product product = IPService.queryProductByCode(product_code);
        Cart cart = null;
        if (SessionUtil.getInstance().containsKey(request, "shoppingcart")) {
            cart = (Cart) SessionUtil.getInstance().getValue(request, "shoppingcart");
        } else {
            cart = new Cart();
            SessionUtil.getInstance().putValue(request, "shoppingcart", cart);
        }
        if (action != null && action.equals("add_item")) {
            CartLine cartLine = new CartLine(product, size);
            cart.addCartLine(cartLine);
            response.sendRedirect(request.getContextPath() + "/frontend/views/client/singleproductpage.jsp");

        } else if (action != null && action.equals("remove_item")) {
            String size_selected = request.getParameter("size");
            cart.removeCartLine(product_code, size_selected);
            
            response.sendRedirect(request.getContextPath() + "/frontend/views/client/cart.jsp");
        } else if (action != null && action.equals("update_qty")) {
            String size_selected = request.getParameter("size");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            cart.updateCartLine(product_code, quantity, size_selected);
            System.out.println(product_code + " " + size + " " + quantity);
            response.sendRedirect(request.getContextPath() + "/frontend/views/client/cart.jsp");
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
