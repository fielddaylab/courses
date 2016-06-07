<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn: {{title}}</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body class="fdl-page-lesson">

{{{navbar}}}

<div class="fdl-content">

  <h1>{{title}}</h1>

  <h2>{{count-lessons}}</h2>
  <div class="fdl-video-player">
    <div class="fdl-video-container">
      <iframe id="fdl-video-iframe" allowfullscreen></iframe>
    </div>
    <ol class="fdl-video-list">
      {{#videos}}
        <li>
          <a href="#" class="fdl-video-selector" onclick="selectVideo(this);" data-video-url="{{url}}">{{name}}</a>
        </li>
      {{/videos}}
    </ol>
  </div>

  <h2><a href="{{forum}}">Course Forum</a></h2>

  <div class="fdl-columns">

    <div class="fdl-column-content">
      <h2>About this Class</h2>
      {{{description}}}
      <img class="fdl-fold-image" src="{{fold-image}}" alt="">
      {{{description-cont}}}
    </div>

    <div class="fdl-column-sidebar">

      <h2>Author</h2>
      <div class="fdl-author">
        {{#author}}
          <div class="fdl-author-photo" style="background-image: url({{photo}});"></div>
          <div class="fdl-author-info">
            <h3>{{name}}</h3>
            <p>{{job}}</p>
            <p class="fdl-author-links">
              {{#links}}
                <a href="{{url}}">{{name}}</a>
              {{/links}}
            </p>
          </div>
        {{/author}}
      </div>

      <hr>

      <h2>Lesson Resources</h2>
      <ul class="fdl-resources">
        {{#resources}}
          <li>
            <a href="{{url}}">
              <span class="fdl-resource-{{icon}}"></span>
              {{name}}
            </a>
          </li>
        {{/resources}}
      </ul>

      <hr>

      <p class="fdl-tags">
        {{#tags}}
          <a href="tag/{{tag}}">
            <span class="fdl-tag">{{tag}}</span>
          </a>
        {{/tags}}
      </p>

    </div>

  </div>

</div>

<div class="fdl-courses-header">
  <img src="assets/cubes.png" alt="">
  <h1>RELATED COURSES</h1>
</div>

<div class="fdl-courses-cards">
  {{#related}}
    <a href="{{url}}">
      <div class="fdl-courses-card">
        <div class="fdl-courses-card-img" style="background-image: url('{{#lesson}}{{fold-image}}{{/lesson}}');">
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
  {{/related}}
</div>

{{{footer}}}

</body>
</html>
