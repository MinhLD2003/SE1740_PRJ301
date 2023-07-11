<%-- 
    Document   : cart
    Created on : Jul 11, 2023, 5:20:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <%@include file="/frontend/common/client/header.jsp" %>
        <section class="cart_area" style="margin-top:150px;">
            <div class="container d-flex">
                <div class="cart_inner col-8">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex">
                                                <img src="img/cart.jpg" alt="">
                                            </div>
                                            <div class="media-body">
                                                <p>Minimalistic shop for multipurpose use</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$360.00</h5>
                                    </td>
                                    <td>
                                        <div class="product_count">
                                            <select name="count">
                                                <option value="1">1</option>
                                                  <option value="1">1</option>
                                                    <option value="1">1</option>
                                                  
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <h5>$720.00</h5>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="summary">
                    <div class="header">
                        <h2>Summary</h2>
                    </div>
                    <div class="summary_info">
                        <div class="d-flex justify-content-between">
                            <h5>Subtotal</h5>
                            <h5>$2160.00</h5>
                        </div>
                    </div>
                    <div class="out_button_area mt-3">
                        <div class=" d-flex align-items-center">
                            <a class="button_function" href="#">Continue Shopping</a>
                            <a class="button_function" href="#">Proceed to checkout</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>

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
        <script src="<c:url value='/frontend/template/jsPlugins/filter.js'/>"></script>
    </body>
</html>
