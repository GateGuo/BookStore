<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: joker
  Date: 2018/9/29
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Checkout || Shopppie</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

    <!-- Google Fonts
    ============================================ -->
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:700' rel='stylesheet' type='text/css'>

    <!-- Bootstrap CSS
    ============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Nivo slider CSS
    ============================================ -->
    <link rel="stylesheet" type="text/css" href="lib/custom-slider/css/nivo-slider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="lib/custom-slider/css/preview.css" media="screen" />

    <!-- Fontawsome CSS
    ============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- owl.carousel CSS
    ============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">

    <!-- jquery-ui CSS
    ============================================ -->
    <link rel="stylesheet" href="css/jquery-ui.css">

    <!-- meanmenu CSS
    ============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">

    <!-- animate CSS
    ============================================ -->
    <link rel="stylesheet" href="css/animate.css">

    <!-- style CSS
    ============================================ -->
    <link rel="stylesheet" href="style.css">

    <!-- responsive CSS
    ============================================ -->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- modernizr JS
    ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- header start -->
<header class="header-area">
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 hidden-xs">
                    <div class="header-top-left">
                        <div class="language-usd">
                            <ul>
                                <li><a href="#">eng</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">Bengali</a></li>
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">German</a></li>
                                        <li><a href="#">Spanish</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">usd</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">usd</a></li>
                                        <li><a href="#">uero</a></li>
                                        <li><a href="#">taka</a></li>
                                        <li><a href="#">pound</a></li>
                                        <li><a href="#">rupi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="header-top-right">
                        <div class="account-cart">
                            <ul>
                                <li class="account"><a href="#">my account</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="cart.html">my bag</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                        <li><a href="wishlist.html">wishlist</a></li>
                                    </ul>
                                </li>
                                <li class="login"><a href="#">login</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="#">login or register</a></li>
                                        <li class="login-button"><a href="#">login</a></li>
                                        <li><a href="#">or</a></li>
                                        <li class="creat-button"><a href="#">creat account</a></li>
                                    </ul>
                                </li>
                                <li class="cart"><a href="cart.html"><img src="img/icon/cart.png" alt="cart"><p>2</p></a>
                                    <ul class="submenu-mainmenu">
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="img/menu/3.jpg" alt=""></a>
                                                    </span>
                                            <span class="cart-info">
                                                        <a href="#">Lorem Ipsam...</a>
                                                        <span>1 x $104.99</span>
                                                        <a class="trash" href="#"><i class="fa fa-trash"></i></a>
                                                    </span>
                                        </li>
                                        <li class="single-cart-item clearfix">
                                                    <span class="cart-img">
                                                        <a href="#"><img src="img/menu/4.jpg" alt=""></a>
                                                    </span>
                                            <span class="cart-info">
                                                        <a href="#">Lorem Ipsam...</a>
                                                        <span>2 x $104.99</span>
                                                        <a class="trash" href="#"><i class="fa fa-trash"></i></a>
                                                    </span>
                                        </li>
                                        <li>
                                                    <span class="sub-total-cart text-center">
                                                        SubTotal <span>$620</span>
                                                        <a href="checkout.html" class="view-cart">Checkout</a>
                                                    </span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-header-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12">
                    <div class="logo">
                        <a href="index.html"><img src="img/logo/logo.png" alt="SHOPPPIE"></a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-6">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="index.html">首页</a>
                                    <ul class="submenu-mainmenu">

                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">书店</a>
                                    <div class="mega-menu">
                                                <span>
                                                    <a href="shop-grid-left-sidebar.html" class="title">men</a>
                                                    <a href="#">blazers</a>
                                                    <a href="#">jackets</a>
                                                    <a href="#">Colletions</a>
                                                    <a href="#">T-shirts</a>
                                                    <a href="#">Jeens pant's</a>
                                                    <a href="#">Sport shoes</a>
                                                </span>
                                        <span>
                                                    <a href="shop-grid-left-sidebar.html" class="title">women</a>
                                                    <a href="#">cocktail</a>
                                                    <a href="#">sunglass</a>
                                                    <a href="#">evening</a>
                                                    <a href="#">footwear</a>
                                                    <a href="#">bootees bags</a>
                                                    <a href="#">furniture</a>
                                                </span>
                                        <span>
                                                    <a href="shop-grid-left-sidebar.html" class="title">accessories</a>
                                                    <a href="#">gagets</a>
                                                    <a href="#">laptop</a>
                                                    <a href="#">mobile</a>
                                                    <a href="#">lifestyle</a>
                                                    <a href="#">Jeens pant's</a>
                                                    <a href="#">Sport items</a>
                                                </span>
                                        <span>
                                                    <img src="img/menu/1.jpg" alt="">
                                                    <img src="img/menu/2.jpg" alt="">
                                                </span>
                                    </div>
                                </li>
                                <li><a href="shop-full-grid.html">新书区</a></li>
                                <li><a href="blog-full-view.html">旧书区</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">二手交易区</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                        <li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                        <li><a href="shop-full-grid.html">Shop None Sidebar</a></li>
                                        <li><a href="product-details-fullwidth.html">Product Details Fullwidth</a></li>
                                        <li><a href="product-details-left-sidebar.html">Product Details Left Sidebar</a></li>
                                        <li><a href="product-details-right-sidebar.html">Product Details Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li><a href="about-us.html">联系</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-6 col-xs-12">
                    <div class="search-box">
                        <form action="#">
                            <input type="text" placeholder="Search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Menu Area start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>
                                <li><a href="index.html">首页</a>

                                </li>
                                <li><a href="shop-full-grid.html">书店</a></li>
                                <li><a href="shop-full-grid.html">新书区</a></li>
                                <li><a href="blog-full-view.html">旧书区</a>
                                    <ul>
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">二手交易区</a>
                                    <ul>
                                        <li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
                                        <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                        <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                        <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                        <li><a href="shop-full-grid.html">Shop None Sidebar</a></li>
                                        <li><a href="product-details-fullwidth.html">Product Details Fullwidth</a></li>
                                        <li><a href="product-details-left-sidebar.html">Product Details Left Sidebar</a></li>
                                        <li><a href="product-details-right-sidebar.html">Product Details Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li><a href="about-us.html">联系</a>
                                    <ul>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Menu Area end -->
