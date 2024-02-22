package com.User;

import java.sql.Date;
import java.sql.Timestamp;

public class post {
	private int pid;
	private String title;
	private String content;
	private Date pdate;
	private UserDetails user;
	public post(int id, String title, String content, Date pdate, UserDetails user) {
		super();
		this.pid = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}
	public post() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return pid;
	}
	public void setId(int id) {
		this.pid = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}
	
	
}
