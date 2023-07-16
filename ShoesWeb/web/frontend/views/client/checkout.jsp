<%-- 
Document   : checkout
Created on : Jul 15, 2023, 12:13:43 AM
Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/linearicons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/themify-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/style.css">

    </head>
    <body>
        <%@include file="/frontend/common/client/header.jsp"%>

        <c:set var="user" value="${sessionScope.user}"></c:set>
            <!--================Checkout Area =================-->
            <section class="checkout_area section_gap" style="margin-top:50px; margin-bottom:50px;">
                <div class="container">
                    <div class="billing_details">

                        <div class="row">
                            <div class="col-lg-7">
                                <h3>Delivery Address</h3>
                                <form class="row contact_form" action="'<c:url value="/checkout?action=complete_checkout"></c:url>'" method="post" novalidate="novalidate">
                                    <div class="col-md-6 form-group p_star">
                                        <label class="" data-placeholder="" >Full Name</label>
                                        <input type="text" class="form-control" value="${user.fullName}"id="first" name="fullname">
                                </div>
                                <div class="col-md-5 form-group p_star">
                                    <label class="" data-placeholder="" >Phone Number</label>
                                    <input type="text" class="form-control" id="number" name="phone" value="${user.phoneNumber}">
                                </div>
                                <div class="col-md-8 form-group p_star">
                                    <label class="" data-placeholder="" >Email Address</label>
                                    <input type="text" class="form-control" id="email" name="email" value="${user.emailAddress}" placeholder="name@gmail.com">
                                </div>

                                <div class="col-md-12 form-group p_star">
                                    <label class="" data-placeholder="" >Address Line 1</label>
                                    <input type="text" class="form-control" id="add1" name="addr1" value="${user.address}">

                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <label class="" data-placeholder="" >Address line 2<small> (optional)</small></label>
                                    <input type="text" class="form-control" id="add2" name="addr2">
                                </div>
                                <div class="col-md-12 form-group">
                                    <label class="" data-placeholder="" >City/Province</label>
                                    <input type="text" class="form-control" id="region" name="city">
                                </div>
                                <div class="col-md-12 form-group">
                                    <label class="" data-placeholder="" >Postal Code/Zip</label>
                                    <input type="text" class="form-control" id="region" name="region">
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <label class="" data-placeholder="Order Note">Order Note</label>
                                    <textarea class="form-control" id="order2" name="ordernote"></textarea>
                                </div>
                            </form>
                        </div>
                        <c:set var="cart" value="${sessionScope.shoppingcart}"></c:set>
                            <div class="col-lg-5">
                                <div class="order_box">
                                    <h2>Your Order</h2>
                                    <div>
                                        <ul class="list list_2">
                                            <li><a href="#">Items <span>$${cart.total}</span></a></li>
                                        <li><a href="#">Shipping <span> $20.00</span></a></li>
                                        <li><a href="#">Tax <span> $20.00</span></a></li>
                                        <li><a href="#">Total <span>$${cart.total + 20}</span></a></li>
                                    </ul>
                                </div>

                                <div>
                                    <ul class="list">
                                        <li><a href="#">ORDER DETAILS <span></span></a></li>
                                            <c:forEach var="itemCart" items='${cart.cartLine}' >
                                                <c:set var="productCart" value='${itemCart.product}'></c:set>
                                                <li>
                                                    <a href="#">${productCart.name}  <small>[Size - ${itemCart.size}]</small>
                                                    <span class="middle">x${itemCart.quantity}</span> 
                                                    <span class="last">$${itemCart.subtotal}</span></a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <div class="creat_account">
                                    <input type="checkbox" id="f-option4" name="selector">
                                    <label for="f-option4">I’ve read and accept the </label>
                                    <a href="#">terms & conditions*</a>
                                </div>
                                <a class="primary-btn" href="#">Place Order</a>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
    <%@include file="/frontend/common/client/footer.jsp" %>
    <script src="<c:url value='/frontend/template/jsPlugins/vendor/jquery-2.2.4.min.js'/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
            integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/vendor/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/jquery.ajaxchimp.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/jquery.nice-select.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/jquery.sticky.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/nouislider.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/countdown.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/jquery.magnific-popup.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/frontend/template/jsPlugins/main.js'/>"></script>

</html>
