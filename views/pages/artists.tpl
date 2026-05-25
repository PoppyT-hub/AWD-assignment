{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="container mt-4">
    <!-- Search bar -->
    <div class="input-group mb-4">
      <input type="text" class="form-control" placeholder="Search Artists......">
      <button class="btn btn-search">Search</button>
    </div>
    <h2 class="mb-3">Trending Artists </h2>
<div class="section-box">

  <div class="glide glide-trending">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-ellalangley.png');"></div>
            <h3>Ella Langley</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-morganwallen.jpg');"></div>
            <h3>Morgan Wallen</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-justinbieber.png');"></div>
            <h3>Justin Bieber</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-brunomars.png');"></div>
            <h3>Bruno Mars</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-bts.jpg');"></div>
            <h3>BTS</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/trending-oliviadean.png');"></div>
            <h3>Olivia Dean</h3>
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
<h2 class="mb-3">Recommended Artists for You</h2>
<div class="section-box">

  <div class="glide glide-reccommended">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-harrystyles.jpg');"></div>
            <h3>Harry Styles</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-alexwarren.jpg');"></div>
            <h3>Alex Warren</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-zaralarsson.jpg');"></div>
            <h3>Zara Larsson</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-coldplay.jpg');"></div>
            <h3>Coldplay</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-taylorswift.jpg');"></div>
            <h3>Taylor Swift</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/artist-images/reccommended-mylessmith.jpg');"></div>
            <h3>Myles Smith</h3>
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