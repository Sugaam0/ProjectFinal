<%@page import="java.sql.Connection" %>
<%@page import="com.db.DBConnect" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.back-img{
	background: url("img/image.jpg");
	width: 100%;
	height: 82vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Welcome to Notehub!</title>

<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <!--LINKING CSS WITH HTML-->
    <link rel="stylesheet" href="splash.css">
    <!--GOOGLE FONT MONTESERRAT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,opsz,wght@0,6..12,200..1000;1,6..12,200..1000&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,opsz,wght@0,6..12,200..1000;1,6..12,200..1000&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<!--SWIPERJS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<style>
 *{
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    text-decoration: none;/*removes underline*/
    list-style: none;/*removes discs*/
    box-sizing: border-box;
}
body{
    background:#1f2641;

}
h1{
    font-family: "Nunito Sans", sans-serif;
    color: white;
    margin-left:5rem;
    font-size:40px;
}
p{
    font-family: "Roboto", sans-serif;
    font-weight: 200;
    font-style: italic;  
    color: white;
    padding-top: 0.5rem;
    font-size:16px;
    margin-left:5rem;
}
 
.bottom-image {
    position: absolute;
    bottom: 0;
    z-index: -1;
    left: 0; /* Adjust as needed */
}
  
  
.header__right {
    float: right; /* Align to the right side */
    width: calc(50% - 20px); /* Adjust width as needed */
    padding-right: 20px; /* Add right padding */
    margin-top: 7rem;
    /* margin-right: -5rem; */
}
.btn {
    width: 120px;
    height: 40px;
    font-size: 1.1em;
    cursor: pointer;
    background-color:white ;
    color: black;
    border:black;
    border-radius: 5px;
    transition: all .4s;
    margin-top: 1rem;
    margin-left: 14rem;
}
   
.btn:hover {
    border-radius: 5px;
    transform: translateY(-5px);
    background-color: white;
    color: black;
    
}
   
.btn:active {
    transition: all 0.2s;
    transform: translateY(-5px);
    box-shadow: 0 2px 0 -2px #f85959,
    0 8px 0 -4px #39a2db,
    0 12px 10px -3px #39a2db;
}
.btn1 {
    width: 100px;
    height: 40px;
    font-size: 0.9em;
    cursor: pointer;
    background-color:#1f2641 ;
    color: white;
    border:black;
    border-radius: 5px;
    transition: all .4s;
    margin-top: 0.7rem;
    margin-left: 1rem;
}
   
.btn1:hover {
    border-radius: 5px;
    transform: translateY(-5px);
    background-color: #1f2641;
    color: white;
    
}
   
.btn1:active {
    transition: all 0.2s;
    transform: translateY(-5px);
    box-shadow: 0 2px 0 -2px #f85959,
    0 8px 0 -4px #39a2db,
    0 12px 10px -3px #39a2db;
}
.footer-text h2,h3{
    color: #5a4dd0;
}
h2{
    font-family: "Nunito Sans", sans-serif;
}
h3{
    font-family: "Roboto Condensed", sans-serif;
    font-optical-sizing: auto;
    margin-left: 1.8rem;
  
}
.footer-text{
    margin-top: 11rem;
    margin-left: 22rem;
}


</style>
</head>
<body>
<div class="header__right">
                <h1>Welcome To Your Ultimate <br> Note Taking Destination</h1>
                <p>Enjoy easy note-taking with our simple platform. Whether you're <br>new or returning, accessing your notes is quick. Start now and <br>make note-taking a breeze!</p>
                <a href="login.jsp"><button class="btn">Login
                </button></a>
                <div class="footer-text">
                    <h2>NEW HERE?</h2>
                    <h3>Join Now!</h3>
                    <a href="register.jsp"><button class="btn1">Register</button></a>
                </div>
            </div>
    <img src="img/Asset-5.svg" alt="" class="bottom-image">
	
	

</body>
</html>