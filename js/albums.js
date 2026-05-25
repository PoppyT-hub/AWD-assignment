var albums = {
  init: function() {
    console.log("Albums init running");

    // Trending carousel
    new Glide('.glide-trending', {
      type: 'carousel',
      perView: 4,
      breakpoints: {
        1200: { perView: 4 },
        992: { perView: 3 },
        768: { perView: 2 },
        576: { perView: 1 }
      }
    }).mount();

    // Recommended carousel
    new Glide('.glide-reccommended', {
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
