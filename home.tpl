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
      <h2>ARIS Basics</h2>
      <p>Whether it's an interactive tour or a pokemon go hunt, learn the basiscs of using the platform</p>
      <p><a href="./aris"><span class="fdl-start-button">START COURSE</span></a></p>
    </div>
  </div>
  <div id="fdl-carousel-page-1" class="fdl-courses-carousel-page">
    <div class="fdl-carousel-page-content">
      <h2>Games and Learning</h2>
      <p>James Gee explains how good games teach so well</p>
      <p><a href="./games-and-learning"><span class="fdl-start-button">START COURSE</span></a></p>
    </div>
  </div>
  <div id="fdl-carousel-page-2" class="fdl-courses-carousel-page">
    <div class="fdl-carousel-page-content">
      <h2>Introduction to Siftr</h2>
      <p>Support and Facilitate FieldWork within Classrooms and Organizations.</p>
      <p><a href="./siftr"><span class="fdl-start-button">START COURSE</span></a></p>
    </div>
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
