<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>首页</title>
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
                        <a href="index.html"><img src="img/logo/logo.png" alt="SHOPPPIE" ></a>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-6">
                    <div class="mainmenu">
                        <nav>
                            <ul>
                                <li><a href="index.html">Home</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="index.html">Home Version 1</a></li>
                                        <li><a href="oldBooks.html">Home Version 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">Women</a>
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
                                <li><a href="shop-full-grid.html">Accessories</a></li>
                                <li><a href="blog-full-view.html">Blog</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">Shop</a>
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
                                <li><a href="about-us.html">Pages</a>
                                    <ul class="submenu-mainmenu">
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">contact</a></li>
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
                                <li><a href="index.html">HOME</a>
                                    <ul>
                                        <li><a href="index.html">Home Version 1</a></li>
                                        <li><a href="oldBooks.html">Home Version 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">Women</a></li>
                                <li><a href="shop-full-grid.html">Accessories</a></li>
                                <li><a href="blog-full-view.html">Blog</a>
                                    <ul>
                                        <li><a href="blog-full-view.html">Blog Full View</a></li>
                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                        <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                        <li><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop-full-grid.html">Shop</a>
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
                                <li><a href="about-us.html">Pages</a>
                                    <ul>
                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="404.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">contact</a></li>
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
<!-- slider start -->
<div class="slider-wrap">
    <div class="preview-2">
        <div id="nivoslider" class="slides">
            <img src="img/slider/40.jpg" alt="" title="#slider-direction-2"  />
            <img src="img/slider/50.jpg" alt="" title="#slider-direction-1"  />
        </div>
        <!-- direction 1 -->
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="nivo_text">
                <div class="slider-content slider-text-1">
                    <div class="wow zoomInUp" data-wow-delay="0.3s">
                        <h3>孟夫子书城</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-2">
                    <div class="wow zoomInUp" data-wow-delay=".2s">
                        <h3 class="title">网罗天下图书 传承中华文明</h3>
                    </div>
                </div>

            </div>
        </div>
        <!-- direction 2 -->
        <div id="slider-direction-2" class="slider-direction">
            <div class="nivo_text">
                <div class="slider-content slider-text-1">
                    <div class="wow zoomInUp" data-wow-delay="0.3s">
                        <h3>孟夫子书城</h3>
                    </div>
                </div>
                <div class="slider-content slider-text-2">
                    <div class="wow zoomInUp" data-wow-delay=".2s">
                        <h3 class="title">网罗天下图书 传承中华文明</h3>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- slider end -->

