{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="container mt-4">
    <div class="input-group mb-4">
      <input type="text" class="form-control" placeholder="Search Songs......">
      <button class="btn btn-search">Search</button>
    </div>
  <h2 class="mb-3">Trending Songs </h2>
<div class="section-box">

  <div class="glide glide-trending">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-choosingtexas.png');"></div>
            <h3>Choosin' Texas</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-manineed.jpg');"></div>
            <h3>Man i need</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-ordinary.jpg');"></div>
            <h3>Ordinary</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-stateside.png');"></div>
            <h3>Stateside</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-ophelia.png');"></div>
            <h3>The Fate of Ophelia</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/trending-wheresmyhusband.png');"></div>
            <h3>Where The Hell is My Husband</h3>
          </div>
        </li>

      </ul>
    </div>

    <div class="glide__arrows" data-glide-el="controls">
      <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
      <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
    </div>

  </div>

</div>

   <h2 class="mb-3">Recommended Songs for You</h2>
<div class="section-box">

  <div class="glide glide-reccommended">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-espresso.jpg');"></div>
            <h3>Espresso</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-midnightsun.png');"></div>
            <h3>Midnight Sun</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-dynamite.png');"></div>
            <h3>Dynamite</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-asitwas.jpg');"></div>
            <h3>As it Was</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-singleladies.png');"></div>
            <h3>Single Ladies</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/song-images/reccommended-respect.png');"></div>
            <h3>Respect</h3>
          </div>
        </li>

      </ul>
    </div>

    <div class="glide__arrows" data-glide-el="controls">
      <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
      <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
    </div>

  </div>

</div>

  <script src="./node_modules/@glidejs/glide/dist/glide.min.js"></script>

{/block}