<%-- 
    Document   : cart
    Created on : Jul 11, 2023, 5:20:00 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>

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

        <style>
            .wrapper{
                width:200px;
                padding:20px;
                height: 150px;
            }
            table, td , tr {
                text-align: center;
            }

        </style>

    </head>
    <body>
        <c:set var="cart" value="${sessionScope.shoppingcart}"></c:set>
        <%@include file="/frontend/common/client/header.jsp" %>
        <section class="cart_area" style="margin-top:150px;">
            <div class="container d-md-flex justify-content-sm-center">
                <div class="cart_inner col-9">
                    <div class="table-wrapper">
                        <c:if test="${cart== null || cart.cartLine.size() == 0}">
                            <div>
                                <h1>EMPTY BAG </h1>
                                <p>Your bag is empty now!</p>
                            </div>
                        </c:if>
                        <c:if test="${cart != null && cart.cartLine.size() != 0}">

                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">Product</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Size</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="itemCart" items='${cart.cartLine}' >
                                        <c:set var="productCart" value='${itemCart.product}'></c:set>
                                            <tr>
                                                <td>
                                                    <div >
                                                        <div>
                                                            <img src="${productCart.imageUrls.get(0)}" alt="" style="width:100px; height:100px; ">
                                                    </div>
                                                    <div class="media-body">
                                                        <small><p>${productCart.name}<br> ${productCart.productCode}</p>
                                                        </small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${productCart.productSellingPrice}</h5>
                                            </td>
                                            <td>

                                                <div class="product_count">
                                                    <select name="size" class="size_selection" data ="${productCart.productCode}">
                                                        <c:forEach var="productSize" items='${productCart.sizeQuantityMap}'>
                                                            <c:choose>
                                                                <c:when test='${itemCart.size == productSize.key}'>
                                                                    <option value='${productSize.key}' selected>${productSize.key}</option>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <option value='${productSize.key}'>${productSize.key}</option>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="product_count" >
                                                    <div class="wrapper">
                                                        <select class="product_quantity" onchange="updateQuantity('${productCart.productCode}')"class="form-control" data ="${productCart.productCode}">
                                                            <c:forEach var="iteratorQty" begin="1" end="${itemCart.getSizeStock()}">
                                                                <c:choose>
                                                                    <c:when test='${itemCart.quantity == iteratorQty}'>
                                                                        <option value='${iteratorQty}' selected>${iteratorQty}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option value='${iteratorQty}'>${iteratorQty}</option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </select></div>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>$${itemCart.subtotal}</h5>
                                            </td>
                                            <td><button class="btn" id="removeBtn" style="color:white;background-color:red;">
                                                    <span>Remove</span>
                                                </button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
                <div class="summary">
                    <div class="header">
                        <h2>Summary</h2>
                    </div>
                    <div class="summary_info">
                        <div class="d-flex justify-content-between">
                            <h5>Subtotal</h5>
                            <h5>$${cart.total}</h5>
                        </div>
                    </div>
                    <div class="out_button_area mt-3">
                        <div class=" d-flex align-items-center">
                            <a class="button_function" href="#">Guest CheckOut</a>
                            <a class="button_function" href="#">Member CheckOut</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <script type="text/javascript">


            function updateQuantity(productCode) {
                var sizeBtn = document.querySelectorAll(".size_selection");
                var selectedSize = '';
                console.log(sizeBtn);
                sizeBtn.forEach((btn) => {
                  
                    if (btn.getAttribute('data') === productCode) {
                        selectedSize = btn.value;

                    }
                });
                var url = '${pageContext.request.contextPath}/cart?action=update_qty&product_code=';
                url = url + productCode + '&size=';
                url = url + selectedSize + '&quantity=';
                var selectElement = document.querySelectorAll('.product_quantity');
                var select_quantity = '';
                selectElement.forEach((btn) => {
                    if (btn.getAttribute('data') === productCode) {
                        select_quantity = btn.value;
                    }
                });

                url = url + select_quantity;
                window.location.href = url;
            }
            const removeBtn = document.querySelector('#removeBtn');
            removeBtn.addEventListener('click', () => {
                var url = "${pageContext.request.contextPath}/cart?action=remove_item&product_code=${product.productCode}";
                        window.location.href = url;
                    });
        </script>
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
        <script src="<c:url value='/frontend/template/jsPlugins/jquery.magnific-popup.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/owl.carousel.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/main.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/filter.js'/>"></script>
    </body>
</html>
