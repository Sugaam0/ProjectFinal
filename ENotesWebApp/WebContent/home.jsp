<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires", "0");
	response.sendRedirect("login.jsp");
	session.removeAttribute("userD");
	session.setAttribute("Login-error", "Please login..");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <!--ICONSCOUT CDN-->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <!--LINKING CSS WITH HTML-->
    <link rel="stylesheet" href="Css/home.css">
    <!--GOOGLE FONT MONTESERRAT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">    
<!--SWIPERJS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<%@include file="all_component/allcss.jsp" %>
<style>
body {
 font-family: 'Montserrat', sans-serif;
    line-height: 1.7;
    color:var(--color-white);/*CALLING CSS VARIABLES*/
    

}

.header-paragraph{
	color:white;
}
</style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<header>
<div class="d-flex justify-content-end">


        <div class="container2 header__container">
            <div class="header__left">
                <h1>The simplest way to keep notes</h1>
                <p class="header-paragraph">All your notes, synced on all your devices. Get Notehub now for iOS, Android, Mac, Windows, Linux, or in your browser.</p>
                <a href="addNotes.jsp" class="btn btn-primary">Start Here!</a>
            </div>
            <!--CONTAINS IMAGE ON THE RIGHT-->
            <div class="header__right">
                <div class="header__right-image">
                    <img src="img/new-01.svg">
                </div>
            </div>
        </div>
    </header>


<%@include file="all_component/footer.jsp" %>

</body>
</html>