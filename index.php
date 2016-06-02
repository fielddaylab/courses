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

if (count($parts) === 1) {
  $url = $parts[0];
  if (array_key_exists($url, $lessons)) {
    $lesson = $lessons[$url];
    $lesson['description'] = Markdown::defaultTransform($lesson['description']);
    $lesson['description-cont'] = Markdown::defaultTransform($lesson['description-cont']);
    echo $mustache->render(file_get_contents('lesson.tpl'), $lesson);
  } else {
    header('HTTP/1.1 404 Not Found');
    echo 'Not found';
  }
} else if (count($parts) === 0) {
  echo 'Welcome to Field Day Learn.';
} else {
  header('HTTP/1.1 404 Not Found');
  echo 'Not found';
}
