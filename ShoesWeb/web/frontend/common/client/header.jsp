<%-- 
    Document   : header
    Created on : Jun 11, 2023, 7:03:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

    </head>

    <body>
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.html"><img src="${pageContext.request.contextPath}/images/sneaker-world-logo.png"
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
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=men">Men's</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=women">Women's</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=kid">Kid's</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/home?redirect=productpage&page=sale">Sale</a>
                                </li>
                            </ul>
                            <ul class="navbar-nav nav navbar-right">
                                <li class="nav-item">
                                    <a href="/home?redirect=wishlist"><span class="ti-heart"></span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/home?redirect=cart" class="cart"><span class="ti-bag"></span>
                                    </a>
                                </li>
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

</html>
