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
        <header class="header_area ">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="logo_h" href="index.html"><img src="${pageContext.request.contextPath}/images/sneaker-world-logo.png"
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
                                    <a class="nav-link" href="index.html">Dashboard</a>
                                </li>
                                <li class="nav-item">
                                    <div class="collapse navbar-collapse" id="navbar-list-3">
                                        <ul class="navbar-nav">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Catalog
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                    <a class="dropdown-item" href="#">Products</a>
                                                    <a class="dropdown-item" href="#">Categories<a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </li>   
                                        </ul>
                                    </div>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="index.html">Orders</a>
                                </li>
                                <li class="nav-item ">
                                    <div class="collapse navbar-collapse" id="navbar-list-3">
                                        <ul class="navbar-nav">
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                   Account
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                                                    <a class="dropdown-item" href="#">Customers</a>
                                                    <a class="dropdown-item" href="#">Employee<a>    
                                                </div>
                                            </li>   
                                        </ul>
                                    </div>
                                </li>

                            </ul>

                            <div class="navbar-right navbar-nav nav-item submenu dropdown ml-2">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-user"></i>
                                </a>
                                <c:if test="${sessionScope.user != null}">
                                    <div style="margin-top:11px;">${sessionScope.user.username}</div>
                                </c:if>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink"
                                    style="">
                                    <c:if test="${sessionScope.user != null}">
                                        <li><a class="dropdown-item" href="#">My profile</a></li>
                                        <li><a class="dropdown-item" href="#">Settings</a></li>
                                        <li><a class="dropdown-item" href="#">Logout</a></li>

                                    </c:if>
                                    <c:if test="${sessionScope.user == null}">
                                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home?redirect=sign-in">Sign in</a></li>
                                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home?redirect=sign-up">Sign up</a></li>
                                        </c:if>
                                </ul>

                            </div>
                        </div>

                    </div>
                </nav>
            </div>

        </header>
    </section>
    <!--Main Navigation-->


</body>

</html>
