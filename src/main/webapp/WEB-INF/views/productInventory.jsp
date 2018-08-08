<%--
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
--%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-fluid">
    <div class="container">
        <br><br>
        <br><br>
        <div class="page">
            <h1>Products Inventory Page</h1>
            <p class="lead">This the products inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> "
                             alt="image" style="width: 100%"/>
                    </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} &euro;</td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productId}" />" >
                        <i class="fa fa-info-circle" aria-hidden="true"></i></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />">
                        <i class="fa fa-remove" aria-hidden="true"></i></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />">
                            <i class="fa fa-pencil" aria-hidden="true"></i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <a href="<spring:url value="/admin/product/addProduct" />  " class="btn btn-primary">Add Product</a>

<%@include file="/WEB-INF/views/template/footer.jsp"%>