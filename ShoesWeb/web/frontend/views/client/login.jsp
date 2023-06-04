<%-- 
    Document   : login
    Created on : May 23, 2023, 6:37:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/login.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/Satoshi_Complete/Fonts/WEB/css/satoshi.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="d-lg-flex min-vh-100 login-page">
            <div class="img-fluid img"
                 style="background-image: url('https://static.vecteezy.com/system/resources/previews/008/454/774/original/landscape-web-banner-template-in-blue-background-with-sneaker-shoes-design-vector.jpg');">
            </div>
            <c:set var="failLoginMess" value="${requestScope.failLoginMess}" />
            <div class="contents">
                <div class="container">
                    <div class="d-flex justify-content-center align-content-center">
                        <div class="col-md-7">
                            <div class="mb-4">
                                <h3>Log in</h3>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem, ullam!</p>
                            </div>
                            <c:if test="${failLoginMess != null}">
                                <div class="login-fail-alert">
                                    Invalid username or password.Please try again.
                                </div>
                            </c:if>
                            <form action="<c:url value='/login'/>" method ="post">
                                <div class="form-group">
                                    <label class="form-label" for="">Username</label>
                                    <input class="form-control" type="text" name="username" required>

                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="">Password</label>
                                    <input id="password-input" class="form-control" type="password" name="password" required>
                                    <i class="fa fa-eye" id="togglePassword" style=" cursor: pointer;"></i>

                                </div>
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="checkbox-area">
                                        <input type="checkbox" name="remember">
                                        <span class="checkmark"></span>
                                        <span class="text-muted">Remember me</span>
                                    </div>
                                    <div>
                                        <a href="#">Forgot password</a>
                                    </div>
                                </div>
                                <input class=" w-100 mt-3 p-2 btn btn-block btn-primary" type="submit" value="Log In">

                                <div class="divider">
                                    <span class=" d-block text-center my-4 text-muted"> or</span>
                                </div>
                                <div class="social-login">
                                    <div class="mb-2">
                                        <a href="#"
                                           class="facebook text-light btn d-flex justify-content-center align-items-center">
                                            <span class=""><i class="fa fa-facebook"></i></span>&nbsp; Login with Facebook
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#"
                                           class="google text-light  btn d-flex justify-content-center align-items-center">
                                            <span class=""><i class="fa fa-google"></i></span>&nbsp; Login with Google
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#"
                                           class="twitter btn text-light  d-flex justify-content-center align-items-center">
                                            <span class=""><i class="fa fa-twitter"></i></span>&nbsp;  Login with Twitter
                                        </a>
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>
            </div>

        </div>
        <script>
            const togglePassword = document.getElementById('togglePassword');
            const password = document.getElementById('password-input');

            togglePassword.addEventListener('click', function (e) {
                // toggle the type attribute
                const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                password.setAttribute('type', type);
                // toggle the eye slash icon
                this.classList.toggle('fa-eye-slash');
            });
        </script>

    </body>
</html>
