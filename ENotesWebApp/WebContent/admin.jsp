

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel!</title>
   <link rel="stylesheet" href="Css/admin.css">
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
</head>
<style>

</style>
<body>
   
<!--NAVBAR-->
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
  
  <header>
<div class="d-flex justify-content-end">


        <div class="container2 header__container">
            <div class="header__left">
                <h1>The simplest way to keep notes</h1>
                <p class="header-paragraph">All your notes, synced on all your devices. Get Notehub now for iOS, Android, Mac, Windows, Linux, or in your browser.</p>
              
            </div>
            <!--CONTAINS IMAGE ON THE RIGHT-->
            <div class="header__right">
                <div class="header__right-image">
                    <img src="img/new-01.svg">
                </div>
            </div>
        </div>
    </header>
  
  
</body>


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
