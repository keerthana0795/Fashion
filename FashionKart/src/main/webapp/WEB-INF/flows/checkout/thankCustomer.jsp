<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/Header1.jsp" %>
<%@ page isELIgnored="false" %>

<html>
<head>
<title>Thank u</title>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for your business!</h1>

                    <p>Your order will be shipped in two business days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-primary">OK</a></p>
        </section>
    </div>
</div>

</body>
</html>
											<!-- Footer Command -->
							
						<%@ include file="/WEB-INF/view/Footer.jsp" %>