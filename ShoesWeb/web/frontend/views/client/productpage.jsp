<%-- 
    Document   : productpage
    Created on : Jun 23, 2023, 6:07:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
        <section id="category">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-5 filter-bar2">
                        <div class="sidebar-filter">
                            <div class="head top-filter-head" style="font-size:20px; color:black;">
                                Product Filters
                            </div>
                            <div class="common-filter">
                                <div class="head d-flex justify-content-between">
                                    <a style="color:black;" data-toggle="collapse" href="#shoes_sports" aria-expanded="false"
                                       aria-controls="#shoes_sports">
                                        Sports
                                    </a>
                                    <div class="" style="width:20px;transform: rotateX(-180deg);">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true"
                                             class="cdr-icon_12-1-0">
                                        <path role="presentation"
                                              d="M12 8a.997.997 0 00-.702.288l-5.005 5.005a1 1 0 001.414 1.414L12 10.415l4.295 4.295a1 1 0 001.412-1.417l-4.98-4.98A.997.997 0 0012 8z">
                                        </path>
                                        </svg>
                                    </div>
                                </div>
                                <ul class="main-categories collapse" id="shoes_sports" data-toggle="collapse"
                                    aria-expanded="false" aria-controls="shoes_sports">
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="lifestyle" name="sport">
                                        <label for="">Lifestyle</label>
                                    </li>
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="running" name="sport">
                                        <label for="">Running</label>
                                    </li>
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="hiking" name="sport">
                                        <label for="">Hiking</label>
                                    </li>
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="basketball" name="sport">
                                        <label for="">Basketball</label>
                                    </li>
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="golf" name="sport">
                                        <label for="">Golf</label>
                                    </li>
                                    <li class="filter-list">
                                        <input class="pixel-checkbox" type="checkbox" value="gym&training" name="sport">
                                        <label for="">Gym & Training</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="common-filter">
                                <ul class="main-categories">
                                    <li class="head d-flex justify-content-between">
                                        <a data-toggle="collapse" href="#shoes_brands" aria-expanded="false"
                                           aria-controls="shoes_brands">
                                            Brands
                                        </a>
                                        <div class="" style="width:20px;transform: rotateX(-180deg);">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true"
                                                 class="cdr-icon_12-1-0">
                                            <path role="presentation"
                                                  d="M12 8a.997.997 0 00-.702.288l-5.005 5.005a1 1 0 001.414 1.414L12 10.415l4.295 4.295a1 1 0 001.412-1.417l-4.98-4.98A.997.997 0 0012 8z">
                                            </path>
                                            </svg>
                                        </div>
                                    </li>
                                    <form action="">
                                        <ul class="collapse" id="shoes_brands" data-toggle="collapse" aria-expanded="false"
                                            aria-controls="shoes_brands">
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="brand" value="Nike">
                                                <label for="">Nike</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="brand" value="Adidas">
                                                <label for="">Adidas</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="brand" value="Vanz">
                                                <label for="">Vanz</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="brand"
                                                       value="Converse">
                                                <label for="">Converse</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="brand" value="Puma">
                                                <label for="">Puma</label>
                                            </li>
                                        </ul>
                                    </form>
                                </ul>
                            </div>
                            <div class="common-filter">
                                <ul class="main-categories">
                                    <li class="head d-flex justify-content-between">
                                        <a data-toggle="collapse" href="#shoes_color" aria-expanded="false"
                                           aria-controls="shoes_color">
                                            Color
                                        </a>
                                        <div class="" style="width:20px;transform: rotateX(-180deg);">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true"
                                                 class="cdr-icon_12-1-0">
                                            <path role="presentation"
                                                  d="M12 8a.997.997 0 00-.702.288l-5.005 5.005a1 1 0 001.414 1.414L12 10.415l4.295 4.295a1 1 0 001.412-1.417l-4.98-4.98A.997.997 0 0012 8z">
                                            </path>
                                            </svg>
                                        </div>
                                    </li>
                                    <form action="">
                                        <ul class="collapse" id="shoes_color" data-toggle="collapse" aria-expanded="false"
                                            aria-controls="shoes_color">
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="color" value="black">
                                                <label for="">Black</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="color" value="white">
                                                <label for="">White</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="color" value="brown">
                                                <label for="">Brown</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="color" value="blue">
                                                <label for="">Blue</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="color" value="green">
                                                <label for="">Green</label>
                                            </li>
                                        </ul>
                                    </form>
                                </ul>
                            </div>
                            <div class="common-filter">
                                <ul class="main-categories">
                                    <li class="head d-flex justify-content-between">
                                        <a data-toggle="collapse" href="#shoes_sizes" aria-expanded="false"
                                           aria-controls="shoes_sizes">
                                            Size
                                        </a>
                                        <div class="" style="width:20px;transform: rotateX(-180deg);">
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" aria-hidden="true"
                                                 class="cdr-icon_12-1-0">
                                            <path role="presentation"
                                                  d="M12 8a.997.997 0 00-.702.288l-5.005 5.005a1 1 0 001.414 1.414L12 10.415l4.295 4.295a1 1 0 001.412-1.417l-4.98-4.98A.997.997 0 0012 8z">
                                            </path>
                                            </svg>
                                        </div>
                                    </li>
                                    <form action="">
                                        <ul class="collapse" id="shoes_sizes" data-toggle="collapse" aria-expanded="false"
                                            aria-controls="shoes_sizes">
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="size" value="10UK">
                                                <label for="">10 UK</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="size" value="10.5UK">
                                                <label for="">10.5 UK</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="size" value="11UK">
                                                <label for="">11 UK</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="size" value="11.5UK">
                                                <label for="">11.5 UK</label>
                                            </li>
                                            <li class="filter-list">
                                                <input class="pixel-checkbox" type="checkbox" id="" name="size" value="12UK">
                                                <label for="">12 UK</label>
                                            </li>
                                        </ul>
                                    </form>
                                </ul>
                            </div>
                            <div class="common-filter">
                                <div class="head">Price</div>
                                <div class="price-range-area">
                                    <div>
                                        <div class="price-field">
                                            <input type="range" min="100" max="3000" value="100" id="lower">
                                            <input type="range" min="100" max="3000" value="3000" id="upper">
                                        </div>
                                        <div class="price-wrap">
                                            <div class="price-wrap-1">
                                                <input id="one">
                                                <label for="one">$</label>
                                            </div>
                                            <div class="price-wrap_line">-</div>
                                            <div class="price-wrap-2">
                                                <input id="two">
                                                <label for="two">$</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="common-filter button-area d-flex align-content-center justify-content-center">
                                <button type="submit" class="button_function" id="apply_button" onclick="apply()">Apply</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-8 col-md-7">
                        <!-- Start Filter Bar -->
                        <div class="filter-bar d-flex flex-wrap align-items-center">
                            <div class="sorting">
                                <select id="sortSelection" aria-placeholder="SORT BY">
                                    <option name="sort" value="" disabled selected>SORT BY</option>
                                    <option name="sort" value="price-low-to-high">PRICE (LOW - HIGH)</option>
                                    <option name="sort" value="price-high-to-low">PRICE (HIGH - LOW)</option>
                                    <option name="sort" value="newest-to-oldest">NEWEST</option>
                                    <option name="sort" value="top-sellers">TOP SELLERS</option>
                                </select>
                            </div>
                        </div>
                        <section class="lattest-product-area pb-40 category-list">
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-product">
                                        <img class="img-fluid" src="img/product/p6.jpg" alt="">
                                        <div class="product-details">
                                            <h6>
                                                addidas New Hammer sole
                                                for Sports person
                                            </h6>
                                            <div class="price">
                                                <h6>$150.00</h6>
                                                <h6 class="l-through">$210.00</h6>
                                            </div>
                                            <div class="prd-bottom">
                                                <a href="" class="social-info">
                                                    <span class="ti-bag"></span>
                                                    <p class="hover-text">add to bag</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-heart"></span>
                                                    <p class="hover-text">Wishlist</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-sync"></span>
                                                    <p class="hover-text">compare</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-move"></span>
                                                    <p class="hover-text">view more</p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-product">
                                        <img class="img-fluid" src="img/product/p6.jpg" alt="">
                                        <div class="product-details">
                                            <h6>
                                                addidas New Hammer sole
                                                for Sports person
                                            </h6>
                                            <div class="price">
                                                <h6>$150.00</h6>
                                                <h6 class="l-through">$210.00</h6>
                                            </div>
                                            <div class="prd-bottom">
                                                <a href="" class="social-info">
                                                    <span class="ti-bag"></span>
                                                    <p class="hover-text">add to bag</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-heart"></span>
                                                    <p class="hover-text">Wishlist</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-sync"></span>
                                                    <p class="hover-text">compare</p>
                                                </a>
                                                <a href="" class="social-info">
                                                    <span class="lnr lnr-move"></span>
                                                    <p class="hover-text">view more</p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                      
                               
                            </div>
                        </section>
                        <!-- End Best Seller -->
                        <!-- Start Filter Bar -->
                        <div class="filter-bar d-flex flex-wrap align-items-center justify-content-center">
                            <div class="pagination">
                                <a href="#" class="prev-arrow">
                                    <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                                </a>
                                <a href="#" class="active">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#" class="dot-dot">
                                    <i class="fa fa-ellipsis-h" aria-hidden="true"></i>
                                </a>
                                <a href="#">6</a>
                                <a href="#" class="next-arrow">
                                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                        <!-- End Filter Bar -->
                    </div>
                </div>
            </div>
            <!-- Start related-product Area -->

        </section> 

        <!<!---------------------------------------------------------------------------------- -->
        <script src="../../template/jsPlugins/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="../../template/jsPlugins/vendor/bootstrap.min.js"></script>
        <script src="../../template/jsPlugins/jquery.ajaxchimp.min.js"></script>
        <script src="../../template/jsPlugins/jquery.nice-select.min.js"></script>
        <script src="../../template/jsPlugins/jquery.sticky.js"></script>
        <script src="../../template/jsPlugins/nouislider.min.js"></script>
        <script src="../../template/jsPlugins/countdown.js"></script>
        <script src="../../template/jsPlugins/jquery.magnific-popup.min.js"></script>
        <script src="../../template/jsPlugins/owl.carousel.min.js"></script>
        <script src="../../template/jsPlugins/main.js"></script>
        <script src="../../template/jsPlugins/filter.js"></script>
    </body>
</html>
