package com.Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.User.UserDetails;

import java.io.IOException;

public class AdminAuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
       
        HttpSession s = req.getSession();
        UserDetails user = (UserDetails) s.getAttribute("userD");
        
        if(user!=null && user.getUserType().equals("admin")) {
        	chain.doFilter(request, response);
        } else {
        	System.out.println("Not logged in please login");
        	response.setContentType("text/html");
        	response.getWriter().println("<h1>NOT LOGGED IN</h1>");
        }
    }

    @Override
    public void destroy() {}
}
