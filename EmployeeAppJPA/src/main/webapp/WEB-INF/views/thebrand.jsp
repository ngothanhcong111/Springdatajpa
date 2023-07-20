<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>The Brand</title>
<link href="${contextPath}/resources/css/style-brand.css" rel="stylesheet">
<link href="${contextPath}/resources/fonts/themify-icons/themify-icons.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
</head>
<body>
	<div id="main">
        
        <div id="header">
            <!-- begin:nav -->
            <ul id="nav">
                <li><a href="#">Home</a></li>
                <li><a href="#band">Brand</a></li>
                <li><a href="#tour">Tour</a></li>
                <li><a href="#contact">Contact</a></li>
                <li>
                    <a href="">
                        More
                        <!-- the i la the icon -->
                        <i class=" nav-arrow-down ti-arrow-circle-down"></i>
                    </a>
                    <ul class="subnav">
                        <li><a href="#">Merchandise</a></li>
                        <li><a href="#">Extras</a></li>
                        <li><a href="#">Media</a></li>
                    </ul>
                </li>
                <li>
                	<a href="" rel="stylesheet"> <i> ${username}</i> </a>
                	<ul class="subnav">
                		<li> <a href="${contextPath}/acount" class="infor-link" id="inforLink"  rel="stylesheet">Information</a></li>
                		<li> <a href="">Setting</a></li>
                		<li> <a href="">security</a></li>
                		
                	</ul>
                	
                </li>
                <li>
                	<a class="info-logout" href="${contextPath}/login" rel="stylesheet"> Logout</a>
                </li>
                
            </ul>
            <!-- end: nav -->
            	
            
            <!--Begin button -->
            <div class="search-btn">
                <i class="search-icon ti-search"></i>
            </div>
            <!-- end: button -->
             
        </div>

        <div id="slider" > 
            <div class="text-content">
            <img alt="slider-img" src="./resources/img/TheBrand/slider1/chicago.jpg" >
                <h2 class="text-heading">
                    New York
                </h2>
                <div class="text-description">
                    The atmosphere in New York is lorem ipsum.
                </div>
            </div>
        </div>

        <div id="content">
            <!-- about The Brand -->
            <div id="band" class="content-section">
                <h2 class="section-heading">THE BAND</h2>
                <p class="section-sub-heading">We love music</p>
                <p class="about-text">We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                <div class="members-list">
                    <div class="member-item">
                     <p class="member-name">Name</p>
                        <img src="./resources/img/TheBrand/Brand/member1.jpg" alt="Name" class="member-img">
                    </div>
                    <div class="member-item">
                        <p class="member-name">Name</p>
                           <img src="./resources/img/TheBrand/Brand/member1.jpg" alt="Name" class="member-img">
                    </div>
                       <div class="member-item">
                        <p class="member-name">Name</p>
                           <img src="./resources/img/TheBrand/Brand/member1.jpg" alt="Name" class="member-img">
                    </div>
                    <!-- class giai  quye tvan de cua float -->
                    <div class="clear"></div>
                </div>
            </div>
            <!--Tour section -->
            <div id="tour" class="tour-section">
                <div class="content-section">
                    <h2 class="section-heading text-white">TOUR DATES</h2>
                    <p class="section-sub-heading text-white">Remember to book your tickets!
                    </p>
                    <!-- Tickets -->
                    <ul class="tickets-list">
                        <li>September <span class="sold-out">Sold out</span></li>
                        <li>October <span class="sold-out">Sold out</span></li>
                        <li>November <span class="quantity">3</span></li>
                    </ul>
                    <!-- Places -->
                    <div class="places-list">
                        <div class="place-item">
                            <img src="./resources/img/TheBrand/places/NewYork.jpg" alt="New York" class="place-img">
                            <div class="place-body">
                                <h3 class="place-heading">New York</h3>
                                 <p class="place-time">
                                    Fri 27 Nov 2016
                                 </p>
                                 <p class="place-desc">
                                    Praesent tincidunt sed tellus ut rutrum sed vitae justo.
                                 </p>
                                 <!-- href # Link vao o tren trang do -->
                                 <button class="place-buy-btn js-buy-ticket">Buy Tickets</button>
                            </div>
                        </div>

                        <div class="place-item">
                            <img src="./resources/img/TheBrand/places/Paris.jpg" alt="Paris" class="place-img">
                            <div class="place-body">
                                <h3 class="place-heading">Paris</h3>
                                 <p class="place-time">
                                    Sat 28 Nov 2016
                                 </p>
                                 <p class="place-desc">
                                    Praesent tincidunt sed tellus ut rutrum sed vitae justo.
                                 </p>
                                 <!-- href # Link vao o tren trang do -->
                                 <button class="place-buy-btn js-buy-ticket">Buy Tickets</button>
                            </div>
                        </div>

                        <div class="place-item">
                            <img src="./resources/img/TheBrand/places/SanFrancisco.jpg" alt="New York" class="place-img">
                            <div class="place-body">
                                <h3 class="place-heading">San Francisco</h3>
                                 <p class="place-time">
                                    Sun 29 Nov 2016
                                 </p>
                                 <p class="place-desc">
                                    Praesent tincidunt sed tellus ut rutrum sed vitae justo.
                                 </p>
                                 <!-- href # Link vao o tren trang do -->
                                 <button class="place-buy-btn js-buy-ticket">Buy Tickets</button>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>                    
                </div>

            </div>
            <div id="contact"class="content-section">
                <h2 class="section-heading">
                    CONTRACT
                </h2>
                <p class="section-sub-heading">
                    Fan? Drop a note!
                </p>
                <div class="row contact-content">
                    <div class="col col-half contact-info">
                        <p> <i class="ti-location-pin"></i>Chicago, US </p>
                        <p> <i class="ti-mobile"></i>Phone: +00 151515 </p>
                        <p> <i class="ti-email"></i>Email: mail@mail.com </p>
                    </div>

                    <div class="col col-half contact-form ">
                        <form action="">
                            <div class="row">
                                <div class="col col-half">
                                    <input type="text" name="" placeholder="Name" required id="" class="form-control">
                                </div>
                                <div class="col col-half">
                                    <input type="email" name="" placeholder="Email" required id="" class="form-control">
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col col-full mt-8">
                                    <input type="text" name="" placeholder="Message" required id="" class="form-control">
                                </div>
                            </div>
                            <input class=" form-submit-btn mt-16" type="submit" value="SEND">
                        </form>
                    </div>
                </div>
            </div>
                <!--end:Contract section  -->
                <div class="map-section">
                    <img src="./resources/img/TheBrand/Map/map.jpg" alt="Map">
                </div>
        </div>
        <div id="footer">
            <div class="socials-list">
                <a href="https://www.facebook.com/profile.php?id=100026362656171"><i class="ti-facebook"> </i></a>
                <a href=""><i class="ti-instagram"></i></a>
                <a href=""><i class="ti-youtube"></i></a>
                <a href=""><i class="ti-pinterest"></i></a>
                <a href=""><i class="ti-twitter"></i></a>
                <a href=""><i class="ti-linkedin"></i></a>
            </div>
            <p class="copyright">Powered by <a href="">w3.css</a></p>
        </div>
    </div>
    <div class="modal js-modal">
        <div class="modal-container js-modal-container">
            <div class="modal-close js-modal-close">
                <i class="ti-close"></i>
            </div>
            <header class="modal-header">
                <i class="modal-heading-icon ti-bag">Tickets</i>
            </header>
            <div class="modal-body">
                <!-- ------ For chi dung cho id -->
                <label for="ticket-quantity" class="modal-label">
                    <i class="ti-shopping-cart">
                        Tickets,$15 per person
                    </i>
                </label>
                <input id ="ticket-quantity" type="text" class="modal-input" placeholder="How many?">
                <!-- ------ -->
                <label for="ticket-email" class="modal-label">
                    <i class="ti-user">
                        Send To
                    </i>
                </label>
                <input  id= "ticket-email" type="email" class="modal-input" placeholder="Enter Email">
                <button id="modal-buy-tickets">
                    Pay <i class="ti-check"></i>

                </button>
            </div>
            <footer class="modal-footer">
                <p class="modal-help">Need <a href=""> Help?</a></p>
            </footer> 
        </div>

    </div>
    <script>
        // ====== tao bien buyBtns .... document.querySelectorAll('.js-buy-ticket') lay du lieu cua class js luu bi vao bien buyBtns
        const buyBtns = document.querySelectorAll('.js-buy-ticket')
        const modal = document.querySelector('.js-modal')
        const modalClose  = document.querySelector('.js-modal-close')
        const modalContainer = document.querySelector('.js-modal-container')

        // Tao function showBuyTickets
        // ham hien thi modal mua ve(them class open vao modal)
        function showBuyTickets(){
            modal.classList.add('open')
        }
        // ham an modal mua ve(go bo class open vao modal)
        function hideBuyTickets(){
            modal.classList.remove('open')
        }
        //  laSSSp qua tung the buttuon va nghe hanh vi click 
        for (const buyBtn of buyBtns){
            // them 1 thang de lang nghe 
            buyBtn.addEventListener('click', showBuyTickets);
        }
        //Nghe hanh vi click vao button close
        modalClose.addEventListener('click', hideBuyTickets);
        modal.addEventListener('click',hideBuyTickets);
        // dung su kien noi bot
        modalContainer.addEventListener('click',function(event){
                event.stopPropagation()
        })
    </script>
    <script src="${contextPath}/resources/js/thebrand.js"></script>
</body>
</html>