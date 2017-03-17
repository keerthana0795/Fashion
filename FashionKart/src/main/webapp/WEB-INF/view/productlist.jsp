<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>


<!-- Header Command -->
<%@ include file="Header1.jsp"%>
<html>
<head>
<title>Product list</title>
</head>
<body>
<div style="font-family:Arial Rounded MT;font-size:30px;color:blue;text-align:center">PRODUCTS LIST</div>
	<div class="container">

		<table class="table table-striped" style="margin-top:20px">
			<thead>
				<tr bgcolor="violet"> 
					<th style="color:white;font-family:AR BLANCA">IMAGE</th>
					<th style="color:white;font-family:AR BLANCA">PRODUCT NAME</th>
					<th style="color:white;font-family:AR BLANCA">DESCRIPTION</th>
					<th style="color:white;font-family:AR BLANCA">CATEGORY</th>
					<th style="color:white;font-family:AR BLANCA">VIEW/DELETE/EDIT</th>
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">
				<tr>
					<td><c:url var="src" value="/resources/images/${p.id }.jpg"></c:url>
					<img src="${src }" alt="test image" style="width:300px;height:300px"/>
					</td>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.category.categoryDetails}</td>
				
				    <td>
					<c:url var="url" value="/all/product/viewproduct/${p.id }"></c:url>
					
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
					</security:authorize> 
					
				    </td>
				     
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>







