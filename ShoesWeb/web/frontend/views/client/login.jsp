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
        <link rel="stylesheet" href="../../template/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../template/login.css">
    </head>
    <body>
        <div class="d-lg-flex half min-vh-100 login-page">
            <div class="img-fluid img"
                 style="background-image: url('https://static.vecteezy.com/system/resources/previews/008/454/774/original/landscape-web-banner-template-in-blue-background-with-sneaker-shoes-design-vector.jpg');">
            </div>

            <div class="contents">
                <div class="container">
                    <div class="d-flex justify-content-center align-content-center">
                        <div class="col-md-7">
                            <div class="mb-4">
                                <h3>Log in</h3>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem, ullam!</p>
                            </div>
                            <form>
                                <div class="form-group">
                                    <input class="form-control" type="text" required name="username">
                                    <label class="form-label" for="">Username</label>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" required name="password">
                                    <label class="form-label" for="">Password</label>
                                </div>
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="checkbox-area">
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                        <span class="text-muted">Remember me</span>
                                    </div>
                                    <div>
                                        <a href="#">Forgot password</a>
                                    </div>
                                </div>
                                <input class=" w-100 mt-3 p-2 btn btn-block btn-primary" type="submit" value="Log In">

                                <div class="divider">
                                    <span class="d-block text-center my-4 text-muted"> or</span>
                                </div>
                                <div class="social-login">
                                    <div class="mb-2">
                                        <a href="#"
                                           class="facebook text-light btn d-flex justify-content-center align-items-center">
                                            <span class=""></span> Login with Facebook
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#"
                                           class="google text-light  btn d-flex justify-content-center align-items-center">
                                            <span class=""></span> Login with Google
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#"
                                           class="twitter btn text-light  d-flex justify-content-center align-items-center">
                                            <span class=" "></span> Login with Twitter
                                        </a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
