<!DOCTYPE html>
<html>
<head>
  <title>Field Day Lab: {{title}}</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="fdl-nav">
  <div class="fdl-nav-left">
    <div class="fdl-nav-logo">
      <img src="assets/logo.png" alt="Field Day Learn">
    </div>
    <div class="fdl-nav-courses">
      <a href="#">
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

  <h1>{{title}}</h1>

  <h2>Videos</h2>
  <ul>
    {{#videos}}
      <li>
        <a href="{{url}}">{{name}}</a>
      </li>
    {{/videos}}
  </ul>

  <h2>About this Class</h2>
  {{{description}}}
  <img src="{{fold-image}}">
  {{{description-cont}}}

  <h2><a href="{{forum}}">Course Forum</a></h2>

  <h2>Lesson Resources</h2>
  <ul>
    {{#resources}}
      <li>
        <a href="{{url}}">{{name}}</a>
      </li>
    {{/resources}}
  </ul>

  <h2>Author</h2>
  {{#author}}
    <img src="{{photo}}">
    <h3>{{name}}</h3>
    <h4>{{job}}</h4>
    {{#links}}
      <a href="{{url}}">{{name}}</a>
    {{/links}}
  {{/author}}

</div>

</body>
</html>
