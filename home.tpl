<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body>

<div class="fdl-nav">
  <div class="fdl-nav-left">
    <div class="fdl-nav-logo">
      <a href="/">
        <img src="assets/logo.png" alt="Field Day Learn">
      </a>
    </div>
    <div class="fdl-nav-courses">
      <a href="/">
        Courses
      </a>
    </div>
    <div class="fdl-nav-forums">
      <a href="#">
        Forums
      </a>
    </div>
  </div>
  <div class="fdl-nav-right">
    <div class="fdl-nav-about">
      <a href="#">
        About Field Day
      </a>
    </div>
  </div>
</div>

<div class="fdl-content">

  <ul>
    {{#lessons}}
      <li>
        <a href="{{url}}">
          {{#lesson}}
            {{title}}
          {{/lesson}}
        </a>
      </li>
    {{/lessons}}
  </ul>

</div>

</body>
</html>
