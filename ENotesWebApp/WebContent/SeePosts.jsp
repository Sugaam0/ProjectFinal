<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.postDAO"%>
<%@page import="com.User.post"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/admin.css">
     <!--ICONSCOUT CDN-->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <!--LINKING CSS WITH HTML-->
  
    <!--GOOGLE FONT MONTESERRAT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">    
<!--SWIPERJS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<style>
    /* Custom styles for increasing the size of table cells */
    .table td, .table th {
        padding: 20px; /* Adjust padding to increase the size of cells */
        font-size: 16px; /* Adjust font size as needed */
    }
    .window-scroll
{
    background:var(--color-primary);
    box-shadow: 0 1rem 2rem rgba(0,0,0,0.2);
}
</style>
</head>
<body>

<nav>
        <div class="container nav__container">
            <a href="admin.jsp"><h4>NOTEHUB</h4></a>
            <ul class="nav__menu">
                <li><a href="admin.jsp">Home</a></li>
                <li><a href="SeeUsers.jsp">Users</a></li>
                <li><a href="SeePosts.jsp">Posts</a></li>
                <li><a href="logoutServlet">Logout</a></li>
            </ul>
            <!--BUTTONS IMPORTED FROM ICONSCOUT-->
            <button id="open-menu-btn"><i class="uil uil-bars"></i></button>
            <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>
        </div>
    </nav>
   
   
   
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   
   <%
	String updateMsg = (String) session.getAttribute("updateMsg");

	if (updateMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=updateMsg%></div>

	<%
	session.removeAttribute("updateMsg");
	}
	%>

	<%
	String wrongMsg = (String) session.getAttribute("wrongMsg");

	if (wrongMsg != null) {
	%>
	<div class="alert alert-danger" role="alert"><%=wrongMsg%></div>

	<%
	session.removeAttribute("wrongMsg");
	}
	%>
   
    <div class="container mt-5">
    <h2>Post Records</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
            postDAO dao = new postDAO(DBConnect.getConn());
            ArrayList<post> postList = dao.fetchPostRecord();
               SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
               for(post post : postList) { %>
                <tr>
                    <td><%= post.getId() %></td>
                    <td><%= post.getTitle() %></td>
                    <td><%= post.getContent() %></td>
                    <td><%= sdf.format(post.getPdate()) %></td>
                    <td>
                    <div>
                    <a href="deletePostServlet?notes_id=<%=post.getId()%>">Delete</a>
                    </div>
                </tr>
            <% } %>
        </tbody>
    </table>
</div> 
   
					
        

    
    
    
    
    
    
</body>
<script>
window.addEventListener('scroll',()=>
{
    document.querySelector('nav').classList.toggle
    ('window-scroll',window.scrollY > 0)
})
//show/hide faq answer
const faqs = document.querySelectorAll('.faq');
faqs.forEach(faq =>
    {
        faq.addEventListener('click',()=>
        {
            faq.classList.toggle('open');

            //change icon
            //here is little bug
            const icon = faq.querySelector('.faq__icon i');
            if(icon.className === 'uil uil-plus' )
            {
                icon.className = "uil uil-minus ";
            }
            else
            {
                icon.className = "uil uil-minus";
            }
        }
        )
    }) 

//show/hide nav menu
const menu = document.querySelector(".nav__menu");
const menuBtn = document.querySelector("#open-menu-btn");
const closeBtn = document.querySelector("#close-menu-btn");

menuBtn.addEventListener('click',() =>
{
    menu.style.display = "flex";
    closeBtn.style.display = "inline-block";
    menuBtn.style.display = "none";

})

//close nav menu

const closeNav = () => {
    menu.style.display = "none";
    closeBtn.style.display = "none";
    menuBtn.style.display = "inline-block";
}
closeBtn.addEventListener('click',closeNav);
</script>
</html>