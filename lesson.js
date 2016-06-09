function selectVideo(clicked) {
  var vids = document.getElementsByClassName('fdl-video-selector');
  for (var i = 0; i < vids.length; i++) {
    vids[i].classList.remove('fdl-video-selector-active');
  }
  clicked.classList.add('fdl-video-selector-active');

  var video = clicked.getAttribute('data-video-url');
  document.getElementById('fdl-video-iframe').setAttribute('src', video);

  var index = parseInt(clicked.getAttribute('data-video-index'));
  var descriptions = document.getElementsByClassName('fdl-video-description');
  for (var i = 0; i < descriptions.length; i++) {
    if (i === index) {
      descriptions[i].classList.add('fdl-video-description-on');
    } else {
      descriptions[i].classList.remove('fdl-video-description-on');
    }
  }

  document.getElementById('about-lesson').innerHTML = index === 0 ? 'About this Class' : 'About this Lesson';
}

document.addEventListener('DOMContentLoaded', function(){
  var vids = document.getElementsByClassName('fdl-video-selector');
  if (vids.length > 0) {
    selectVideo(vids[0]);
  }
});

function openModal() {
  document.getElementById('fdl-modal-share').classList.remove('fdl-modal-off');
}

function closeModal() {
  document.getElementById('fdl-modal-share').classList.add('fdl-modal-off');
}

function modalURL() {
  document.getElementById('fdl-modal-share').classList.add('fdl-modal-url');
  document.getElementById('fdl-modal-share').classList.remove('fdl-modal-email');
}

function modalEmail() {
  document.getElementById('fdl-modal-share').classList.remove('fdl-modal-url');
  document.getElementById('fdl-modal-share').classList.add('fdl-modal-email');
}

function aboutTab() {
  document.body.classList.add('fdl-tab-about');
  document.body.classList.remove('fdl-tab-forum');
}

function forumTab() {
  document.body.classList.remove('fdl-tab-about');
  document.body.classList.add('fdl-tab-forum');
}
