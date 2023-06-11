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

        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/verification.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/template/css/bootstrap.min.css">
    </head>
    <body>
        <c:set var="failAttempts" value= "${requestScope.numsOfFails}"/>
        <c:set var="resendMessCode" value= "${requestScope.resendMessCode}"/>
        <c:set var="resendSuccessMessCode" value= "${requestScope.resendSuccessMessCode}"/>
        <c:set var="expiryMess"  value="${requestScope.expiryMess}"/>
        <section class="mt-4 d-flex ">
            <div class="container1">
                <div>
                    <h1 class="title">Check your mail <span> <img style="width:40px" src="${pageContext.request.contextPath}/images/email.png"></span></h1>
                    <p>Please enter the 6-digit veritification code that was sent to your email.</p>
                </div>
                <form id="otp-form" method="post" action="<c:url value='/verifycode'/>">
                    <input class="input-line" type="text" name="otpCode" pattern="[0-9]{6}" placeholder="######">
                    <input type="submit" id="verify-btn" value="Verify OTP">
                </form>

                <a id="resend-btn" class="resend-link"href="<c:url value='/resend'/>">Resend OTP code?</a>
                <c:if test="${expiryMess eq 'expired'}">
                  <div style="color:red;">
                        <p>Your OTP verification is expired !!!</p>
                        <p>Please click on the <strong>resend button </strong> for a new OTP !!!</p>
                    </div>
                </c:if>
                <c:if test="${resendMessCode == 500}">
                    <div style="color:red;">
                        <p>Your OTP verification failed !!!</p>
                        <p>Please click on the <strong>resend button </strong> for a new OTP !!!</p>
                    </div>
                </c:if>
                <c:if test="${failAttempts > 0 && resendMessCode == null}">
                    <div style="color:red;">
                        <p><strong>Warning!</strong> Invalid OTP Code</p>
                        <p>You have attempted ${failAttempts} times.</p>
                    </div>
                </c:if>
            </div>
        </section>
        <script type="text/javascript">
            var resendAlertCode = "${resendMessCode}";
            var resendSuccessCode = "${resendSuccessMessCode}";
            if (resendAlertCode === "500") {
                document.getElementById('verify-btn').setAttribute('disabled', '');
            }

            if (resendSuccessCode === "200") {
                document.getElementById('verify-btn').removeAttribute('disabled');

            }
        </script>
    </body>
</html>
