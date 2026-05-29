var home = {
  init: function() {

    // Carousel for trending songs
    new Glide('.glide-songs', {
      type: 'carousel',
      perView: 4,
      breakpoints: {
        1200: { perView: 4 },
        992: { perView: 3 },
        768: { perView: 2 },
        576: { perView: 1 }
      }
    }).mount();

    // Carousel for trending albums
    new Glide('.glide-albums', {
      type: 'carousel',
      perView: 4,
      breakpoints: {
        1200: { perView: 4 },
        992: { perView: 3 },
        768: { perView: 2 },
        576: { perView: 1 }
      }
    }).mount();

    // Carousel for trending artists
    new Glide('.glide-artists', {
      type: 'carousel',
      perView: 4,
      breakpoints: {
        1200: { perView: 4 },
        992: { perView: 3 },
        768: { perView: 2 },
        576: { perView: 1 }
      }
    }).mount();

    // Carousel for trending podcasts
    new Glide('.glide-podcasts', {
      type: 'carousel',
      perView: 4,
      breakpoints: {
        1200: { perView: 4 },
        992: { perView: 3 },
        768: { perView: 2 },
        576: { perView: 1 }
      }
    }).mount();
  }
};
