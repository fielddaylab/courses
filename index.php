<?php

require_once 'deps/mustache/src/Mustache/Autoloader.php';
Mustache_Autoloader::register();
$mustache = new Mustache_Engine;

require_once 'deps/markdown/Michelf/Markdown.inc.php';
use \Michelf\Markdown;

$parts = array();
foreach (explode('/', $_SERVER['REQUEST_URI']) as $part) {
  if ($part !== '') {
    $parts[] = $part;
  }
}

$lessons = json_decode(file_get_contents('lessons.json'), true);
if ($lessons === null) {
  header('HTTP/1.1 500 Internal Server Error');
  echo 'Internal error';
  die;
}

$navbar = file_get_contents('navbar.tpl');
if ($navbar === false) {
  header('HTTP/1.1 500 Internal Server Error');
  echo 'Internal error';
  die;
}

$footer = file_get_contents('footer.tpl');
if ($footer === false) {
  header('HTTP/1.1 500 Internal Server Error');
  echo 'Internal error';
  die;
}

function getLessons($keys) {
  global $lessons;
  $ary = array();
  foreach ($keys as $k) {
    $ary[] = array(
      'url' => $k,
      'lesson' => $lessons[$k],
    );
  }
  return $ary;
}

if (count($parts) === 1) {
  $url = $parts[0];
  if (array_key_exists($url, $lessons)) {
    $lesson = $lessons[$url];
    $lesson['description'] = Markdown::defaultTransform($lesson['description']);
    $lesson['description-cont'] = Markdown::defaultTransform($lesson['description-cont']);
    $lesson['related'] = getLessons($lesson['related']);
    $n = count($lesson['videos']);
    $lesson['count-lessons'] = $n . ' video' . ($n === 1 ? '' : 's');
    $lesson['navbar'] = $navbar;
    $lesson['footer'] = $footer;
    echo $mustache->render(file_get_contents('lesson.tpl'), $lesson);
  } else {
    header('HTTP/1.1 404 Not Found');
    echo 'Not found';
  }
} else if (count($parts) === 0) {
  echo $mustache->render(file_get_contents('home.tpl'), array(
    'lessons' => getLessons(array_keys($lessons)),
    'navbar' => $navbar,
    'footer' => $footer,
  ));
} else {
  header('HTTP/1.1 404 Not Found');
  echo 'Not found';
}
