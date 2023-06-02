<%-- 
    Document   : Verification
    Created on : May 29, 2023, 7:50:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../../template/verification.css">
        <link rel="stylesheet" href="../../template/css/bootstrap.min.css">
    </head>
    <body>
        <c:set var="numsOfFails" value= "${requestScope.numsOfFails}"></c:set>
        <c:set var="warningCode" value= "${requestScope.warningCode}"></c:set>
            <section class="mt-4 d-flex ">
                <div class="container1">
                    <div>
                        <h1 class="title">Check your mail <span> <img style="width:40px" src="../../../images/email.png"></span></h1>
                        <p>Please enter the 6-digit veritification code that was sent to your email.</p>
                    </div>
                    <form id="otp-form" method="post" action="<c:url value='/verifycode'/>">
                    <input class="input-line" type="text" name="otpCode" pattern="[0-9]{6}">
                    <input type="submit" id="verify-btn" value="Verify OTP">
                    </form>



                <a class="resend-link"href="#">Resend OTP code?</a>
                <c:if test="${warningCode == 500}">
                    <div class="warning">
                        <p><strong>Warning!</strong> Invalid OTP Code</p>
                        <p>You have attempted ${numsOfFails} times.</p>
                    </div>
                </c:if>
            </div>
        </section>
        <script type="text/javascript">

        </script>
    </body>
</html>
