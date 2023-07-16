<%-- 
    Document   : management
    Created on : Jul 12, 2023, 9:00:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/linearicons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/cssPlugins/themify-icons.css">
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

    <style>

    </style>
    <%@include file="/frontend/common/admin/header.jsp" %>
    <c:set var="productList" value="${requestScope.productList}" ></c:set>
        <div class="container" style="margin-top:200px; margin-bottom: 50px;">
            <div class="table-wrapper ">
                <div class="table-title">
                    <div class="d-flex justify-content-between mt-3 mb-3">
                        <div class="col-sm-6">
                            <h2>Manage <b>Products</b></h2>
                        </div>
                        <div class="col-sm-6 d-flex justify-content-end">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                    class="material-icons">&#xE147;</i> <span>Add New Product</span>
                            </a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i
                                    class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>Product Name</th>
                            <th>Product Code</th>
                            <th>Cost</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Brand</th>
                            <th>Color</th>
                            <th>View</th>
                            <th>Actions</th>
                        </tr>
                    </thead>

                    <tbody>
                    <c:forEach items="${productList}" var="product">
                        <tr>
                            <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox5" name="options[]" value="1">
                                    <label for="checkbox5"></label>
                                </span>
                            </td>
                            <td>${product.name}</td>
                            <td>${product.productCode}</td>
                            <td>${product.productCost}</td>
                            <td>${product.productSellingPrice}</td>
                            <td>${product.stock}</td>
                            <td>${product.brand}</td>
                            <td>${product.color}</td>
                            <td><i class="fas fa-eye"></i></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin-manage-product?redirect=edit&product_code=${product.productCode}" class="edit" >
                                    <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                                </a>
                                <a href="#deleteEmployeeModal" class="delete" onclick="deleteProduct(this)" data-id="${product.productCode}"
                                   data-toggle="modal">
                                    <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">

                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Add Modal HTML -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<c:url value='/admin-manage-product?action=add'></c:url>" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Product Name</label>
                                <input type="text" name="product_name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Product Code</label>
                                <input type="text"name="product_code" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Cost</label>
                                <input type="number" name="product_cost"class="form-control" min="0" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input type="number" name="product_price"class="form-control" min="0" required>
                            </div>
                            <div class="d-flex justify-content-around align-content-center">
                                <div class="form-group">
                                    <div>Brand</div>
                                <c:set var="brands" value="${requestScope.brands}"></c:set>
                                    <select name="brand">
                                    <c:forEach items="${brands}" var="brand">
                                        <option value="${brand}">${brand}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <div>Color</div>
                                <c:set var="colors" value="${requestScope.colors}"></c:set>
                                    <select name="color">
                                    <c:forEach items="${colors}" var="color">
                                        <option value="${color}">${color}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <div>Sport</div>
                                <c:set var="sports" value="${requestScope.sports}"></c:set>
                                    <select name="sport">
                                    <c:forEach items="${sports}" var="sport">
                                        <option value="${sport}">${sport}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <div>Gender</div>
                                <select name="gender">
                                    <option value="Men">Men</option>
                                    <option value="Women">Women</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <div>Style</div>
                                <select name="style">
                                    <option value="High Top">High Top</option>
                                    <option value="Mid Top">Mid Top</option>
                                    <option value="Low Top">Low Top</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea class="form-control" name="description" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>Detail</label>
                            <textarea class="form-control" name="detail"required></textarea>
                        </div>
                        <div class="form-group">
                            <div class="container">
                                <div class="row">
                                    <c:set var="sizes" value="${requestScope.sizes}"></c:set>
                                        <select name="sizes" class="js-select2" multiple="multiple">
                                        <c:forEach items="${sizes}" var="size">
                                            <option value="${size}" data-badge="">${size}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="number" name="quantity" class="form-control"required min="1">
                        </div>
                        <div class="form-group">
                            <label>URL Image</label>
                            <input type="text" name="image" class="form-control"required>
                        </div>
                        <div class="form-group">
                            <label>URL Image</label>
                            <input type="text"  name="image"class="form-control">
                        </div> <div class="form-group">
                            <label>URL Image</label>
                            <input type="text"  name="image"class="form-control">
                        </div>
                        <div class="form-group">
                            <label>URL Image</label>
                            <input type="text"  name="image"class="form-control">
                        </div>
                        <div class="form-group">
                            <label>URL Image</label>
                            <input type="text"  name="image"class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-info" value="Save">
                    </div>

                </form>
            </div>
        </div>
    </div>
    <!-- Edit Modal HTML -->

    <!-- Delete Modal HTML -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<c:url value='/admin-manage-product?action=delete'></c:url>" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title">Delete Employee</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to delete these Records?</p>
                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="hidden" id="delete_product_input" name="product_code_delete" value="">
                        <input type="submit" class="btn btn-danger" name="delete" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="/frontend/common/client/footer.jsp" %> 
<script type="text/javascript">
    function deleteProduct(link) {
        var dataId = link.getAttribute('data-id');
        let deleteProductInput = document.getElementById('delete_product_input');
        deleteProductInput.value = dataId;

    }
    $(".js-select2").select2({
        closeOnSelect: false,
        placeholder: "Size",
        // allowHtml: true,
        allowClear: true,
        tags: true // создает новые опции на лету
    });
    document.addEventListener("DOMContentLoaded", function () {
        // Activate tooltip
        var tooltips = document.querySelectorAll('[data-toggle="tooltip"]');
        tooltips.forEach(function (tooltip) {
            tooltip.addEventListener("mouseover", function () {
                // Display tooltip logic here
            });
            tooltip.addEventListener("mouseout", function () {
                // Hide tooltip logic here
            });
        });

        // Select/Deselect checkboxes
        var checkbox = document.querySelectorAll('table tbody input[type="checkbox"]');
        var selectAll = document.getElementById("selectAll");

        selectAll.addEventListener("click", function () {
            checkbox.forEach(function (checkbox) {
                checkbox.checked = selectAll.checked;
            });
        });

        checkbox.forEach(function (checkbox) {
            checkbox.addEventListener("click", function () {
                var isAnyCheckboxUnchecked = Array.from(checkbox).some(function (checkbox) {
                    return !checkbox.checked;
                });
                selectAll.checked = !isAnyCheckboxUnchecked;
            });
        });
    });
    $(document).ready(function () {
        // Activate tooltip
        $('[data-toggle="tooltip"]').tooltip();

        // Select/Deselect checkboxes
        var checkbox = $('table tbody input[type="checkbox"]');
        $("#selectAll").click(function () {
            if (this.checked) {
                checkbox.each(function () {
                    this.checked = true;
                });
            } else {
                checkbox.each(function () {
                    this.checked = false;
                });
            }
        });
        checkbox.click(function () {
            if (!this.checked) {
                $("#selectAll").prop("checked", false);
            }
        });
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
