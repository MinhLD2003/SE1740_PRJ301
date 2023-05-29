<%-- 
    Document   : Verification
    Created on : May 29, 2023, 7:50:33 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>We've already send you a verification code to your email</h1>
        <form action="verifycode" method="post">
            <input type="text" name="authCode">
            <input type="submit" value="Verify">
        </form>
    </body>
</html>
