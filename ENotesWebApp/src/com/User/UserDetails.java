package com.User;

public class UserDetails {
	private int id;
	private String name;
	private String email;
	private String pass;
	private String contact;
	private String userType;
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserDetails(String name, String email, String pass, String contact,String userType) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.contact = contact;
		this.userType = userType;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUserType(String userType)
	{
		this.userType = userType;
	}
	public String getUserType()
	{
		return userType;
	}
	
	
	
	
}
