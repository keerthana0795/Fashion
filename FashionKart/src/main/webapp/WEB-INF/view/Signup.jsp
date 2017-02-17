<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>CREATE YOUR PATH</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
  <style>
  @import "bourbon";
body {
    background-image: url("resources/images/14.jpg");
    }
  </style>
</head>
<body>
<%@ include file="Header1.jsp" %>
<div class="container">
<br>
    <h2>SIGNUP FORM</h2>
    <form>
    <label>First Name</label>
    <input type="text" name="firstname" class="form-control">
    <label>Last Name</label>
    <input type="text" name="lastname" class="form-control">
    <label>Email Address</label>
    <input type="email" name="email" class="form-control">
    <label>Username</label>
    <input type="text" name="username" class="form-control">
    <label>Password</label>
   <input type="password" class="form-control" required="required"/> 
    <label>mobileno</label>
    <input type="number" name="mobileno" class="form-control">
    
    <br>
    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>
    <input type="submit" value="Sign up" class="btn btn-primary pull-right">
    <div class="clearfix"></div>
    </form>
</div>

</body>
</html>