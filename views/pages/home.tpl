{extends file="layouts/main.tpl"}

{block name="body"}

<!-- Page welcome header -->
<div class="row">
    <div class="container">
        <h1>Welcome to SongPix!</h1>
    </div>
</div>

<!-- Trending Songs Carousel -->
<div class="row">
    <h2>Trending Songs</h2>

    <div class="glide glide-songs">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">

                <!-- Each slide is a static featured song card -->
                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-choosingtexas.png');"></div>
                        <h3>Choosin' Texas</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-manineed.jpg');"></div>
                        <h3>Man I Need</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-ordinary.jpg');"></div>
                        <h3>Ordinary</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-stateside.png');"></div>
                        <h3>Stateside</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-ophelia.png');"></div>
                        <h3>The Fate of Ophelia</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/song-images/trending-wheresmyhusband.png');"></div>
                        <h3>Where The Hell is My Husband</h3>
                    </div>
                </li>

            </ul>
        </div>

        <!-- Carousel arrows -->
        <div class="glide__arrows" data-glide-el="controls">
            <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
            <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
        </div>
    </div>
</div>

<!-- Trending Albums Carousel -->
<div class="row">
    <h2>Trending Albums</h2>

    <div class="glide glide-albums">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">

                <!-- Static featured album cards -->
                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-dandellion.jpg');"></div>
                        <h3>Dandellion</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-imtheproblem.jpg');"></div>
                        <h3>I'm The Problem</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-arirang.jpg');"></div>
                        <h3>Arirang</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-octane.jpg');"></div>
                        <h3>Octane</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-theartofloving.jpg');"></div>
                        <h3>The Art Of Loving</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/album-images/trending-debitirarmasfotos.png');"></div>
                        <h3>Debi Tirar Mas Fotos</h3>
                    </div>
                </li>

            </ul>
        </div>

        <!-- Carousel arrows -->
        <div class="glide__arrows" data-glide-el="controls">
            <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
            <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
        </div>
    </div>
</div>

<!-- Trending Artists Carousel -->
<div class="row">
    <h2>Trending Artists</h2>

    <div class="glide glide-artists">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">

                <!-- Static featured artist cards -->
                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-ellalangley.png');"></div>
                        <h3>Ella Langley</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-morganwallen.jpg');"></div>
                        <h3>Morgan Wallen</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-justinbieber.png');"></div>
                        <h3>Justin Bieber</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-brunomars.png');"></div>
                        <h3>Bruno Mars</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-bts.jpg');"></div>
                        <h3>BTS</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/artist-images/trending-oliviadean.png');"></div>
                        <h3>Olivia Dean</h3>
                    </div>
                </li>

            </ul>
        </div>

        <!-- Carousel arrows -->
        <div class="glide__arrows" data-glide-el="controls">
            <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
            <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
        </div>
    </div>
</div>

<!-- Trending Podcasts Carousel -->
<div class="row">
    <h2>Trending Podcasts</h2>

    <div class="glide glide-podcasts">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">

                <!-- Static featured podcast cards -->
                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-restispolitics.png');"></div>
                        <h3>The Rest is Politics</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-romesh.png');"></div>
                        <h3>The Romesh Ranganathan Show</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-diaryceo.png');"></div>
                        <h3>The Diary of A CEO</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-restishistory.jpg');"></div>
                        <h3>The Rest is History</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-restisentertainment.jpg');"></div>
                        <h3>The Rest is Entertainment</h3>
                    </div>
                </li>

                <li class="glide__slide">
                    <div class="card">
                        <div class="card-img" style="background-image: url('/AWD-assignment/images/podcast-images/trending-louistheroux.png');"></div>
                        <h3>The Louis Theroux Podcast</h3>
                    </div>
                </li>

            </ul>
        </div>

        <!-- Carousel arrows -->
        <div class="glide__arrows" data-glide-el="controls">
            <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
            <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
        </div>
    </div>
</div>

<!-- Bootstrap bundle -->
<script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

{/block}
