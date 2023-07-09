<%-- 
    Document   : productpage
    Created on : Jun 23, 2023, 6:07:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:set var="page" value="${sessionScope.pageRequest}"></c:set>
            <section id="category">
                <div class="container-fluid">
                    <div class="ml-4 mt-5">
                        <h2>${page}'s Shoes
                        <span id="shoes_counter" style="font-size:14px;">[123]</span>
                    </h2>
                </div>
            </div>
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
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Lifestyle"
                                                               class="checkbox__input" value="Lifestyle">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Lifestyle
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Football"
                                                               class="checkbox__input" value="Football">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Football
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Basketball"
                                                               class="checkbox__input" value="Basketball">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Basketball
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Running"
                                                               class="checkbox__input" value="Running">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Running
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Golf" class="checkbox__input"
                                                               value="Golf">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Golf
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Hiking"
                                                               class="checkbox__input" value="Hiking">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Hiking
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="filter-list">
                                        <a data-auto-id="" href="" class="active filter_item">
                                            <div class="form-item">
                                                <div class="checkbox">
                                                    <label class="checkbox__label d-flex align-items-center">
                                                        <input type="checkbox" name="sport" title="Training"
                                                               class="checkbox__input" value="Training">
                                                        <span class="checkbox__text">
                                                            <span data-auto-id="plp-sidebar-filter-item-value">
                                                                Training
                                                                <span class="counter"
                                                                      data-auto-id="filter-item-hitcount">(315)</span>
                                                            </span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </a>
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
                                                <a data-auto-id="" href="" class="active filter_item">
                                                    <div class="form-item">
                                                        <div class="checkbox">
                                                            <label class="checkbox__label d-flex align-items-center">
                                                                <input type="checkbox" name="brand" title="Nike"
                                                                       class="checkbox__input" value="Nike">
                                                                <span class="checkbox__text">
                                                                    <span data-auto-id="plp-sidebar-filter-item-value">
                                                                        Nike
                                                                        <span class="counter"
                                                                              data-auto-id="filter-item-hitcount">(315)</span>
                                                                    </span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="filter-list">
                                                <a data-auto-id="" href="" class="active filter_item">
                                                    <div class="form-item">
                                                        <div class="checkbox">
                                                            <label class="checkbox__label d-flex align-items-center">
                                                                <input type="checkbox" name="brand" title="Puma"
                                                                       class="checkbox__input" value="Puma">
                                                                <span class="checkbox__text">
                                                                    <span data-auto-id="plp-sidebar-filter-item-value">
                                                                        Puma
                                                                        <span class="counter"
                                                                              data-auto-id="filter-item-hitcount">(315)</span>
                                                                    </span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="filter-list">
                                                <a data-auto-id="" href="" class="active filter_item">
                                                    <div class="form-item">
                                                        <div class="checkbox">
                                                            <label class="checkbox__label d-flex align-items-center">
                                                                <input type="checkbox" name="brand" title="Adidas"
                                                                       class="checkbox__input" value="Adidas">
                                                                <span class="checkbox__text">
                                                                    <span data-auto-id="plp-sidebar-filter-item-value">
                                                                        Adidas
                                                                        <span class="counter"
                                                                              data-auto-id="filter-item-hitcount">(315)</span>
                                                                    </span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="filter-list">
                                                <a data-auto-id="" href="" class="active filter_item">
                                                    <div class="form-item">
                                                        <div class="checkbox">
                                                            <label class="checkbox__label d-flex align-items-center">
                                                                <input type="checkbox" name="brand" title="Vans"
                                                                       class="checkbox__input" value="Vans">
                                                                <span class="checkbox__text">
                                                                    <span data-auto-id="plp-sidebar-filter-item-value">
                                                                        Vans
                                                                        <span class="counter"
                                                                              data-auto-id="filter-item-hitcount">(315)</span>
                                                                    </span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li class="filter-list">
                                                <a data-auto-id="" href="" class="active filter_item">
                                                    <div class="form-item">
                                                        <div class="checkbox">
                                                            <label class="checkbox__label d-flex align-items-center">
                                                                <input type="checkbox" name="brand" title="Converse"
                                                                       class="checkbox__input" value="Converse">
                                                                <span class="checkbox__text">
                                                                    <span data-auto-id="plp-sidebar-filter-item-value">
                                                                        Converse
                                                                        <span class="counter"
                                                                              data-auto-id="filter-item-hitcount">(315)</span>
                                                                    </span>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </a>
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
                                            <div class="filter_shoes">
                                                <div class="filter-group_outer"
                                                     style="height: auto; transition: height 150ms linear 0s; overflow: hidden;">
                                                    <div class="filter-group__content for--colors">
                                                        <div aria-label="Colour, 2 Selected" class="filter-group__items-group"
                                                             role="group">
                                                            <button class="filter-color  is--color is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="true"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="black">
                                                                <div class="filter-color__color-patch is--black ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Black</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="true"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="blue">
                                                                <div class="filter-color__color-patch is--blue ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Blue</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="brown">
                                                                <div class="filter-color__color-patch is--brown ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Brown</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="green">
                                                                <div class="filter-color__color-patch is--green ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Green</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="grey">
                                                                <div class="filter-color__color-patch is--grey ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Grey</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="multi">
                                                                <div class="filter-color__color-patch is--multi-color ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Multi-Colour</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="orange">
                                                                <div class="filter-color__color-patch is--orange ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Orange</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="red">
                                                                <div class="filter-color__color-patch is--red ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Red</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="white">
                                                                <div class="filter-color__color-patch is--white ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">White</span>
                                                            </button>
                                                            <button class="filter-color is--color  is--button button_color"
                                                                    href="" role="checkbox" type="button" aria-checked="false"
                                                                    data-group-type="filter" data-is-color="true" name="color" 
                                                                    data-auto-id="white">
                                                                <div class="filter-color__color-patch is--yellow ">
                                                                    <div class="icon-checkmark  checkmark_css"></div>
                                                                </div>
                                                                <span class="filter-color__item-label">Yellow</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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
                                            <div class="filter_shoes"
                                                 style="height: auto; transition: height 150ms linear 0s; overflow: hidden">
                                                <div class="filter-group__content for--sizes">
                                                    <div aria-label="Size" class="filter-group__items-group" role="group">
                                                        <button aria-label="Filter for 35.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="35.5" 
                                                                >
                                                            <span class="filter-item__item-label">35.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 36"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="36">
                                                            <span class="filter-item__item-label">36</span>
                                                        </button>
                                                        <button aria-label="Filter for 36.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="36.5">
                                                            <span class="filter-item__item-label">36.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 37.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="37.5">
                                                            <span class="filter-item__item-label">37.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 38"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="38">
                                                            <span class="filter-item__item-label">38</span>
                                                        </button>
                                                        <button aria-label="Filter for 38.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="38.5">
                                                            <span class="filter-item__item-label">38.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 39"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="39">
                                                            <span class="filter-item__item-label">39</span>
                                                        </button>
                                                        <button aria-label="Filter for 40"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="40">
                                                            <span class="filter-item__item-label">40</span>
                                                        </button>
                                                        <button aria-label="Filter for 40.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="40.5">
                                                            <span class="filter-item__item-label">40.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 41"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="41">
                                                            <span class="filter-item__item-label">41</span>
                                                        </button>
                                                        <button aria-label="Filter for 42"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="42">
                                                            <span class="filter-item__item-label">42</span>
                                                        </button>
                                                        <button aria-label="Filter for 42.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="42.5">
                                                            <span class="filter-item__item-label">42.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 43"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="43">
                                                            <span class="filter-item__item-label">43</span>
                                                        </button>
                                                        <button aria-label="Filter for 44"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="44">
                                                            <span class="filter-item__item-label">44</span>
                                                        </button>
                                                        <button aria-label="Filter for 44.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="44.5">
                                                            <span class="filter-item__item-label">44.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 45"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="45">
                                                            <span class="filter-item__item-label">45</span>
                                                        </button>
                                                        <button aria-label="Filter for 45.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="45.5">
                                                            <span class="filter-item__item-label">45.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 46"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="46">
                                                            <span class="filter-item__item-label">46</span>
                                                        </button>
                                                        <button aria-label="Filter for 47"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="47">
                                                            <span class="filter-item__item-label">47</span>
                                                        </button>
                                                        <button aria-label="Filter for 47.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="47.5">
                                                            <span class="filter-item__item-label">47.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 48.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="48.5">
                                                            <span class="filter-item__item-label">48.5</span>
                                                        </button>
                                                        <button aria-label="Filter for 49.5"
                                                                class="filter-item is--size is--button button_color"
                                                                data-url=""
                                                                role="checkbox" type="button" aria-checked="false"
                                                                data-group-ndx="3" data-group-type="filter"
                                                                name="size"
                                                                data-auto-id="49.5">
                                                            <span class="filter-item__item-label">49.5</span>
                                                        </button>

                                                    </div>

                                                </div>
                                            </div>
                                        </ul>
                                    </form>
                                </ul>
                            </div>
                            <div class="common-filter">
                                <div class="head">Price</div>
                                <div class="price-range-area">
                                    <div>
                                        <div class="price-field">
                                            <input type="range" min="10" max="3000" value="10" id="lower">
                                            <input type="range" min="10" max="3000" value="3000" id="upper">
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
                                <c:set var="productList" value="${sessionScope.productList}"></c:set>
                                <c:forEach var="product" items="${productList}">
                                 
                                        <div class="col-lg-4 col-md-4">
                                            <div class="single-product">
                                                <a class="product_link" href="${pageContext.request.contextPath}/productcontroller?action=singleproduct&product=${product.name}&productVariant=${p.productVariantCode}">
                                                    <img class="img-fluid" src="${product.imageUrls.get(0)}" alt="">
                                                </a>
                                                <div class="product-details">
                                                    <a class="product_link" href="${pageContext.request.contextPath}/productcontroller?action=singleproductproduct=${product.name}&productVariant=${p.productVariantCode}   ">
                                                        <h5>
                                                            ${product.name}-
                                                            
                                                            ${product.productVariantCode}
                                                        </h5>
                                                        <h5>
                                                            ${product.categories} 
                                                        </h5>
                                                    </a>
                                                    <div class="price">
                                                        <h6>$${product.productSellingPrice}</h6>
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

                                    </c:forEach>
                               
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

          <!---------------------------------------------------------------------------------- -->
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
