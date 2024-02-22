package com.DAO;

import com.User.post;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfDocument;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.security.Timestamp;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;




public class postDAO {
	private Connection conn;

	public postDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean AddNotes(String ti, String co, int ui) {
		boolean f = false;
		try {
			String qu = "insert into post(title,content,Id) values(?,?,?)";

			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, ui);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	public ArrayList<post> fetchPostRecord() {
		ArrayList<post> postList = new ArrayList<>();
		try {
			String query = "SELECT * FROM post";
			PreparedStatement st = conn.prepareStatement(query);
			ResultSet table = st.executeQuery();
			while (table.next()) {
				int pid = table.getInt(1);
				String title = table.getString(2);
				String content = table.getString(3);
				Date date = table.getDate(4);
				
				
				post post = new post();
				post.setId(pid);
				post.setTitle(title);
				post.setContent(content);
				post.setPdate(date);
				
				postList.add(post);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} 
		return postList;
	}

	public List<post> getData(int id) {
		List<post> list = new ArrayList<post>();
		post po = null;
		try {
			String qu = "select * from post where Id=? order by pid DESC";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				po = new post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getDate(4));
				list.add(po);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public post getDataById(int noteId) {

		post p = null;
		try {
			String qu = "select * from post where pid=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, noteId);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				p = new post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return p;
	}

	public boolean postUpdate(int nid, String ti, String co) {
		boolean f = false;
		try {
			String qu = "update post set title=?,content=? where pid=?";
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, nid);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	 public List<post> searchNotes(String query) {
	        List<post> notes = new ArrayList<post>();
	        post pos = null;
	        try {
	            String sql = "SELECT * FROM post WHERE title LIKE ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, "%" + query + "%");
	            ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	                 pos = new post();
	                pos.setId(rs.getInt("Id"));
	                pos.setTitle(rs.getString("title"));
	                pos.setContent(rs.getString("content"));
	                pos.setPdate(rs.getDate(4));
	                // Set other properties as needed
	                notes.add(pos);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return notes;
	    }
	
	  public String exportNotes(int nid) {
	        StringBuilder data = new StringBuilder();

	        // Database connection parameters
	       
try {
	       
	        String sql = "SELECT * FROM post where pid = ?";
	       
	             PreparedStatement pstmt = conn.prepareStatement(sql);
	             pstmt.setInt(1,nid);
	             ResultSet rs = pstmt.executeQuery(); 
	            // Loop through the result set and append data to StringBuilder
	            while (rs.next()) {
	                String title = rs.getString("title");
	                String content = rs.getString("content");
	                // Append data in desired format
	                data.append("Title : " + title).append("\n").append("Content:\n" + content).append("\n");
	            }
	       
	    }catch(Exception e)
			{
	    	e.printStackTrace();
					}
return data.toString();
	
	  }
	
	
	public boolean DeleteNotes(int nid)
	{
		boolean f = false;
		
		try {
			String qu = "delete from post where pid=?";
			
			PreparedStatement ps = conn.prepareStatement(qu);
			ps.setInt(1, nid);
			int x = ps.executeUpdate();
			
			if(x == 1)
			{
				f=true;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return f;
	}
	
}
