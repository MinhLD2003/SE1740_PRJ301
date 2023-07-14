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
import model.Product;
import service.InterfaceService.IProductService;
import service.ProductService;

/**
 *
 * @author Admin
 */
public class ProductManagementServlet extends HttpServlet {

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
            out.println("<title>Servlet ProductManagementServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductManagementServlet at " + request.getContextPath() + "</h1>");
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
    private IProductService pServ = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String redirect = request.getParameter("redirect");
        List<String> brandList = pServ.queryAllBrandName();
        List<String> colorList = pServ.queryAllColor();

        List<String> sports = pServ.queryAllProductCategories("Sport");
        if (redirect != null && redirect.equals("edit")) {
            String productCode = request.getParameter("product_code");
            Product product = pServ.queryProductByCode(productCode);
            String gender = product.getCategories().contains("Men") ? "Men" : "Women";
            List<String> sizeList = pServ.querySizeByGender(gender);
            request.setAttribute("product", product);
            request.setAttribute("colors", colorList);
            request.setAttribute("brands", brandList);
            request.setAttribute("sizes", sizeList);
            request.setAttribute("sports", sports);
            request.getRequestDispatcher("/frontend/views/admin/producteditpage.jsp").forward(request, response);
        } else {
            List<Product> productList = pServ.queryAllProduct();
            List<String> sizeList = pServ.queryAllSizes();
            request.setAttribute("colors", colorList);
            request.setAttribute("brands", brandList);
            request.setAttribute("sports", sizeList);
            request.setAttribute("sports", sports);
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("frontend/views/admin/productmanagement.jsp").forward(request, response);
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

        if (action != null && action.equals("add")) {

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
