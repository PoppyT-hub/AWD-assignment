var home = {
  init: function() {


  
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