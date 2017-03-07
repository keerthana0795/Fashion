<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<%@ include file="Header1.jsp" %>
<html>
<head>
<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>


</head>


<body>
<div class="container-wrapper">
<div class="container">

<c:url var="url" value="/all/registerCustomer"></c:url>

<form:form action="${url }" commandName="customer">

<fieldset>
    <legend><font color="red">Personal information</font></legend>

<div class="form-group">
<form:label path="firstname">FIRST NAME</form:label>
<form:input path="firstname"/>
<form:errors path="firstname"/>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME</form:label>
<form:input path="lastname"/>
<form:errors path="lastname"/>
</div>
<div class="form-group">
<form:label path="email">EMAIL</form:label>
<form:input path="email"/>
<form:errors path="email"/>
</div>
<div class="form-group">
<form:label path="phonenumber">PHONE NUMBER</form:label>
<form:input path="phonenumber"/>
<form:errors path="phonenumber"/>
</div>

</fieldset>
<fieldset>
    <legend><font color="red">Create</font></legend>
<div class="form-group">
<form:label path="users.username">USERNAME</form:label>
<form:input path="users.username"/>
${duplicateUsername }
<form:errors path="users.username"/>
</div>
<div class="form-group">
<form:label path="users.password">PASSWORD</form:label>
<form:input path="users.password" type="password"></form:input>
<form:errors path="users.password"></form:errors>
</div>
</fieldset>

<fieldset>
    <legend><font color="red">Billing Address</font></legend>
<div class="form-group">
<form:label path="billingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="billingAddress.apartmentNumber"></form:input>
<form:errors path="billingAddress.apartmentNumber"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.streetName">STREET NAME</form:label>
<form:input path="billingAddress.streetName"></form:input>
<form:errors path="billingAddress.streetName"></form:errors>
</div>
<div class="form-group">
<form:label path="billingAddress.city">CITY</form:label>
<form:input path="billingAddress.city"></form:input>
<form:errors path="billingAddress.city"></form:errors>

</div>
<div class="form-group">
<form:label path="billingAddress.State">STATE</form:label>
<form:input path="billingAddress.State"></form:input>
<form:errors path="billingAddress.State"></form:errors>


</div>
<div class="form-group">
<form:label path="billingAddress.country">COUNTRY</form:label>
<form:input path="billingAddress.country"></form:input>
<form:errors path="billingAddress.country"></form:errors>

</div>
<div class="form-group">
<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
<form:input path="billingAddress.zipcode"></form:input>
<form:errors path="billingAddress.zipcode"></form:errors>

</div>
</fieldset>
<fieldset>
    <legend><font color="red">Shipping Address</font></legend>
 <div class="form-group">
<form:label path="shippingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="shippingAddress.apartmentNumber"></form:input>
<form:errors path="shippingAddress.apartmentNumber"></form:errors>

</div>
<div class="form-group">
<form:label path="shippingAddress.streetName">STREET NAME</form:label>
<form:input path="shippingAddress.streetName"></form:input>
<form:errors path="shippingAddress.streetName"></form:errors>

</div>
<div class="form-group">
<form:label path="shippingAddress.city">CITY</form:label>
<form:input path="shippingAddress.city"></form:input>
<form:errors path="shippingAddress.city"></form:errors>

</div>
<div class="form-group">
<form:label path="shippingAddress.State">STATE</form:label>
<form:input path="shippingAddress.State"></form:input>
<form:errors path="shippingAddress.State"></form:errors>

</div>
<div class="form-group">
<form:label path="shippingAddress.country">COUNTRY</form:label>
<form:input path="shippingAddress.country"></form:input>
<form:errors path="shippingAddress.country"></form:errors>

</div>
<div class="form-group">
<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
<form:input path="shippingAddress.zipcode"></form:input>
<form:errors path="shippingAddress.zipcode"></form:errors>

</div>
</fieldset>
 
<input type="submit" value="Register">

</form:form>

</div>

</div>
</body>
</html>