<!-- featured start -->
<div class="featured-area home-two clearfix">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title">
                    <h2>人文社科</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="section-tab">
                    <div  class="section-tab-menu text-left" id="humanities">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#history" aria-controls="history" role="tab" data-toggle="tab">历史</a></li>
                            <li role="presentation"><a href="#military" aria-controls="military" role="tab" data-toggle="tab">政治军事</a></li>
                            <li role="presentation"><a href="#culture" aria-controls="culture" role="tab" data-toggle="tab">文化</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="tab-content row">
                        <div id="history" role="tabpanel" class="active section-tab-item">
                            <div class="tab-item-slider">
                                <c:forEach items="${firstList}" var="book">
                                    <div class="col-xs-12 col-width">
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${book.BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${book.BPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${book.BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${book.BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action">
                                                    <input type="hidden" value="${book.BId}"/>
                                                    <ul>
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    </ul>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>



                            </div>
                        </div>
                        <div id="military" role="tabpanel" class="section-tab-item">
                            <div class="tab-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="culture" role="tabpanel" class="section-tab-item">
                            <div class="tab-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item box-shadow-effect">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- featured end -->
<!-- popular start -->
<div class="popular-area home-two">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title res">
                    <h2>文艺</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right" id="literature">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#novel" aria-controls="novel" role="tab" data-toggle="tab">小说</a></li>
                            <li role="presentation"><a href="#biography" aria-controls="biography" role="tab" data-toggle="tab">传记</a></li>
                            <li role="presentation"><a href="#youthLiterature" aria-controls="youthLiterature" role="tab" data-toggle="tab">青春文学</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="novel" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <c:forEach begin="0" end="15" items="${secondList}" step="2" varStatus="status">
                                    <div class="col-xs-12">
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${secondList[status.index].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${secondList[status.index].BPrice}</span>
                                                    </div>
                                                    
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${secondList[status.index].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${secondList[status.index].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${secondList[status.index].BId}"/>
                                                    <ul>
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${secondList[status.index+1].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${secondList[status.index+1].BPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${secondList[status.index+1].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${secondList[status.index+1].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${secondList[status.index+1].BId}"/>
                                                    <ul>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="biography" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="youthLiterature" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular end -->

<!-- popular start -->
<div class="popular-area home-two">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title res">
                    <h2>科技</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right" id="technology">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#computer" aria-controls="computer" role="tab" data-toggle="tab">计算机</a></li>
                            <li role="presentation"><a href="#medical" aria-controls="medical" role="tab" data-toggle="tab">医学</a></li>
                            <li role="presentation"><a href="#architecture" aria-controls="architecture" role="tab" data-toggle="tab">建筑</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="computer" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <c:forEach begin="0" end="15" items="${thirdList}" step="2" varStatus="status">
                                    <div class="col-xs-12">
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${thirdList[status.index].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${thirdList[status.index].BPrice}</span>
                                                    </div>
                                                    
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${thirdList[status.index].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${thirdList[status.index].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${thirdList[status.index].BId}"/>
                                                    <ul>
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${thirdList[status.index+1].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${thirdList[status.index+1].BPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${thirdList[status.index+1].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${thirdList[status.index+1].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${thirdList[status.index+1].BId}"/>
                                                    <ul>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="medical" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="architecture" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular end -->


<!-- popular start -->
<div class="popular-area home-two">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title res">
                    <h2>童书</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right" id="usborne">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#pictureBooks" aria-controls="pictureBooks" role="tab" data-toggle="tab">绘本</a></li>
                            <li role="presentation"><a href="#childrenLiterature" aria-controls="childrenLiterature" role="tab" data-toggle="tab">儿童文学</a></li>
                            <li role="presentation"><a href="#cartoon" aria-controls="cartoon" role="tab" data-toggle="tab">卡通</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="pictureBooks" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <c:forEach begin="0" end="15" items="${fouthList}" step="2" varStatus="status">
                                    <div class="col-xs-12">
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${fouthList[status.index].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${fouthList[status.index].BPrice}</span>
                                                    </div>
                                                    
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${fouthList[status.index].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${fouthList[status.index].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value=""/>
                                                    <ul>
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${fouthList[status.index+1].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${fouthList[status.index+1].BPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${fouthList[status.index+1].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${fouthList[status.index+1].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action">
                                                    <input type="hidden" value="${fouthList[status.index].BId}">
                                                    <ul>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="childrenLiterature" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action">
                                                <input type="hidden" value="${fouthList[status.index+1].BId}">
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="cartoon" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular end -->

<!-- popular start -->
<div class="popular-area home-two">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="section-title res">
                    <h2>励志</h2>
                </div>
                <div class="trend_tab">
                    <div class="tendy-tab-menu text-right" id="motivational">
                        <ul role="tablist">
                            <li role="presentation" class="active"><a href="#successful" aria-controls="successful" role="tab" data-toggle="tab">成功</a></li>
                            <li role="presentation"><a href="#communication" aria-controls="communication" role="tab" data-toggle="tab">人际交往</a></li>
                            <li role="presentation"><a href="#philosophy" aria-controls="philosophy" role="tab" data-toggle="tab">人生哲学</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                    <div class="trend_content row">
                        <div id="successful" role="tabpanel" class="active trend-item">
                            <div class="trend-item-slider">
                                <c:forEach begin="0" end="15" items="${fifthList}" step="2" varStatus="status">
                                    <div class="col-xs-12">
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${fifthList[status.index].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${fifthList[status.index].BPrice}</span>
                                                    </div>
                                                    
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${fifthList[status.index].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${fifthList[status.index].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${fifthList[status.index].BId}"/>
                                                    <ul>
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-product">
                                            <div class="single-product-item">
                                                <div class="single-product-img clearfix hover-effect">
                                                    <a href="#">
                                                        <img class="primary-image" src="${fifthList[status.index+1].BImgName}" alt="">
                                                    </a>
                                                </div>
                                                <div class="single-product-info clearfix">
                                                    <div class="pro-price">
                                                        <span class="new-price">￥${fifthList[status.index+1].BPrice}</span>
                                                    </div>
                                                </div>
                                                <div class="product-content text-center">
                                                    <h3>${fifthList[status.index+1].BName}</h3>
                                                    <h4><a href="books?m=doDetails&bId=${fifthList[status.index+1].BId}">view details</a></h4>
                                                </div>
                                                <div class="product-action"><input type="hidden" value="${fifthList[status.index+1].BId}"/>
                                                    <ul>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                        <li class="add-bag"><a  data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                        <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div id="communication" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>

                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>

                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="philosophy" role="tabpanel" class="trend-item">
                            <div class="trend-item-slider">
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/12.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/11.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/10.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/9.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/8.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/7.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/6.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/5.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/4.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                                
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/3.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/2.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/1.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/14.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-product">
                                        <div class="single-product-item">
                                            <div class="single-product-img clearfix hover-effect">
                                                <a href="#">
                                                    <img class="primary-image" src="img/product/13.jpg" alt="">
                                                </a>
                                            </div>
                                            <div class="single-product-info clearfix">
                                                <div class="pro-price">
                                                    <span class="new-price">￥25.99</span>
                                                </div>
                                            </div>
                                            <div class="product-content text-center">
                                                <h3>Full sleev</h3>
                                                <h4><a href="#">view details</a></h4>
                                            </div>
                                            <div class="product-action"><input type="hidden" value=""/>
                                                <ul>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Compage"><i class="fa fa-refresh"></i></a></li>-->
                                                    <li class="add-bag"><a href="#" data-toggle="tooltip" title="Shopping Cart">Add to Bag</a></li>
                                                    <!--<li><a href="#" data-toggle="tooltip" title="Like it!"><i class="fa fa-heart"></i></a></li>-->
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- popular end -->

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
                        <p>2018 ® All Rights Reserved <span><a href="http://jqueryfuns.com/">DevItems</a></span>.</p>
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
<script src="js/booksIndex.js"></script>
</body>
</html>
