<!DOCTYPE html>
<html>
<head>
  <title>Field Day Learn</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="lesson.js"></script>
</head>
<body>

{{{navbar}}}

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

{{{footer}}}

</body>
</html>
