<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body class="fdl-page-home">

{{{navbar}}}

<div class="fdl-content">
</div>

<div class="fdl-courses-header">
  <img src="assets/rocket-loop.png" alt="">
  <h1>COURSES</h1>
</div>

<div class="fdl-courses-cards">
  {{#lessons}}
    <a href="{{url}}">
      <div class="fdl-courses-card">
        <div class="fdl-courses-card-img" style="background-image: url('{{#lesson}}{{fold-image}}{{/lesson}}');"></div>
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
