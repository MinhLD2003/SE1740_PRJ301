<%-- 
    Document   : producteditpage
    Created on : Jul 14, 2023, 11:20:41 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/magnific-popup.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/managementpage.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
    </head>
    <body>
        <%@include file="/frontend/common/admin/header.jsp" %>
        <c:set var="product" value="${requestScope.product}"></c:set>
            <div id="editEmployeeModal" class=" " style="margin-top:150px; margin-bottom: 50px;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="<c:url value='/admin-manage-product?action=edit'></c:url>" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Edit Product</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Product Name</label>
                                    <input type="text" class="form-control" value="${product.name}">
                            </div>
                            <div class="form-group">
                                <label>Product Code</label>
                                <input type="text" class="form-control" value="${product.productCode}" >
                            </div>
                            <div class="form-group">
                                <label>Cost</label>
                                <input type="number" class="form-control" min="0"  value="${product.productCost}">
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input type="number" class="form-control" min="0"  value="${product.productSellingPrice}">
                            </div>
                            <div class="d-flex justify-content-around align-content-center">
                                <c:set var="brands" value="${requestScope.brands}"></c:set>
                                    <div class="form-group">
                                        <div>Brand</div>
                                        <select name="brand">
                                        <c:forEach items="${brands}" var="br">
                                            <c:choose>
                                                <c:when test='${br == product.brand}'>
                                                    <option value='${br}' selected>${br}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value='${br}'>${br}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div>Color</div>
                                    <c:set var="colors" value="${requestScope.colors}"></c:set>
                                        <select name="color">
                                        <c:forEach items="${colors}" var="color">
                                            <c:choose>
                                                <c:when test='${color == product.color}'>
                                                    <option value='${color}' selected>${color}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value='${color}'>${color}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div>Sport</div>
                                    <c:set var="sports" value="${requestScope.sports}"></c:set>
                                        <select name="sport">
                                        <c:forEach items="${sports}" var="sport">
                                            <c:choose>
                                                <c:when test='${product.categories.contains(sport)}'>
                                                    <option value='${sport}' selected>${sport}</option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value='${sport}'>${sport}</option>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div>Gender</div>
                                    <select name="gender">
                                        <option>Men</option>
                                        <option>Women</option> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <div>Style</div>
                                    <select name="Style">
                                        <option>High Top</option>
                                        <option>Mid Top</option>
                                        <option>Low Top</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" >${product.description}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea class="form-control" >${product.detail}</textarea>
                            </div>
                            <div class="form-group">
                                <div class="container">
                                    <div class="row">
                                        <c:set var="sizes" value="${requestScope.sizes}"></c:set>
                                            <select name="size"class="js-select2" multiple="multiple">
                                            <c:forEach items="${sizes}" var="size">

                                                <c:set var="numSize" value="${fn:substringBefore(originalString, ' ')}" />

                                                <c:choose>
                                                    <c:when test='${product.sizeQuantityMap.containsKey(size)}'>
                                                        <option value='${size}' data-badge="" selected>${size}</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value='${size}'>${size}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <c:forEach var="image" items="${product.imageUrls}">
                                <div class="form-group">
                                    <label>URL Image</label>
                                    <input type="text" class="form-control" value="${image}">
                                </div>
                            </c:forEach>
                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>

    <script type="text/javascript">
        $(".js-select2").select2({
            closeOnSelect: false,
            placeholder: "Size",
            allowClear: true,
            tags: true
        });


    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

    <script src="<c:url value='/frontend/template/jsPlugins/main.js'/>"></script>

</html>
