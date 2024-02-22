package com.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.postDAO;
import com.User.post;
import com.db.DBConnect;

/**
 * Servlet implementation class viewServlet
 */
@WebServlet("/viewServlet")
public class viewServlet extends HttpServlet {
	
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		postDAO dao = new postDAO(DBConnect.getConn());
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
		ArrayList<post> postList = dao.fetchPostRecord();
		request.setAttribute("postList", postList);
		dispatcher.forward(request, response);
		
	}


	

}
