<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<link rel="stylesheet" href="resources/css/default.css" type="text/css"> 
<head>
<title>LOVELY DRESS.COM</title>

										<!-- Bootstrap Command -->										
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
  <link rel="stylesheet" href="resources/css/default.css" type="text/css">
  
<style>
 body {
    background-image: url("resources/images/img6.jpg");
} 
</style>

</head>
<body>
											<!-- Header tab Command -->
							
<%@ include file="Header1.jsp" %>
<%@ include file="Carosual.jsp" %>

                                                 <!-- Footer tab Command -->
							 		
		<%@ include file="Footer.jsp" %>
											
											<!-- Placed at the end of the document so that page load faster -->
					
			<script src="<c:url value='/resources/js/bootstrap.min.js'/>" > </script>
		
					
</body>
</html>