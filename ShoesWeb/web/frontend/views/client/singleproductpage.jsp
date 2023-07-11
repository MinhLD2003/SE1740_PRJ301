<%-- 
    Document   : singleproductpage
    Created on : Jul 7, 2023, 4:50:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
        <%@include file="/frontend/common/client/header.jsp" %>
        <c:set var="product" value='${requestScope.product}' ></c:set>
            <section style="margin-top:180px; background-color:#F5F5F5; border-radius: 30px;">
                <div class="product_image_area">
                    <div class="container">
                        <div class="row s_product_inner">
                            <div class="col-lg-6" >
                                <div class="s_Product_carousel"  style="border:1px solid #909090;">
                                <c:forEach items='${product.imageUrls}' var='image'>
                                    <div class="single-prd-item">
                                        <img class="img-fluid" src="${image}" alt="">
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-lg-5 offset-lg-1">
                            <div class="s_product_text">
                                <h1>${product.name}</h1>
                                <h3> ${product.productCode}</h3>
                                <h2>$${product.productSellingPrice}</h2>
                                <ul class="list">
                                    <li><span>Category</span> : ${product.categories}</li>
                                    <li><span>Availibility</span> : In Stock</li>
                                </ul>
                                <div class="filter_shoes" style="height: auto; transition: height 150ms linear 0s; overflow: hidden; margin-top:20px;">
                                    <div>
                                        Select size
                                    </div>
                                    <div class="filter-group__content for--sizes">
                                        <div aria-label="Size" class="filter-group__items-group" role="group">
                                            <c:forEach var="sizemap" items='${product.sizeQuantityMap}'>
                                                <button aria-label="Filter for ${sizemap.key}"
                                                        class="filter-item is--size is--button button_color"
                                                        data-url=""
                                                        role="checkbox" type="button" aria-checked="false"
                                                        data-group-ndx="3" data-group-type="filter"
                                                        name="size"
                                                        data-auto-id="${sizemap.key}">
                                                    <span class="filter-item__item-label">${sizemap.key}</span>
                                                </button>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="card_area d-flex align-items-center" style="margin-top: 30px;" >
                                        <button 
                                            <a class="button_function" onclick="addToCart()">Add to Cart</a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--================End Single Product Area =================-->

                <!--================Product Description Area =================-->
                <!--================Product Description Area =================-->
                <section class="product_description_area">
                    <div class="container">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                                   aria-selected="true">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                   aria-controls="profile" aria-selected="false">Specification</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                                   aria-controls="contact" aria-selected="false">Comments</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab"
                                   aria-controls="review" aria-selected="false">Reviews</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab" style="font-size:22px;">
                                <c:set var="description" value="${product.description}"/>
                                ${description}

                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"style="font-size:22px;">
                                <div class="table-responsive">
                                    <c:set var="detail" value="${product.detail}"/>

                                    ${detail}

                                </div>
                            </div>
                            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="comment_list">
                                            <div class="review_item">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-1.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                        <a class="reply_btn" href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                            <div class="review_item reply">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-2.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                        <a class="reply_btn" href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                            <div class="review_item">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-3.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                                        <a class="reply_btn" href="#">Reply</a>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="review_box">
                                            <h4>Post a comment</h4>
                                            <form class="row contact_form" action="contact_process.php" method="post"
                                                  id="contactForm" novalidate="novalidate">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="name" name="name"
                                                               placeholder="Your Full name">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" id="email" name="email"
                                                               placeholder="Email Address">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="number" name="number"
                                                               placeholder="Phone Number">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control" name="message" id="message" rows="1"
                                                                  placeholder="Message"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 text-right">
                                                    <button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="row total_rate">
                                            <div class="col-6">
                                                <div class="box_total">
                                                    <h5>Overall</h5>
                                                    <h4>4.0</h4>
                                                    <h6>(03 Reviews)</h6>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="rating_list">
                                                    <h3>Based on 3 Reviews</h3>
                                                    <ul class="list">
                                                        <li><a href="#">5 Star <i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                        <li><a href="#">4 Star <i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                        <li><a href="#">3 Star <i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                        <li><a href="#">2 Star <i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                        <li><a href="#">1 Star <i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                                    class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review_list">
                                            <div class="review_item">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-1.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                            <div class="review_item">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-2.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                            <div class="review_item">
                                                <div class="media">
                                                    <div class="d-flex">
                                                        <img src="img/product/review-3.png" alt="">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4>Blake Ruiz</h4>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut labore et
                                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                    laboris nisi ut aliquip ex ea
                                                    commodo</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="review_box">
                                            <h4>Add a Review</h4>
                                            <p>Your Rating:</p>
                                            <ul class="list">
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                            <p>Outstanding</p>
                                            <form class="row contact_form" action="contact_process.php" method="post"
                                                  id="contactForm" novalidate="novalidate">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="name" name="name"
                                                               placeholder="Your Full name" onfocus="this.placeholder = ''"
                                                               onblur="this.placeholder = 'Your Full name'">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" id="email" name="email"
                                                               placeholder="Email Address" onfocus="this.placeholder = ''"
                                                               onblur="this.placeholder = 'Email Address'">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="number" name="number"
                                                               placeholder="Phone Number" onfocus="this.placeholder = ''"
                                                               onblur="this.placeholder = 'Phone Number'">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control" name="message" id="message" rows="1"
                                                                  placeholder="Review" onfocus="this.placeholder = ''"
                                                                  onblur="this.placeholder = 'Review'"></textarea></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 text-right">
                                                    <button type="submit" value="submit" class="primary-btn">Submit Now</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--================End Product Description Area =================-->

                <!-- Start related-product Area -->
                <section class="related-product-area section_gap_bottom">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 text-center">
                                <div class="section-title">
                                    <h1>You Might Also Like</h1>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="single-related-product d-flex">
                                            <a href="#"><img src="" alt=""></a>
                                            <div class="desc">
                                                <a href="#" class="title">Black lace Heels</a>
                                                <div class="price">
                                                    <h6>$189.00</h6>
                                                    <h6 class="l-through">$210.00</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="single-related-product d-flex">
                                            <a href="#"><img src="" alt=""></a>
                                            <div class="desc">
                                                <a href="#" class="title">Black lace Heels</a>
                                                <div class="price">
                                                    <h6>$189.00</h6>
                                                    <h6 class="l-through">$210.00</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="ctg-right">
                                    <a href="#" target="_blank">
                                        <img class="img-fluid d-block mx-auto" src="" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
        </section>
        <script>
            const buttons = document.querySelectorAll('button.is--button');
            buttons.forEach(button => {

                button.addEventListener('click', () => {
                    buttons.forEach(btn => {
                        if (btn.classList.contains('is--selected')) {
                            btn.classList.remove('is--selected');
                        }
                    });
                    if (button.classList.contains('is--selected')) {
                        button.classList.remove('is--selected');
                    } else {
                        button.classList.add('is--selected');
                    }
                });
            });
            function addToCart() {
                var url = '${pageContext.request.contextPath}/cart?action=add_item&product_code=${product.productCode}&';
                buttons.forEach(btn => {
                    if (btn.classList.contains('is--selected')) {
                        
                        url = url + 'size=' + btn.getAttribute('data-auto-id');
                    }
                    window.location.href = url;
                });
            }
        </script>
        <%@include file="/frontend/common/client/footer.jsp" %>
        <script src="<c:url value='/frontend/template/jsPlugins/vendor/jquery-2.2.4.min.js'/>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/vendor/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/jquery.ajaxchimp.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/jquery.nice-select.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/jquery.sticky.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/nouislider.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/countdown.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/jquery.magnific-popup.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/owl.carousel.min.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/main.js'/>"></script>
        <script src="<c:url value='/frontend/template/jsPlugins/filter.js'/>"></script>
    </body>
</html>
