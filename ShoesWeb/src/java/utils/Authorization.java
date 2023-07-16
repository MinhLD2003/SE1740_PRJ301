/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.UserAccount;

/**
 *
 * @author Admin
 */
public class Authorization implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) sr;
        HttpServletResponse response = (HttpServletResponse) sr1;
        String uri = request.getRequestURI();
        if (uri.startsWith("/shoesweb/admin")) {
            UserAccount user = (UserAccount) SessionUtil.getInstance().getValue(request, "user");
            if (user != null) {
                if (user.getRoleName().equals("ADMIN")) {
                    fc.doFilter(sr, sr1);
                } else if (user.getRoleName().equals("CLIENT")) {
                    response.sendRedirect(request.getContextPath() + "/home");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/home?redirect=sign-in");
            }
        } else {
            fc.doFilter(sr, sr1);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

}
