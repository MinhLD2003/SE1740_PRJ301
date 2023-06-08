<%-- 
    Document   : forgotpassword
    Created on : Jun 6, 2023, 5:47:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="${pageContext.request.getContextPath()}/frontend/template/forgot.css">
    </head>
    <body>
       
    <div class="row">
        <h1>Forgot Password</h1>
        <h6 class="information-text">Enter your registered email to reset your password.</h6>
        <div class="form-group">
            <p><label for="username">Email</label></p>
            <input type="email" name="user_email" id="user_email" placeholder="name@gmail.com">
            <button type="submit">Reset Password</button>
        </div>
        <div class="footer">
            <h5>New here? <a href="#">Sign Up.</a></h5>
            <h5>Already have an account? <a href="#">Log In.</a></h5>
        </div>
    </div>
    </body>
</html>
