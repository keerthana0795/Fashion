<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> --%>
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
  <h2>Add Signup Data</h2>
  <form:form method="POST" action="./saveSignup" commandName="Supfrm">
      <table>

       <tr>
           <td><form:label path="name">Name:</form:label></td>
           <td><form:input path="name"/></td>
       </tr>
       <tr>
           <td><form:label path="Emailid">Email id:</form:label></td>
           <td><form:input path="Emailid"/></td>
       </tr>
       <tr>
           <td><form:label path="Newpassword">Product price:</form:label></td>
           <td><form:input path="Newpassword" /></td>
       </tr>

       
          <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
   </table> 

</form:form>
 </body>
</html>