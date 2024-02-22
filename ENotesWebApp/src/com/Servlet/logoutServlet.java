package com.Servlet;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			session.removeAttribute("userD");
			HttpSession session2 = request.getSession();
			session2.setAttribute("logoutMsg", "logout succesfully..");
			response.sendRedirect("index.jsp");
			
		}catch(Exception e) {
			
		}
	}
	  
}
