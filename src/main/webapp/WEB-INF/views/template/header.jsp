<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nzarkadas
  Date: 8/22/2017
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Zarko's Music Store</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <%--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">--%>
    <link href="<c:url value="/resources/font-awesome-4.7.0/css/font-awesome.min.css" /> " rel="stylesheet">


</head>
<body>
<div class="navbar-nav">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Zarko's Music store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/" />">Home <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item active" >
                    <a class="nav-link" href="<c:url value="/product/productList" />">Products<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown01" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="http://example.com">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
            <ul class="nav navbar-nav pull-right">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Welcome: ${pageContext.request.userPrincipal.name}</a>
                    </li>
                    <li class="nav-item active">
                        <c:url var="logoutUrl" value="/j_spring_security_logout" />
                        <form action="${logoutUrl}" id="logout" method="post" style="display: none">
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}" />
                        </form>
                        <a class="nav-link" href="#" onclick="document.getElementById('logout').submit();">Logout</a>
                    </li>
                    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="<c:url value="/customer/cart"/> ">Cart</a>
                        </li>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                        <li class="nav-item active">
                            <a class="nav-link" href="<c:url value="/admin"/> ">Admin</a>
                        </li>
                    </c:if>
                </c:if>

                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value="/login"/> ">Login</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<c:url value="/register"/> ">Register</a>
                    </li>
                </c:if>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>