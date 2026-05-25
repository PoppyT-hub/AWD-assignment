 {extends file="layouts/main.tpl"}
{block name="body"}
<div class="container mt-4">
    <!-- Search bar -->
    <div class="input-group mb-4">
      <input type="text" class="form-control" placeholder="Search Albums......">
      <button class="btn btn-search">Search</button>
    </div>
   <!-- TRENDING ALBUMS SECTION -->
<h2 class="mb-3">Trending Albums</h2>
<div class="section-box">

  <div class="glide glide-trending">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-dandellion.jpg');"></div>
            <h3>Dandellion</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-imtheproblem.jpg');"></div>
            <h3>I'm The Problem</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-arirang.jpg');"></div>
            <h3>Arirang</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-octane.jpg');"></div>
            <h3>Octane</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-theartofloving.jpg');"></div>
            <h3>The Art Of Loving</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/trending-debitirarmasfotos.png');"></div>
            <h3>Debi Tirar Mas Fotos</h3>
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



<!-- RECOMMENDED ALBUMS SECTION -->
<h2 class="mb-3">Recommended Albums for You</h2>
<div class="section-box">

  <div class="glide glide-reccommended">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccommended-lifeofashowgirl.png');"></div>
            <h3>The Life Of A Showgirl</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccomended-shortandsweet.png');"></div>
            <h3>Short And Sweet</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccommended-kissallthetime.png');"></div>
            <h3>Kiss All The Time Disco Occasionally</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccommended-youllbealrightkid.png');"></div>
            <h3>You'll Be Alright Kid</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccommended-eternalsunshine.png');"></div>
            <h3>Eternal Sunshine</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/album-images/reccomended-thesecretofus.jpg');"></div>
            <h3>The Secret Of Us</h3>
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

</div>
  <script src="./node_modules/@glidejs/glide/dist/glide.min.js"></script>
{/block}