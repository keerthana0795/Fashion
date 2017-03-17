<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header1.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Product Form</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">

<c:url value="/admin/product/addProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product" enctype="multipart/form-data" >  

<%-- <form:form action="/admin/product/addProduct" commandName="product">  --%>

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="name" style="color:Blue;font-size:15px;font-family:AR BLANCA">Product Name</label>
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>

<div class="form-group">
<label for="description" style="color:Blue;font-size:15px;font-family:AR BLANCA">Description</label>
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>

<div class="form-group">
<label for="price" style="color:Blue;font-size:15px;font-family:AR BLANCA">Price</label>
<form:input path="price" class="form-control"></form:input>
<form:errors path="price" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>

<div class="form-group">
<label for="quantity" style="color:Blue;font-size:15px;font-family:AR BLANCA">Quantity</label>
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>

<%-- <div class="form-group">
<label for="mfg" style="color:Blue;font-size:15px;font-family:AR BLANCA">Manufacturing Date</label>
<form:input path="mfg" class="form-control" type="text" id="datepicker"/>
<form:errors path="mfg" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>  --%>

<div class="form-group">
<label for="category" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Category</label>
<c:forEach var="c" items="${categories }">
<form:radiobutton path="category.id" value="${c.id }"/>
${c.categoryDetails }
</c:forEach>
<form:errors path="category" cssStyle="color:green;font-family:AR BLANCA"></form:errors>
</div>
<div class="form-group">
<label for="image" style="color:Blue;font-size:15px;font-family:AR BLANCA">Image </label>
<form:input path="image" type="file" />
</div>

<input type="submit" value="ADD PRODUCT" style="font-family:AR BLANCA;font-size:15px" class="btn btn-info">
</form:form>
</div>

</div>
</body>
</html>
