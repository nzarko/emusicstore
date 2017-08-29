<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

        <div class="container" >
            <div class="row" >
                <div class="col-lg-5">
                    <img src="#" alt="image" style="width: 100%; height: 300px" />
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
                </div>
            </div>
        </div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>