</header>
<!-- header end -->
<!-- breadcrumb start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-left">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a><span> - </span></li>
                    <li class="active">checkout</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb end -->
<!--Checkout Area Start-->
<div class="checkout-area area-padding">
    <div class="container">


        <div id="payment-info" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
            <div class="panel-body" >
                <div class="ship-method payment">
                    <div class="ship-wrap">
                        <div class="ship-address">
                            <input type="radio" name="check" value="check">
                            <span>Check / Money order </span>
                        </div>
                        <div class="ship-address">
                            <input type="radio" name="check" value="credit">
                            <span>Credit Card (saved) </span>
                        </div>
                        <div class="single-pay-info">
                            <p>Name on Card <span>*</span></p>
                            <input type="text">
                        </div>
                        <div class="single-pay-info">
                            <p>Credit Card Type</p>
                            <select name="payment">
                                <option>please select</option>
                                <option>visa Card</option>
                                <option>Master Card</option>
                                <option>paypall</option>
                                <option>Americal Express</option>
                            </select>
                        </div>
                        <div class="single-pay-info">
                            <p>Credit Card Number <span>*</span></p>
                            <input type="text">
                        </div>
                        <div class="single-pay-info">
                            <p>Expiration date <span>*</span></p>
                            <select name="month" id="month">
                                <option>Month</option>
                                <option>January</option>
                                <option value="">February</option>
                                <option value="">March</option>
                                <option value="">April</option>
                                <option value="">May</option>
                                <option value="">June</option>
                                <option value="">July</option>
                                <option value="">August</option>
                                <option value="">September</option>
                                <option value="">October</option>
                                <option value="">November</option>
                                <option value="">December</option>
                            </select>
                            <select name="year" id="year">
                                <option value="">2016</option>
                                <option value="">2017</option>
                                <option value="">2018</option>
                                <option value="">2019</option>
                                <option value="">2020</option>
                                <option value="">2021</option>
                                <option value="">2022</option>
                            </select>
                        </div>
                        <div class="single-pay-info">
                            <p>Card Varification Number<span>*</span></p>
                            <input type="text">
                            <a class="what">What is it?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="col-md-6" style="margin-left: 300px;">
            <h4 class="panel-title">
                <a href="#">
                    订单详情
                </a>
            </h4>
            <div class="panel-body checkout">
                <form action="#" method="post">
                    <div class="checkout-table table-responsive">
                        <table>
                            <thead>
                            <tr>
                                <th class="p-name">商品</th>
                                <th class="p-total">总计</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:set var="total" value="0" />
                            <c:set var="index" value="0" />
                            <c:forEach items="${orlist}" var="orl" varStatus="status">
                                <tr>
                                    <c:set var="m1" value="${orl.ogPrice}" />
                                    <c:set var="m2" value="${orl.ogNumber}" />
                                    <c:set var="ans" value="${m1*m2}" />
                                    <td class="p-name-shipping">${orl.ogId}${bookname[index]}<a>*${orl.ogNumber}</a></td>
                                    <td class="p-total">${ans}</td>
                                    <c:set var="total" value="${total+ans}" />
                                </tr>
                                <c:set var="index" value="${index+1}" />
                                </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td class="p-name-total">支付金额</td>
                                <td>$${total}</td>
                            </tr>
                            </tfoot>
                        </table>
                        <button type="button" class="button floatright"><span>立即付款</span></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
