<%-- 
    Document   : footer
    Created on : Jun 11, 2023, 7:37:29 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <!--Bootstrap CDN-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--Fontawesome-->
        <script src="https://kit.fontawesome.com/4d0b4c932e.js" crossorigin="anonymous"></script>
        <link ref="stylesheet" href="${pageContext.request.contextPath}/frontend/template/footer.css">
    </head>
    <body>

        <div class="main"></div>
        <footer id="Footer" class="page-footer font-small stylish-color-dark pt-4">
            <div class="container text-center text-md-left">
                <div class="row">
                    <div class="col-md-4 mx-auto">
                        <!-- Content -->
                        <h5 class="text-uppercase font-weight-bold mt-3 mb-4">About our Company</h5>
                        <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 70px;">
                        <p>Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                            consectetur
                            adipisicing elit.</p>
                    </div>
                    <hr class="clearfix w-100 d-md-none">
                    <div id="link10" class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">Products</h6>
                        <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 70px;">
                        <p>
                            <a href="#!">Travelling</a>
                        </p>
                        <p>
                            <a href="#!">About</a>
                        </p>
                        <p>
                            <a href="#!">BrandFlow</a>
                        </p>
                        <p>
                            <a href="#!">Services</a>
                        </p>
                    </div>
                    <hr class="clearfix w-100 d-md-none">
                    <div id="link10" class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <h6 class="text-uppercase font-weight-bold">Customer Service</h6>
                        <hr class="accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 70px;">
                        <p>
                            <a href="#!">Your Account</a>
                        </p>
                        <p>
                            <a href="#!">Payment</a>
                        </p>
                        <p>
                            <a href="#!">Order Status</a>
                        </p>
                        <p>
                            <a href="#!">Returns</a>
                        </p>
                        <p>
                            <a href="#!">Terms and Conditions</a>
                        </p>
                    </div>
                    <hr class="clearfix w-100 d-md-none">
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <h6 class="text-uppercase font-weight-bold">Contact Us</h6>
                        <hr class=" accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <i class="fas fa-home mr-3"></i> Mumbai, Maharashtra
                        </p>
                        <p>
                            <i class="fas fa-envelope mr-3"></i> collab@codewithfaraz.com
                        </p>
                        <p>
                            <i class="fas fa-phone mr-3"></i> + 91 80254 52xxx
                        </p>
                        <p>
                            <i class="fas fa-print mr-3"></i> + 91 80254 55xxx
                        </p>
                        <h6>Follow us</h6>
                        <hr class="accent-2  mt-0 d-inline-block mx-auto" style="width: 70px;">
                        <div class="hover-effect1">

                            <ul class="list-unstyled list-inline text-center">
                                <li class="list-inline-item">
                                    <a href="#" title="Facebook"><svg class="social-link-icon" width="35px" fill="#111" 
                                                                      height="35px" viewBox="0 0 24 24">
                                        <path
                                            d="M12 0C9.813 0 7.8.533 5.96 1.6A11.793 11.793 0 0 0 1.6 5.96C.533 7.8 0 9.813 0 12s.533 4.2 1.6 6.04a11.793 11.793 0 0 0 4.36 4.36C7.8 23.467 9.813 24 12 24s4.2-.533 6.04-1.6a11.793 11.793 0 0 0 4.36-4.36C23.467 16.2 24 14.187 24 12s-.533-4.2-1.6-6.04a11.793 11.793 0 0 0-4.36-4.36C16.2.533 14.187 0 12 0zm3.12 12h-2v7.2H10.4V12H8.64V9.52h1.76V8c0-1.12.187-1.92.56-2.4.427-.587 1.2-.88 2.32-.88h2V7.2h-1.2c-.427 0-.693.067-.8.2-.107.133-.16.387-.16.76v1.2h2.16L15.12 12z">
                                        </path>
                                        </svg></a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" title="Twitter">
                                        <svg class="social-link-icon" width="35px" fill="#111" height="35px"
                                             viewBox="0 0 24 24">
                                        <path
                                            d="M12 0C9.813 0 7.8.533 5.96 1.6A11.793 11.793 0 0 0 1.6 5.96C.533 7.8 0 9.813 0 12s.533 4.2 1.6 6.04a11.793 11.793 0 0 0 4.36 4.36C7.8 23.467 9.813 24 12 24s4.2-.533 6.04-1.6a11.793 11.793 0 0 0 4.36-4.36C23.467 16.2 24 14.187 24 12s-.533-4.2-1.6-6.04a11.793 11.793 0 0 0-4.36-4.36C16.2.533 14.187 0 12 0zm6 9.28v.4c0 1.387-.333 2.72-1 4a8.186 8.186 0 0 1-2.84 3.12c-1.333.853-2.827 1.28-4.48 1.28a8.535 8.535 0 0 1-4.56-1.28h.72c1.387 0 2.613-.427 3.68-1.28-.64 0-1.213-.2-1.72-.6-.507-.4-.867-.92-1.08-1.56l.56.16c.373 0 .64-.053.8-.16a2.67 2.67 0 0 1-1.72-1 2.913 2.913 0 0 1-.68-1.88c.427.267.88.4 1.36.4-.907-.533-1.36-1.36-1.36-2.48 0-.533.133-1.04.4-1.52.8.96 1.72 1.707 2.76 2.24a8.133 8.133 0 0 0 3.4.88c-.107-.16-.16-.4-.16-.72 0-.8.293-1.493.88-2.08s1.28-.88 2.08-.88 1.547.293 2.24.88c.48-.107 1.12-.347 1.92-.72-.213.747-.64 1.28-1.28 1.6H18c.747-.16 1.28-.32 1.6-.48-.533.693-1.067 1.253-1.6 1.68z">
                                        </path>
                                        </svg>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#" title="Instagram">
                                        <svg class="social-link-icon" width="35px" fill="#111" height="35px"
                                             viewBox="0 0 24 24">
                                        <path
                                            d="M16 12.48a4.723 4.723 0 0 1-.56 1.48 3.93 3.93 0 0 1-1.04 1.16 3.428 3.428 0 0 1-1.92.68 3.628 3.628 0 0 1-1.96-.48 3.414 3.414 0 0 1-1.4-1.48c-.48-.96-.587-1.973-.32-3.04H7.68l.08 5.52c0 .107.04.213.12.32.08.107.173.16.28.16h8.32c.107 0 .213-.053.32-.16.107-.107.16-.213.16-.32V10.8h-1.12c.16.533.213 1.093.16 1.68zm-3.68 2c.64 0 1.2-.24 1.68-.72s.72-1.053.72-1.72a2.56 2.56 0 0 0-.68-1.76c-.453-.507-1.013-.76-1.68-.76s-1.24.24-1.72.72-.72 1.053-.72 1.72.227 1.253.68 1.76c.453.507 1 .76 1.64.76h.08zm4.16-7.6h-1.12c-.107 0-.213.053-.32.16-.107.107-.16.213-.16.32v1.36c.107.213.267.32.48.32h1.12c.16 0 .28-.053.36-.16a.532.532 0 0 0 .12-.32v-1.2c0-.107-.053-.213-.16-.32-.107-.107-.213-.16-.32-.16zM12 0C9.813 0 7.8.533 5.96 1.6A11.793 11.793 0 0 0 1.6 5.96C.533 7.8 0 9.813 0 12s.533 4.2 1.6 6.04a11.793 11.793 0 0 0 4.36 4.36C7.8 23.467 9.813 24 12 24s4.2-.533 6.04-1.6a11.793 11.793 0 0 0 4.36-4.36C23.467 16.2 24 14.187 24 12s-.533-4.2-1.6-6.04a11.793 11.793 0 0 0-4.36-4.36C16.2.533 14.187 0 12 0zm6.24 16.88l-.08.08v.08a.926.926 0 0 1-.28.68 1.3 1.3 0 0 1-.68.36H7.52a.871.871 0 0 1-.68-.32 1.536 1.536 0 0 1-.36-.72l-.08-.16.08-9.84c0-.267.093-.507.28-.72.187-.213.413-.347.68-.4h9.68a1.3 1.3 0 0 1 .68.36 1.3 1.3 0 0 1 .36.68l.08 9.92z">
                                        </path>
                                        </svg></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Social buttons -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">
                <small>  Copyright© 2023: Design and Develop by Faraz</small>
            </div>
        </footer>
    </body>
</html>
