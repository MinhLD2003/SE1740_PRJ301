<%-- 
    Document   : header
    Created on : Jun 11, 2023, 7:03:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/linearicons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/themify-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/style.css">
    </head>
    
    <body>
        <section>
            <header class="header_area sticky-header">
                <div class="main_menu">
                    <nav class="navbar navbar-expand-lg navbar-light main_box">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <a class="navbar-brand logo_h" href="index.html"><img src="../../../images/sneaker-world-logo.png"
                                                                                  width="150px;" alt=""></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse offset " id="navbarSupportedContent">
                                <ul class="nav navbar-nav menu_nav ml-auto ">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home</a>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a class="nav-link" href="index.html">All</a>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a class="nav-link" href="index.html">Men's</a>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a class="nav-link" href="index.html">Women's</a>
                                    </li>
                                    <li class="nav-item submenu dropdown">
                                        <a class="nav-link" href="index.html">Kid's</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#">Sale</a></li>
                                </ul>
                                <ul class="navbar-nav nav navbar-right">
                                    <li class="nav-item"><a href="#"><span class="ti-heart"></span></a></li>
                                    <li class="nav-item"><a href="#" class="cart"><span class="ti-bag"></span></a></li>
                                    <li class="nav-item">
                                        <button class="search"><span class="lnr ti-search" id="search"></span></button>
                                    </li>
                                </ul>
                                <div class="navbar-right navbar-nav nav-item submenu dropdown">
                                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-user"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink"
                                        style="">
                                        <li><a class="dropdown-item" href="#">My profile</a></li>
                                        <li><a class="dropdown-item" href="#">Settings</a></li>
                                        <li><a class="dropdown-item" href="#">Logout</a></li>
                                        <li><a class="dropdown-item" href="#">Sign in</a></li>
                                        <li><a class="dropdown-item" href="#">Sign up</a></li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                    </nav>
                </div>
                <div class="search_input" id="search_input_box">
                    <div class="container">
                        <form class="d-flex justify-content-between">
                            <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                            <button type="submit" class="btn"></button>
                            <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                        </form>
                    </div>
                </div>
            </header>
        </section>
        <!--Main Navigation-->

       
    </body>
    <script src="../../template/jsPlugins/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
    <script src="../../template/jsPlugins/vendor/bootstrap.min.js"></script>
    <script src="../../template/jsPlugins/jquery.ajaxchimp.min.js"></script>
    <script src="../../template/jsPlugins/jquery.nice-select.min.js"></script>
    <script src="../../template/jsPlugins/jquery.sticky.js"></script>
    <script src="../../template/jsPlugins/nouislider.min.js"></script>
    <script src="../../template/jsPlugins/countdown.js"></script>
    <script src="../../template/jsPlugins/jquery.magnific-popup.min.js"></script>
    <script src="../../template/jsPlugins/owl.carousel.min.js"></script>
    <script src="../../template/jsPlugins/main.js"></script>
</html>
