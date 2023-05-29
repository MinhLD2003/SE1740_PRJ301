<%-- 
    Document   : signup
    Created on : May 28, 2023, 4:18:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../../template/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../template/signup.css">
        <link rel="stylesheet" href="../../../../Satoshi_Complete/Fonts/WEB/css/satoshi.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                <h3>Sign Up</h3>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem, ullam!</p>
                            </div>
                            <form action="/signup" method="post">
                                <div class="form-group">
                                    <label class="form-label" for="">Username</label>
                                    <input class="form-control" type="text" name="username"required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="">Email</label>
                                    <input id="" class="form-control" type="email" name="email" placeholder="name@gmail.com" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="">Password</label>
                                    <input id="psw" class="form-control" type="password" name="password"
                                           pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,}" required>
                                    <div id="message">
                                        <p>Password must contain the following:</p>
                                        <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                        <p id="number" class="invalid">A <b>number</b></p>
                                        <p id="special" class="invalid">A <b>special character</b></p>
                                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label" for="">Confirm password</label>
                                    <input id="cf-psw" class="form-control" type="password" required>
                                    <div id="alert-message"><strong>Warning !</strong> Your password and confirmation password must match.
                                    </div>
                                </div>

                                <input class=" w-100 mt-3 p-2 btn btn-block btn-primary" type="submit" value="Sign up">

                                <div class="divider">
                                    <span class=" d-block text-center my-4 text-muted"> or </span>
                                </div>
                                <div class="social-login d-flex justify-content-around">
                                    <div class="mb-2">
                                        <a href="#" class="facebook text-light btn px-4 py-3">
                                            <span class=""><i class="fa fa-facebook"></i></span>
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#" class="google text-light  btn px-4 py-3 ">
                                            <span class=""><i class="fa fa-google"></i></span>
                                        </a>
                                    </div>
                                    <div class="mb-2">
                                        <a href="#" class="twitter btn text-light px-4 py-3">
                                            <span class=" "><i class="fa fa-twitter"></i></span>
                                        </a>
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>
            </div>

        </div>

        <script type="text/javascript">
            var myInput = document.getElementById("psw");
            var letter = document.getElementById("letter");
            var capital = document.getElementById("capital");
            var number = document.getElementById("number");
            var length = document.getElementById("length");
            var special = document.getElementById("special");
            var confirmpsw = document.getElementById("cf-psw");
            // When the user clicks on the password field, show the message box
            myInput.onfocus = function () {
                var message = document.getElementById("message");
                message.style.display = "block";

            };

            // When the user clicks outside of the password field, hide the message box
            myInput.onblur = function () {
                document.getElementById("message").style.display = "none";
            };

            // When the user starts to type something inside the password field
            myInput.onkeyup = function () {
                // Validate lowercase letters
                var lowerCaseLetters = /[a-z]/g;
                if (myInput.value.match(lowerCaseLetters)) {
                    letter.classList.remove("invalid");
                    letter.classList.add("valid");
                } else {
                    letter.classList.remove("valid");
                    letter.classList.add("invalid");
                }

                // Validate capital letters
                var upperCaseLetters = /[A-Z]/g;
                if (myInput.value.match(upperCaseLetters)) {
                    capital.classList.remove("invalid");
                    capital.classList.add("valid");
                } else {
                    capital.classList.remove("valid");
                    capital.classList.add("invalid");
                }

                // Validate numbers
                var numbers = /[0-9]/g;
                if (myInput.value.match(numbers)) {
                    number.classList.remove("invalid");
                    number.classList.add("valid");
                } else {
                    number.classList.remove("valid");
                    number.classList.add("invalid");
                }
                //.Validate special character
                var numbers = /[!@#$%^&*_=+-]/g;
                if (myInput.value.match(numbers)) {
                    special.classList.remove("invalid");
                    special.classList.add("valid");
                } else {
                    special.classList.remove("valid");
                    special.classList.add("invalid");
                }
                // Validate length
                if (myInput.value.length >= 8) {
                    length.classList.remove("invalid");
                    length.classList.add("valid");
                } else {
                    length.classList.remove("valid");
                    length.classList.add("invalid");
                }
            };

            confirmpsw.onkeyup = function () {

                if (myInput.value === confirmpsw.value) {
                    document.getElementById("alert-message").style.display = "none";
                } else
                    document.getElementById("alert-message").style.display = "block";

            };
            
        </script>


    </body>
</html>
