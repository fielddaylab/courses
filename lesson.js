function selectVideo(clicked) {
  var vids = document.getElementsByClassName('fdl-video-selector');
  for (var i = 0; i < vids.length; i++) {
    vids[i].classList.remove('fdl-video-selector-active');
  }
  clicked.classList.add('fdl-video-selector-active');

  var video = clicked.getAttribute('data-video-url');
  document.getElementById('fdl-video-iframe').setAttribute('src', video);
}

document.addEventListener('DOMContentLoaded', function(){
  var vids = document.getElementsByClassName('fdl-video-selector');
  if (vids.length > 0) {
    selectVideo(vids[0]);
  }
});
