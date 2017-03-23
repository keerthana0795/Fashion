<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/Header1.jsp" %>
<%@ page isELIgnored="false" %>

<html>
<head>
<title>Invalid</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Invalid Cart!</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/all/product/getAllProducts" />" class="btn btn-info">Products</a></p>
        </section>
	</div>
</div>
<%-- <%@ include file="/WEB-INF/view/Footer.jsp" %> --%>

</body>
</html>