<!--End of Checkout Area-->
<!-- footer start -->
<footer class="footer-area">
    <div class="footer-middle-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <img src="img/logo/footer-logo.png" alt="">
                        </div>
                        <div class="footer-address">
                            <p>28 Green Tower, Street Name New<br> York City, USA</p>

                            <p>TELEPHONE- +88017 222 333<br>
                                Email- admin@DevItems.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-3 col-xs-12">
                    <div class="footer-widget">
                        <h5>Services</h5>
                        <ul>
                            <li><a href="about.html">About us</a></li>
                            <li><a href="about.html">Return Policy</a></li>
                            <li><a href="blog.html">Our Blog</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li class="hidden-sm"><a href="#">Terms &amp; Condition</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2 hidden-sm col-xs-12">
                    <div class="footer-widget">
                        <h5>Account</h5>
                        <ul>
                            <li><a href="#">Your Account</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <div class="footer-widget">
                        <h5>Get Social</h5>
                        <p>Connected with our social media and<br>
                            get update protidin</p>
                        <ul class="social-icon">
                            <li><a href="www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="www.twitter.com"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="www.google-plus.com"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="www.instagram.com"><i class="fa fa-instagram"></i></a></li>
                            <li class="hidden-sm"><a href="www.pinterest.com"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="copyright">
                        <p>2016 ® All Rights Reserved <span><a href="http://jqueryfuns.com/">DevItems</a></span>.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="payment text-right">
                        <img src="img/payment/1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer end -->


<!-- jquery
============================================ -->
<script src="js/vendor/jquery-1.12.3.min.js"></script>
<!-- bootstrap JS
============================================ -->
<script src="js/bootstrap.min.js"></script>
<!-- meanmenu JS
============================================ -->
<script src="js/jquery.meanmenu.js"></script>
<!-- wow JS
============================================ -->
<script src="js/wow.min.js"></script>
<!-- owl.carousel JS
============================================ -->
<script src="js/owl.carousel.min.js"></script>
<!-- countdown JS
============================================ -->
<script src="js/jquery.countdown.min.js"></script>
<!-- price-slider JS
============================================ -->
<script src="js/jquery-price-slider.js"></script>
<!-- Elevate Zoom js
============================================ -->
<script src="js/jquery.elevatezoom.js"></script>
<!-- scrollUp JS
============================================ -->
<script src="js/jquery.scrollUp.min.js"></script>
<!-- plugins JS
============================================ -->
<script src="js/plugins.js"></script>
<!-- Nevo Slider js
============================================ -->
<script type="text/javascript" src="lib/custom-slider/js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="lib/custom-slider/home.js"></script>

<!-- main JS
============================================ -->
<script src="js/main.js"></script>
</body>
</html>