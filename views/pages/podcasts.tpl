{extends file="layouts/main.tpl"}
{block name="body"}
  <div class="container mt-4">
    <!-- Search bar -->
    <div class="input-group mb-4">
      <input type="text" class="form-control" placeholder="Search Podcasts......">
      <button class="btn btn-search">Search</button>
    </div>
   <h2 class="mb-3">Trending Podcasts </h2>
<div class="section-box">

  <div class="glide glide-trending">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-restispolitics.png');"></div>
            <h3>The Rest is Politics</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-romesh.png');"></div>
            <h3>The Romesh Ranganathan Show</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-diaryceo.png');"></div>
            <h3>The Diary of A CEO</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-restishistory.jpg');"></div>
            <h3>The Rest is History</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-restisentertainment.jpg');"></div>
            <h3>The Rest is Entertainment</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/trending-louistheroux.png');"></div>
            <h3>The Louis Theroux Podcast</h3>
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
<h2 class="mb-3">Recommended Podcasts for You</h2>
<div class="section-box">

  <div class="glide glide-reccommended">
    <div class="glide__track" data-glide-el="track">
      <ul class="glide__slides">

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-talk.jpg');"></div>
            <h3>We Need to Talk</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-company.png');"></div>
            <h3>Great Company</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-happyhour.jpg');"></div>
            <h3>Happy Hour</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-dish.jpg');"></div>
            <h3>Dish</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-beginagain.jpg');"></div>
            <h3>Begin Again</h3>
          </div>
        </li>

        <li class="glide__slide">
          <div class="card">
            <div class="card-img" style="background-image: url('./images/podcast-images/reccommended-stayingrelevant.jpg');"></div>
            <h3>Staying Relevant</h3>
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