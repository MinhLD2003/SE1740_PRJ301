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
    <c:set var="accountList" value="${requestScope.accountList}"></c:set>

        <div class="container" style="margin-top:200px; margin-bottom: 50px;">
            <div class="table-wrapper ">
                <div class="table-title">
                    <div class="d-flex justify-content-between mt-3 mb-3">
                        <div class="col-sm-6">
                            <h2>Manage <b>Users</b></h2>
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
                            <th>ID</th>
                            <th>User Name</th>
                            <th>Email</th>
                            <th>Full Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Role</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${requestScope.accountList}" var="user" >
                        <tr>
                            <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox5" name="options[]" value="1">
                                    <label for="checkbox5"></label>
                                </span>
                            </td>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.emailAddress}</td>
                            <td>${user.fullName}</td>
                            <td>${user.phoneNumber}</td>
                            <td>${user.address}</td>
                            <td>${user.roleName}</td>

                            <td>
                                <a href="${pageContext.request.contextPath}/admin-manage-account?redirect=edit&email=${user.emailAddress}" class="edit"><i class="material-icons"
                                                                                                                                                           data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="#deleteEmployeeModal" class="delete" data-toggle="modal">
                                    <i class="material-icons"
                                       data-toggle="tooltip" onclick="deleteAccount(this)" data-id="${user.id}"title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
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

    <!-- Edit Modal HTML -->

    <!-- Delete Modal HTML -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="<c:url value='/admin-manage-account?action=delete'></c:url>" method="post">
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
                        <input type="hidden" name="userIdForDelete"id="userAccountId" value="">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="/frontend/common/client/footer.jsp" %> 
<script type="text/javascript">
    function deleteAccount(link) {
        var dataId = link.getAttribute('data-id');
        let deleteAccount = document.getElementById('userAccountId');
        deleteAccount.value = dataId;
        console.log(dataId);
    }
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
