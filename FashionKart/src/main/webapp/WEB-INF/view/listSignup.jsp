<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div style="color: teal; font-size: 30px">Being Java Guys | User
   Details</div>

  <c:if test="${!empty signuplist}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Name</td>
     <td>Emailid</td>
   <td>New password </td>
   <td>Mobileno</td>
   
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${!signuplist}" var="su">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${su.Name}" />
      </td>
      <td><c:out value="${su.Emailid}" />
      </td>
      <td><c:out value="${su.New password}" />
      </td>
      <td><c:out value="${su.Mobileno}" />
      </td>
      <td><a href="deletedetails?id=${su.userid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="SignupForm">ADD NEW USER</a>
</center>
</body>
</html>