<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
                        <!-- Bootstrap Command -->
                        										
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
  </head>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img
   {
      width: 100%;
      height:100%;
      margin: auto;
  }
  </style>    
<body>
<div class="container-fluid">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value='/resources/images/img1.jpg'/>" alt="dress" style="width:100%;height:auto" />
        <div class="carousel-caption">
          <h3>CASUAL</h3>
          <p>SIMPLE AND BEAUTIFUL LOOK</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/img12.jpg'/>" alt="dress" style="width:100%;height:auto" />
        <div class="carousel-caption">
          <h3>PARTY WEAR</h3>
          <p>TO MAKE PARTY TIME</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='/resources/images/img9.jpg'/>" alt="dress" style="width:100%;height:auto" />
        <div class="carousel-caption">
          <h3>TRADITIONAL LOOK</h3>
          <p>FAMILY TIME</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/img10.jpg'/>" alt="dress" style="width:100%;height:auto" />
        <div class="carousel-caption">
          <h3>WEDDING BELLS</h3>
          <p>TO MAKE GRAND LOOK IN SPECIAL MOMENTS</p>
        </div>
      </div>
  
    </div>
                          <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
													<!-- Placed at the end of the document so that page load faster -->
					
			<script src="<c:url value='/resources/js/bootstrap.min.js'/>" > </script>
</body>
</html>