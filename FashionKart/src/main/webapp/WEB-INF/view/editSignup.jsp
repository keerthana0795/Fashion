<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring MVC Form Handling</title>
 </head>
 <body>
  <h2>ENTER USER DETAILS</h2>
  <form:form method="POST" action="./updateSignup" commandName="supfrm">
      <table>
       
       <tr>
           <td><form:label path="name">Name:</form:label></td>
           <td><form:input path="name" value="${signup.name}"/></td>
       </tr>
       <tr>
           <td><form:label path="Email id">Emailid:</form:label></td>
           <td><form:input path="Email id" value="${signup.Email id}"/></td>
       </tr>
       <tr>
           <td><form:label path="New password">New password:</form:label></td>
           <td><form:input path="New password" value="${signup.new password}"/></td>
       </tr>
       
       <tr>
           <td><form:label path="Mobileno">Mobileno:</form:label></td>
           <td><form:input path="Mobileno" value="${signup.Mobileno}"/></td>
       </tr>
          <tr>
         <td colspan="2"><input type="submit" value="Update"/></td>
        </tr>
   </table> 
 </form:form>
 
 </body>
</html> --%>