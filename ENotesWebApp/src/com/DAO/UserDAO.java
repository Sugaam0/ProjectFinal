package com.DAO;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;

import com.User.UserDetails;


public class UserDAO {
	private Connection conn;
	
	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(UserDetails us) {
		boolean f = false;

		try {
			String query = "insert into user(Name,Email,password,contact) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			String pass = us.getPass();
			String hashedPassword = AESEncryption.encrypt(pass);
			ps.setString(3, hashedPassword);
			ps.setString(4, us.getContact());

			int i = ps.executeUpdate();
			if (i == 1) {
				
				f = true;
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public ArrayList<UserDetails> fetchUserRecord() {
		ArrayList<UserDetails> userList = new ArrayList<>();
		try {
			String query = "SELECT * FROM user";
			PreparedStatement st = conn.prepareStatement(query);
			ResultSet table = st.executeQuery();
			while (table.next()) {
				int id = table.getInt(1);
				String name = table.getString(2);
				String email = table.getString(3);
				String password = table.getString(4);
				String contact = table.getString(5);
				String userType = table.getString(6);
	
				UserDetails user = new UserDetails();
				user.setId(id);
				user.setName(name);
				user.setEmail(email);
				user.setPass(password);
				user.setContact(contact);
				user.setUserType(userType);
				
				userList.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} 
		return userList;
	}
	
	
	
	public UserDetails login(UserDetails us) {
		UserDetails user=null;
		try {

			String query = "select * from user where Email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, us.getEmail());
			String pass = us.getPass();
			String rehashPass = AESEncryption.encrypt(pass);
			ps.setString(2, rehashPass);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				user = new UserDetails();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("Name"));
				user.setEmail(rs.getString("Email"));
				user.setPass(AESEncryption.decrypt(rs.getString("password")));
				
				user.setContact(rs.getString("contact"));
				user.setUserType(rs.getString("userType"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	
	}

	
}

class AESEncryption {
	
	private static final String ALGORITHM = "AES";
    private static final String KEY = "qwertyuiopasdfgh";
		
    public static String encrypt(String plainText){
    	String encryptedPassword = plainText;
    	try {
    		SecretKeySpec keySpec = new SecretKeySpec(KEY.getBytes(StandardCharsets.UTF_8), ALGORITHM);
    		Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.ENCRYPT_MODE, keySpec);
            byte[] ciphertext = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));
            encryptedPassword = Base64.getEncoder().encodeToString(ciphertext); 
    	}
    	catch(Exception ex) {
    		ex.printStackTrace();
    	}
    	return encryptedPassword;
        
    }

    public static String decrypt(String ciphertext){
    	String decryptedPassword = ciphertext;
    	try {
    		SecretKeySpec keySpec = new SecretKeySpec(KEY.getBytes(StandardCharsets.UTF_8), ALGORITHM);
    		Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.DECRYPT_MODE, keySpec);
            byte[] decryptedData = cipher.doFinal(Base64.getDecoder().decode(ciphertext));
            decryptedPassword =  new String(decryptedData, StandardCharsets.UTF_8);
    	}
    	catch (Exception e) {
			e.printStackTrace();
		}
    	return decryptedPassword;
    	
        
    }
}
