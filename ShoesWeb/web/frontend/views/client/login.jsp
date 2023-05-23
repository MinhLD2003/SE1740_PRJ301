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
        <link rel="stylesheet" href="../../template/css/bootstrap-reboot.min.css">
    </head>
    <body>
        <section>
            <div>
                <div>
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <img
                            class="img-fluid"

                            />
                    </div>
                    <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                        <form action="" method="post">
                            <!-- Email input -->
                            <div>
                                <label for="form1Example13"
                                       >Username</label
                                >
                                <input
                                    type="email"
                                    name="username"
                                    class="form-control form-control-lg"
                                    />

                            </div>
                            <!-- Password input -->
                            <div>
                                <label>Password</label>
                                <input
                                    type="password"
                                    name="password"
                                    />

                            </div>

                            <div>
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value=""
                                       
                                        checked
                                        />
                                    <label class="form-check-label" for="form1Example3">
                                        Remember me
                                    </label>
                                </div>
                                <a href="#!">Forgot password?</a>
                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                Sign in
                            </button>

                            <div class="divider">
                                <p>OR</p>
                            </div>

                            <a
                                class="btn btn-primary btn-lg btn-block"
                                style="background-color: #3b5998"
                                href="#!"
                                role="button"
                                >
                                Continue with Facebook <i class="bi bi-facebook"></i>
                            </a>
                            <a
                                class="btn btn-primary btn-lg btn-block"
                                style="background-color: #55acee"
                                href="#!"
                                role="button"
                                >
                                Continue with Twitter <i class="bi bi-twitter"></i
                                ></a>
                            <a
                                class="btn btn-primary btn-lg btn-block"
                                style="background-color: #ff4524"
                                href="#!"
                                role="button"
                                >
                                Continue with Google <i class="bi bi-google "></i>
                            </a>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
