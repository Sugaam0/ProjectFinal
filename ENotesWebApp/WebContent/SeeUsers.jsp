<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.UserDAO"%>

<%@page import="com.User.UserDetails"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>See all users!</title>

     <!--ICONSCOUT CDN-->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <!--LINKING CSS WITH HTML-->
    <link rel="stylesheet" href="Css/admin.css">
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
    <div class="container mt-5">
    <h2>User Records</h2>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Contact</th>
                <th>User type</th>
            </tr>
        </thead>
        <tbody>
            <% 
            UserDAO dao = new UserDAO(DBConnect.getConn());
            ArrayList<UserDetails> userList = dao.fetchUserRecord();
               SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
               for(UserDetails user : userList) { %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <td><%= user.getPass() %></td>
                    <td><%= user.getContact() %></td>
                    <td><%= user.getUserType() %></td>
                    <td>
                    
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