<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn: {{title}}</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body>

{{{navbar}}}

<div class="fdl-content">

  <h1>{{title}}</h1>

  <h2>{{count-lessons}}</h2>
  <div class="fdl-video-player">
    <div class="fdl-video-container">
      <iframe id="fdl-video-iframe" src="{{url}}" frameborder="0" allowfullscreen></iframe>
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
      <img class="fdl-fold-image" src="{{fold-image}}">
      {{{description-cont}}}
    </div>

    <div class="fdl-column-sidebar">

      <h2>Author</h2>
      <div class="fdl-author">
        {{#author}}
          <div class="fdl-author-photo" style="background-image: url({{photo}});"></div>
          <div class="fdl-author-info">
            <h3>{{name}}</h3>
            <h4>{{job}}</h4>
            {{#links}}
              <a href="{{url}}">{{name}}</a>
            {{/links}}
          </div>
        {{/author}}
      </div>

      <hr>

      <h2>Lesson Resources</h2>
      <ul>
        {{#resources}}
          <li>
            <a href="{{url}}">{{name}}</a>
          </li>
        {{/resources}}
      </ul>

      <hr>

      <p>
        {{#tags}}
          [{{tag}}]
        {{/tags}}
      </p>

    </div>

  </div>

  <h2>Related Courses</h2>
  <ul>
    {{#related}}
      <li>
        <a href="/{{url}}">
          {{#lesson}}{{title}}{{/lesson}}
        </a>
      </li>
    {{/related}}
  </ul>

</div>

{{{footer}}}

</body>
</html>
