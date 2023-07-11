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
import java.util.List;
import model.Product;
import service.InterfaceService.IProductService;
import service.ProductService;
import utils.FilterCategory;
import utils.SessionUtil;

/**
 *
 * @author Admin
 */
public class ProductController extends HttpServlet {

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
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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

        List<Product> productList = null;
        FilterCategory.resetFilterMap();
        String gender = (String) SessionUtil.getInstance().getValue(request, "pageRequest");
        FilterCategory.addFilterCategory("gender", gender);
        String action = request.getParameter("action");
        if (action != null && action.equals("filter")) {
            String brands = request.getParameter("brand");
            String sports = request.getParameter("sport");
            String colors = request.getParameter("color");
            String sizes = request.getParameter("size");
            String min_price = request.getParameter("price_min");
            String max_price = request.getParameter("price_max");
            if (brands != null) {
                FilterCategory.addFilterCategory("brand", brands);
            }
            if (sports != null) {
                FilterCategory.addFilterCategory("sport", sports);
            }
            if (colors != null) {
                FilterCategory.addFilterCategory("color", colors);
            }
            if (sizes != null) {
                FilterCategory.addFilterCategory("size", sizes);
            }
            if (min_price != null) {
                FilterCategory.addFilterCategory("min_price", min_price);
            }
            if (max_price != null) {
                FilterCategory.addFilterCategory("max_price", max_price);
            }
            productList = IPService.queryProductsByCategories(FilterCategory.filterMap);
            SessionUtil.getInstance().putValue(request, "productList", productList);
            response.sendRedirect("frontend/views/client/productpage.jsp");
        } else if (action != null && action.equals("singleproduct")) {
            String productCode = request.getParameter("product_variant");
            request.setAttribute("product", IPService.queryProductByCode(productCode));
            request.getRequestDispatcher("frontend/views/client/singleproductpage.jsp").forward(request, response);
        } else if (action != null && action.equals("search")) {
            String search_value = request.getParameter("search_value");
            
        } else {
            List<Product> allProductList = IPService.queryAllProduct();
            SessionUtil.getInstance().putValue(request, "productList", allProductList);
            response.sendRedirect("frontend/views/client/productpage.jsp");
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
