package com.Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.postDAO;
import com.db.DBConnect;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.sql.*;

@WebServlet("/exportNotesServlet")
public class exportNotesServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Integer noteid = Integer.parseInt(request.getParameter("notes_id"));
		postDAO dao = new postDAO(DBConnect.getConn());
		HttpSession session = null;
		response.setHeader("Content-Disposition", "attachment; filename=\"exported_data.txt\"");
		response.setContentType("text/plain"); 
		  
       String f = dao.exportNotes(noteid);
       
       try (PrintWriter out = response.getWriter()) {
           out.println(f);
       }	
	}
}
