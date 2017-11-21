<%--
  Created by IntelliJ IDEA.
  User: nzarkadas
  Date: 11/1/2017
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-fluid">
    <div class="container">
        <br><br>
        <br><br>
        <div class="page">
            <h1>Administrator Page</h1>
            <p class="lead">This is the administrator page!</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" /> "> Product Inventory</a>
        </h3>

        <p>
            Here you can view, check and modify the product inventory!
        </p>




<%@include file="/WEB-INF/views/template/footer.jsp"%>