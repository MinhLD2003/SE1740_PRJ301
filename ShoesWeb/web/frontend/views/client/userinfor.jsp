<%-- 
    Document   : userinfor
    Created on : Jul 16, 2023, 9:35:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


        <style type="text/css">
            body {
                margin-top: 20px;
                background-color: #f2f6fc;
                color: #69707a;
            }

            .img-account-profile {
                height: 10rem;
            }

            .rounded-circle {
                border-radius: 50% !important;
            }

            .card {
                box-shadow: 0 0.15rem 1.75rem 0 rgb(33 40 50 / 15%);
            }

            .card .card-header {
                font-weight: 500;
            }

            .card-header:first-child {
                border-radius: 0.35rem 0.35rem 0 0;
            }

            .card-header {
                padding: 1rem 1.35rem;
                margin-bottom: 0;
                background-color: rgba(33, 40, 50, 0.03);
                border-bottom: 1px solid rgba(33, 40, 50, 0.125);
            }

            .form-control,
            .dataTable-input {
                display: block;
                width: 100%;
                padding: 0.875rem 1.125rem;
                font-size: 0.875rem;
                font-weight: 400;
                line-height: 1;
                color: #69707a;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #c5ccd6;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 0.35rem;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            .nav-borders .nav-link.active {
                color: #0061f2;
                border-bottom-color: #0061f2;
            }

            .nav-borders .nav-link {
                color: #69707a;
                border-bottom-width: 0.125rem;
                border-bottom-style: solid;
                border-bottom-color: transparent;
                padding-top: 0.5rem;
                padding-bottom: 0.5rem;
                padding-left: 0;
                padding-right: 0;
                margin-left: 1rem;
                margin-right: 1rem;
            }
        </style>
    </head>
    <body>
        <%@include file="/frontend/common/client/header.jsp" %>
        <div id="snippetContent" class="container-fluid" style="margin-top:130px;">
            <div class="container-xl px-4 mt-4">
                <nav class="nav nav-borders">
                    <div class="nav-link active ms-0">Profile</div>
                </nav>
                <hr class="mt-0 mb-4">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="card mb-4 mb-xl-0">
                            <div class="card-header">Profile Picture</div>
                            <div class="card-body text-center"> <img
                                    class="img-account-profile rounded-circle mb-2"
                                    src="https://bootdey.com/img/Content/avatar/avatar1.png" alt>
                                <div class="small font-italic text-muted mb-4">JPG or PNG no larger than
                                    5 MB</div> <button
                                    class="btn btn-primary" type="button">Upload new image</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <div class="card mb-4">
                            <div class="card-header">Account Details</div>
                            <div class="card-body">
                                <form>
                                    <div class="mb-3"> <label class="small mb-1" for="inputUsername">Username
                                            (how your name
                                            will appear to other users on the site)</label> 
                                        <input class="form-control" id="inputUsername" type="text" value="username">
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputFirstName">First name</label> 
                                            <input class="form-control" id="inputFirstName"  type="text"
                                                   placeholder="Enter your first name" value="Valerie">
                                        </div>
                                        <div class="col-md-6"> <label class="small mb-1" for="inputLastName">Last
                                                name</label> 
                                            <input class="form-control" id="inputLastName"type="text"
                                                   placeholder="Enter your last name" value="Luna"></div>
                                    </div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-6"> <label class="small mb-1" for="">Address</label> 
                                            <input class="form-control" type="text"placeholder="Enter your organization name" value="Start Bootstrap">
                                        </div>
                                        <div class="col-md-6"> <label class="small mb-1" for="inputLocation">City/Province</label>
                                            <input class="form-control" id="inputLocation" type="text"
                                                   placeholder="Enter your location" value="San Francisco, CA">
                                        </div>
                                    </div>
                                    <div class="mb-3"> <label class="small mb-1" for="inputEmailAddress">Email
                                            address</label> <input class="form-control" id="inputEmailAddress"
                                                               type="email"
                                                               placeholder="Enter your email address" value="name@example.com"></div>
                                    <div class="row gx-3 mb-3">
                                        <div class="col-md-6"> <label class="small mb-1" for="inputPhone">Phone
                                                number</label> <input class="form-control" id="inputPhone" type="tel"
                                                                  placeholder="Enter your phone number" value="555-123-4567"></div>
                                        <div class="col-md-6"> <label class="small mb-1" for="inputBirthday">Birthday</label>
                                            <input class="form-control" id="inputBirthday" type="text"
                                                   name="birthday"
                                                   placeholder="Enter your birthday" value="06/10/1988">
                                        </div>
                                    </div> <button class="btn btn-primary" type="button">Save changes</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
    <script src="<c:url value='/frontend/template/jsPlugins/filter.js'/>"></script>
</html>
