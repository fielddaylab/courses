<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600|Montserrat' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="home.js"></script>
</head>
<body class="fdl-page-home">

{{{navbar}}}

<div class="fdl-courses-carousel">
  <div id="fdl-carousel-page-0" class="fdl-courses-carousel-page fdl-courses-carousel-page-on">
    <div class="fdl-carousel-page-content">
      <h2>Location Based Games with ARIS</h2>
      <p>Whether it's an interactive tour or a scavenger hunt, learn how to build engaging games with the ARIS platform.</p>
      <p><a href="#" onclick="event.preventDefault();"><span class="fdl-start-button">START COURSE</span></a></p>
    </div>
  </div>
  <div id="fdl-carousel-page-1" class="fdl-courses-carousel-page">
    Page 2
  </div>
  <div id="fdl-carousel-page-2" class="fdl-courses-carousel-page">
    Page 3
  </div>
  <div class="fdl-carousel-selectors">
    <a class="fdl-carousel-selector" href="#" onclick="selectCarousel(this); event.preventDefault();" data-carousel-page="0">1</a>
    <a class="fdl-carousel-selector" href="#" onclick="selectCarousel(this); event.preventDefault();" data-carousel-page="1">2</a>
    <a class="fdl-carousel-selector" href="#" onclick="selectCarousel(this); event.preventDefault();" data-carousel-page="2">3</a>
  </div>
</div>

<div class="fdl-courses-header">
  <img src="assets/rocket-loop.png" alt="">
  <h1>COURSES</h1>
</div>

<div class="fdl-courses-cards">
  {{#lessons}}
    <a href="{{url}}">
      <div class="fdl-courses-card">
        <div class="fdl-courses-card-img" style="background-image: url('{{#lesson}}{{splash-image}}{{/lesson}}');">
          <div class="fdl-courses-card-arrow-box">
            <img class="fdl-courses-card-arrow" src="assets/course-arrow.png">
          </div>
        </div>
        <h2 class="fdl-courses-card-title">
          {{#lesson}}
            {{title}}
          {{/lesson}}
        </h2>
      </div>
    </a>
  {{/lessons}}
</div>

{{{footer}}}

</body>
</html>
