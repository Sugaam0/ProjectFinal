<title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">

</title>
<style>
*
{
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    text-decoration: none;/*removes underline*/
    list-style: none;/*removes discs*/
    box-sizing: border-box;
}
body
{
    font-family: 'Montserrat', sans-serif;
    line-height: 1.7;
    
    color:var(--color-white);/*CALLING CSS VARIABLES*/  
    
    background:#1f2641;
}

.container
{
	
    width: 100%;
    margin:0 auto;/*top and bottom to 0 and left and right margin to auto*/
    
    margin-bottom:2rem;
    padding-left: calc(15% - 20px);
    padding-right: calc(15% - 20px);
    
    
    
}
.container4{
	width: 50%;
    margin:0 auto;/*top and bottom to 0 and left and right margin to auto*/
    
    margin-bottom:2rem;
    padding-left: calc(15% - 20px);
    padding-right: calc(15% - 20px);
}

.container .card-title{
color:black;
}
.container p {
color:black;
}

.container1
{
    width: var(--container-width-lg);
    margin:0 auto;/*top and bottom to 0 and left and right margin to auto*/
    margin-bottom:8rem;
}
.container2 {
	width: var(--container-width-lg);
    margin:0 auto;/*top and bottom to 0 and left and right margin to auto*/
    margin-bottom:2rem;
}
.container2 p{
	color:white;
}
section
{
    padding: 6rem 0;

}
section h2
{
    text-align: center;
    margin-bottom: 4rem;
}
h1,h2,h3,h4,h5
{
    line-height: 1.2;
}
h1
{
    font-size: 2.4rem;
}
h2
{
    font-size:2rem;
}
h3
{
    font-size: 1.6rem;
}
h4
{
    font-size: 1.3rem;
}
a
{
    color:var(--color-white);
}
img
{
    width: 100%;
    display:block;/*block block ma chuttaune just like paragraphs*/
    object-fit: cover;
}

/*change navbar styles on scroll using js*/
.window-scroll
{
    background:var(--color-primary);
    box-shadow: 0 1rem 2rem rgba(0,0,0,0.2);
}
:root
{
    --color-primary:#6c63ff;
    --color-success:#00bf8e;    
    --color-warning:#f7c94b;
    --color-danger:#f75842;
    --color-danger-variant:rgba(247,88,66,0.4);
    --color-white:#fff;
    --color-light:rgba(255,255,255,0.7);
    --color-black:#000;
    --color-bg:#1f2641;
    --color-bg1:#2e3267;
    --color-bg2:#424890;
    
    --container-width-lg:80%;
    --container-width-md:90%;
    --container-width-sm:94%;

    --transition:all 400ms ease;
}
footer
{
    background:var(--color-bg1);
    padding-top: 3rem;
    font-size: 0.9rem;
    /* padding-bottom: 3rem; */
    /* added new code
    position:fixed;
    bottom:0;
    width:100%;
    */
}
.footer__container
{
    display:grid;
    grid-template-columns: repeat(4,1fr);
    gap: 5rem;
    margin-bottom:2rem;
}
.footer__container > div h4 {
    margin-bottom: 1.2rem;
}
.footer__1 p {
    margin: 0 0 2rem;
}
.footer ul li {
    margin-bottom:0.7rem;
}
.footer ul li a:hover {
    text-decoration: underline;
}
.footer__socials {
    display: flex;
    gap: 1rem;
    font-size:1.2rem;
    margin-top: 2rem;
}
.footer__trademark {
    text-align: center;
    margin-top: 1rem;
    padding: 1.2rem 0;
    /*Use border top/bottom more rather than hr tags*/
    border-top: 1px solid var(--color-bg2);
}
</style>


<footer>
        <div class="container1 footer__container">
            <div class="footer__1">
                <a href="home.jsp" class="footer__logo"><h4>NOTEHUB</h4></a>
                <p>
                    Thank you for being a part of the NoteHub community! We appreciate your support as we strive to provide you with the best note-taking experience possible. Your feedback helps us improve every day. Let's continue to grow and learn together on our journey to success!
                </p>
            </div>
            <div class="footer__2">
                <h4>Permalinks</h4>
                <ul class="permalinks"></ul>
                <li><a href="#">Home</a></li>
                <li><a href="addNotes.jsp">AddNotes</a></li>
                <li><a href="showNotes.jsp">Show Notes</a></li>
                <li><a href="#">Contact Us</a></li>
            </div>
            <div class="footer__3">
                <h4>Primacy</h4>
                <ul class="privacy">
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms and Conditions</a></li>
                    <li><a href="#">Refund Policy</a></li>
                </ul>
            </div>
            <div class="footer__4">
                <h4>Contact Us</h4>
                <div>
                    <p>
                        +977-9842011013
                    </p>
                    <p>ags321@gmail.com</p>
                </div>

                <ul class="footer__socials">
                    <li>
                        <a href="https://www.facebook.com/" target="_blank"><i class="uil uil-facebook"></i></a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/" target="_blank"><i class="uil uil-instagram"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="uil uil-twitter" target="_blank"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="uil uil-linkedin" target="_blank"></i></a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="footer__trademark">
            <small> &copy; Copyright NOTEHUB 2024 AGS </small>
        </div>
    </footer>