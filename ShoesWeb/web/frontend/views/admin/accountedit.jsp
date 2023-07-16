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
       </head>
    <body>
        <%@include file="/frontend/common/admin/header.jsp" %>
        <c:set var="user" value="${requestScope.account}"></c:set>
            <div id="editEmployeeModal" class="" style="margin-top:150px; margin-bottom: 50px;">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="<c:url value='/admin-manage-account?action=edit'></c:url>" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Edit Account</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>User ID</label>
                                    <input type="text" name="id" value="${user.id}"class="form-control" readonly>
                            </div>
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text"value="${user.username}" name="username" class="form-control" readonly>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email"value="${user.emailAddress}" name="emailaddress" class="form-control"readonly>
                            </div>
                            <div class="form-group">
                                <label>Full Name</label>
                                <input type="text" value="${user.fullName}" name="fullname" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" value="${user.phoneNumber}" name="phone"class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" value="${user.address}" name="address"class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Role</label>
                                <input type="text" value="${user.roleName}"name="rolename"class="form-control" >
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
    </body>
    <%@include file="/frontend/common/client/footer.jsp" %> 
    <script type="text/javascript">



    </script>

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
