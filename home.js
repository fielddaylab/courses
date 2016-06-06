var carouselTimer = undefined;

function selectCarousel(clicked) {
  var pageNumber = parseInt(clicked.getAttribute('data-carousel-page'));
  var pages = document.getElementsByClassName('fdl-courses-carousel-page');
  for (var i = 0; i < pages.length; i++) {
    var n = parseInt(pages[i].id.replace('fdl-carousel-page-', ''));
    if (n <= pageNumber) {
      pages[i].classList.add('fdl-courses-carousel-page-on');
    } else {
      pages[i].classList.remove('fdl-courses-carousel-page-on');
    }
  }

  var nextPage = (pageNumber + 1) % 3;
  var dots = document.getElementsByClassName('fdl-carousel-selector');
  var nextSelector;
  for (var i = 0; i < dots.length; i++) {
    dots[i].classList.remove('fdl-carousel-selector-active');
    if (parseInt(dots[i].getAttribute('data-carousel-page')) === nextPage) {
      nextSelector = dots[i];
    }
  }
  clicked.classList.add('fdl-carousel-selector-active');

  clearTimeout(carouselTimer);
  if (nextSelector) {
    carouselTimer = setTimeout(function(){
      selectCarousel(nextSelector);
    }, 5000);
  }
}

document.addEventListener('DOMContentLoaded', function(){
  var dots = document.getElementsByClassName('fdl-carousel-selector');
  if (dots.length > 0) {
    selectCarousel(dots[0]);
  }
});
