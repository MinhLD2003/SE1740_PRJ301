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
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home">Home</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=Men">Men's</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=Women">Women's</a>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=Kid">Kid's</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/home?redirect=productpage&page=Sale">Sale</a>
                                </li>
                            </ul>
                            <ul class="navbar-nav nav navbar-right">
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/frontend/views/client/wishlist.jsp"><span class="ti-heart"></span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.request.contextPath}/frontend/views/client/cart.jsp" class="cart"><span class="ti-bag"></span>
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
                                <c:if test="${sessionScope.user != null}">
                                    <div style="margin-top:11px;">${sessionScope.user.username}</div>
                                </c:if>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink"
                                    style="">
                                    <c:if test="${sessionScope.user != null}">
                                        <li><a class="dropdown-item" href="#">My profile</a></li>
                                        <li><a class="dropdown-item" href="#">Settings</a></li>
                                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home?redirect=logout">Logout</a></li>
                                       
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
            <div class="search_input" id="search_input_box">
                <div class="container">
                    <form action="<c:url value='/productcontroller'/>" class="d-flex justify-content-between">
                        <input type="text" class="form-control" id="search_input" name="search_value" placeholder="Search Here">
                        <input type="hidden" name ="action" value="search">
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
