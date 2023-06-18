<%-- 
    Document   : signup
    Created on : May 28, 2023, 4:18:12 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet"
              href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/dist/mdb5/standard/core.min.css">
        <link rel="stylesheet" id="roboto-subset.css-css"
              href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/mdb5/fonts/roboto-subset.css?ver=3.9.0-update.5"
              type="text/css" media="all">
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

        <c:set var="inuseAlert" value='${requestScope.invalidAlert}'/>
        <section class="vh-120" style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11 " style="margin-top:150px">
                        <div class="card text-black my-5" style="border-radius: 25px;">
                            <div class="card-body p-md-5 ">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-4 mx-1 mx-md-4 mt-2">Sign up</p>

                                        <form class="mx-1 mx-md-4" action="<c:url value='/signup'/>" method="post">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example1c" class="form-control" name="username" required/>
                                                    <label class="form-label" for="form3Example1c">UserName</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="email" id="form3Example3c" class="form-control" name="email" required />
                                                    <label class="form-label" for="form3Example3c">Email</label>
                                                </div>
                                            </div>
                                            <div id="in_use_alert" style="display: none;">
                                                <small style="color:red;"><strong>Warning !</strong> The email has been taken.</small>
                                            </div>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input id="psword" class="form-control" type="password" name="password"
                                                           pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$" 
                                                           required />
                                                    <label class="form-label" for="form3Example4c">Password</label>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input id="confirm_psword" type="password" id="form3Example4cd" class="form-control" required />
                                                    <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                </div>
                                            </div>

                                            <div class="form-check d-flex justify-content-center mb-4">
                                                <input class="form-check-input me-2" style="position: relative" type="checkbox" value="" id="form2Example3c" />
                                                <div>
                                                <label class="form-check-label" for="form2Example3">
                                                    I agree all statements in <a href="#!">Terms of service</a>
                                                </label>
                                                </div>
                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <input type="submit" class="btn btn-primary btn-lg" value="Register">
                                            </div>
                                            <div class="tab-content">
                                                <div class="tab-pane fade show active" id="pills-login" role="tabpanel"
                                                     aria-labelledby="tab-login">
                                                    <form>
                                                        <div class="text-center mb-3">
                                                            <p class="divider-horizontal-blurry" style="border-top:1px solid #e3e3e3">or</p>

                                                            <button type="button" class="btn btn-link btn-floating mx-1">
                                                                <i class="fab fa-facebook-f"></i>
                                                            </button>

                                                            <button type="button" class="btn btn-link btn-floating mx-1">
                                                                <i class="fab fa-google"></i>
                                                            </button>

                                                            <button type="button" class="btn btn-link btn-floating mx-1">
                                                                <i class="fab fa-twitter"></i>
                                                            </button>

                                                            <button type="button" class="btn btn-link btn-floating mx-1">
                                                                <i class="fab fa-github"></i>
                                                            </button>
                                                        </div>
                                                </div>

                                        </form>

                                    </div>
                                </div>
                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                         class="img-fluid" alt="Sample image">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <%@include file="/frontend/common/client/footer.jsp" %>
        <script type="text/javascript">
            var inuse = "${inuseAlert}";
            var password = document.getElementById("psword");
            var confirm_password = document.getElementById("confirm_psword");

            const inputs = document.querySelectorAll(".form-control");
            inputs.forEach(input => {
                input.addEventListener("input", function (event) {
                    const currentInput = event.target;
                    if (currentInput.value.length > 0) {
                        currentInput.classList.add("active");
                    } else {
                        currentInput.classList.remove("active");
                    }
                });
            });

            function validatePassword() {
                if (password.value !== confirm_password.value) {
                    confirm_password.setCustomValidity("Passwords Don't Match");
                } else {
                    confirm_password.setCustomValidity('');
                }
            }

            password.onchange = validatePassword();
            confirm_password.onkeyup = validatePassword;
            confirm_password.onkeyup = function () {

                if (password.value === confirm_password.value) {
                    document.getElementById("alert-message").style.display = "none";
                } else
                    document.getElementById("alert-message").style.display = "block";

            };
            console.log(inuse);
            if (inuse === "inuse") {
                document.getElementById("in_use_alert").style.display = "block";
            }

        </script>
        <script src="../../../template/jsPlugins/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="../../../template/jsPlugins/vendor/bootstrap.min.js"></script>
        <script src="../../../template/jsPlugins/jquery.ajaxchimp.min.js"></script>
        <script src="../../../template/jsPlugins/jquery.nice-select.min.js"></script>
        <script src="../../../template/jsPlugins/jquery.sticky.js"></script>
        <script src="../../../template/jsPlugins/nouislider.min.js"></script>
        <script src="../../../template/jsPlugins/countdown.js"></script>
        <script src="../../../template/jsPlugins/jquery.magnific-popup.min.js"></script>
        <script src="../../../template/jsPlugins/owl.carousel.min.js"></script>
        <script src="../../../template/jsPlugins/main.js"></script>
    </body>
</html>
