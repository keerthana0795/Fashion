<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
   <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT DETAILS</title>
</head>
<body ng-app="app"  ng-controller="ProductController">
<center>
<div style="color: teal; font-size: 30px;font-family:AR BLANCA">ONLINE SHOPPERS  |PRODUCT DETAILS</div>

  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" style="width:600px; height:600px; color:white; font-family:AR BLANCA; text-align:center">
     <tr>
      <td>Product Id</td>
     <td>Product Name</td>
     <td>Product Image</td>
   <td>Product Description</td>
   <td>Product Price</td>
  <td>Category</td>
   <!-- <td>Supplier</td> -->
   <security:authorize access="hasRole('ROLE_ADMIN')">
   <td>Edit</td>
     <td>Delete</td> 
      </security:authorize>
      
     <td>View</td>
     
    </tr>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td>
				<c:url var="src" value="/resources/images/${pd.productid }.jpg"></c:url>
				<img src="${src }"style="width:300px;height:300px;"/>
				</td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><c:out value="${pd.category}" />
      </td>
     <%-- <td><c:out value="${pd.supplier}" />
      </td> --%>
      <security:authorize access="hasRole('ROLE_ADMIN')">
        <td><a href="editProduct?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
      </security:authorize>
      <td><a href="viewProduct?id=${pd.productid}">View</a></td>
     </tr>
     
    </c:forEach>
   </table>
  </c:if>
  <security:authorize access="hasRole('ROLE_ADMIN')">
  <a href="ProductForm">ADD NEW PRODUCT</a> 
  </security:authorize>
</center>

</body>
</html>