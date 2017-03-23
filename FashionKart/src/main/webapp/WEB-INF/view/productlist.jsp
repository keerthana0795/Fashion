											<!-- Header tab in normal include -->
					
					<%@ include file="Header1.jsp" %>  
			
							<%-- <!-- jstl core needed if we use jsp:include method -->
			
			<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
									  <!-- Header Command -->
										
							<jsp:include page="Header.jsp" /> --%>
<html>
<head>
<title>Product list</title>
</head>
<body>

<div style="font-family:AR BLANC; color: #6600cc; font-size: 30px; text-align:center;">PRODUCT LIST</div>

	<div class="container">

		 <table class="table table-striped">
			<thead>
				<tr bgcolor="teal"> 
					<th style="color:white;">IMAGE</th>
					<th style="color:white;">PRODUCT NAME</th>
					<th style="color:white;">DESCRPTION</th>
					<th style="color:white;">CATEGORY</th>
					<th style="color:white;">VIEW</th>
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<th style="color:white;">DELETE</th>
					<th style="color:white;">EDIT</th>
					</security:authorize>
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">

				<tr>
					<td><c:url var="images" value="/resources/images/${p.id }.jpg"></c:url>
					<img src="${images }" alt="test images" style="width:250px;height:300px"/>
					</td>
					
					<td><c:out value="${p.name}"/></td>
					<td><c:out value="${p.description }"/></td>
					<td><c:out value="${p.category.categoryDetails}"/></td>
					
					<td>
				    <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
					</td>
					
					 <td>
					 
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
					</security:authorize>
					
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<td>
					<c:url var="edit" value="/admin/product/editform/${p.id}"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
					</security:authorize>
					</td>
				</tr>
			</c:forEach>
		</table>

	</div>
 								<!-- Placed at the end of the document so the pages load faster -->
  
  		<script src="<c:url value='/resources/js/bootstrap.min.js'/>" /></script>
  
</body>
</html>
