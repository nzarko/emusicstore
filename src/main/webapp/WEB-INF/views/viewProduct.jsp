<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-fluid">
    <div class="container">
        <br><br>
        <br><br>
        <div class="page">
            <h1>Product Details</h1>
            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row" >
                <div class="col-lg-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" /> "
                             alt="image" style="width: 100%"/>
                </div>
                <div class="col-lg-5" >
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <p>${product.productPrice} &euro;</p>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/productList" />
                    
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value="${url}"/> " class="btn btn-primary">Back</a>
                        <a href="#" class="btn btn-warning btn-lg"
                           ng-click="addToCart('${product.productId}')"><i class="fa fa-shopping-cart"></i>Order Now</a>
                        <a href="<spring:url value="/cart"/> " class="btn btn-primary">
                            <i class="fa fa-hand-o-right"></i>View Cart</a>
                    </p>
                </div>
            </div>
        </div>


        <script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>