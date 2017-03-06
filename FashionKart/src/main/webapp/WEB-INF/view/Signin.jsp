<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>LOGIN PAGE </title>
                           <!-- Bootstrap Command -->										
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
<style>
@import "bourbon";
body {
    background-image: url("resources/images/login.jpg");
 {
    padding-top: 120px;
    padding-bottom: 40px;
    background-color: #eee;
  
  }
  .btn 
  {
   outline:0;
   border:none;
   border-top:none;
   border-bottom:none;
   border-left:none;
   border-right:none;
   box-shadow:inset 2px -2px rgba(0,0,0,0.15);
  }
  .btn:focus
  {
   outline:0;
   -webkit-outline:0;
   -moz-outline:0;
  }
  .fullscreen_bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 100% 100%;
    background-image: url('http://cleancanvas.herokuapp.com/img/backgrounds/color-splash.jpg');
    background-repeat:repeat;
  }
  .form-signin {
    max-width: 280px;
    padding: 15px;
    margin: 0 auto;
      margin-top:50px;
  }
  .form-signin .form-signin-heading, .form-signin {
    margin-bottom: 10px;
  }
  .form-signin .form-control {
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-signin .form-control:focus {
    z-index: 2;
  }
  .form-signin input[type="text"] {
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: none;
    border-left-style: solid;
    border-color: #000;
  }
  .form-signin input[type="password"] {
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-top-style: none;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
    border-color: rgb(0,0,0);
    border-top:1px solid rgba(0,0,0,0.08);
  }
  .form-signin-heading {
    color: #fff;
    text-align: center;
    text-shadow: 0 2px 2px rgba(0,0,0,0.5);
  }
}
</style>
</head>
<body> 
                             <!-- Header tab Command -->
<%@ include file="Header1.jsp" %>
		<div class="container">
		<div class="col-xs-4">
 <form class="form-signin" action="<c:url value="/j_spring_security_check"></c:url>"method="post">       
      <h2 class="form-signin-heading">PLEASE LOGIN</h2>
      ${error }
${logout }
${registrationSuccess }
      <input type="text" class="form-control" id="j_username" name="j_username" placeholder="User Name" required="required" autofocus="" />
      <input type="password" class="form-control" id="j_password" name="j_password" placeholder="Password" required="required"/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container-fluid">
		<div class="navbar-text pull-left">
		<p style="font-size:12px"> Copyright © 2017 Fashionkart Inc. All Right Reserved.</p></div>
	</div>
	</nav>
</body>
</html>