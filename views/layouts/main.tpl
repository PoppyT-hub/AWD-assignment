<!DOCTYPE html>
<html>
    <head>
      <!-- Page metadata + responsive layout -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta charset="utf-8">

      <!-- Bootstrap JS -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js"></script>

      <title>SongPix</title>

      <!-- Bootstrap + Glide + main stylesheet -->
      <link href="./node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="./node_modules/@glidejs/glide/dist/glide.min.js"></script>
      <link rel="stylesheet" href="./css/styles.css">
      <link rel="stylesheet" href="./node_modules/@glidejs/glide/dist/css/glide.core.min.css">
      <link rel="stylesheet" href="./node_modules/@glidejs/glide/dist/css/glide.theme.min.css">
    </head>

    <body>

      <!-- Main site navigation -->
      <header>
        <nav class="navbar navbar-expand-lg bg-light">
          <div class="container">
            <a class="navbar-brand" href="index.php">SongPix</a>
            
            <!-- Mobile menu toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar"
              aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navigation links -->
            <div class="collapse navbar-collapse" id="navbar">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="index.php?p=explore">Explore</a></li>
                <li class="nav-item"><a class="nav-link" href="index.php?p=search">Search</a></li>

                <!-- Show different links depending on login state -->
                {if $user_data}
                    <li class="nav-item"><a class="nav-link" href="index.php?p=account">Account</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.php?p=logout">Logout</a></li>
                {else}
                    <li class="nav-item"><a class="nav-link" href="index.php?p=login">Login / Register</a></li>
                {/if}

              </ul>
            </div>
          </div>
        </nav>
      </header>

      <!-- Page‑specific content -->
      {block name="body"}{/block}

      <!-- Global scripts -->
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js"></script>
      <script src="./node_modules/@glidejs/glide/dist/glide.min.js"></script>

      <!-- Site scripts -->
      <script src="/AWD-assignment/js/scripts.min.js"></script>
      <script src="/AWD-assignment/js/item_fav.js"></script>

      <!-- Page‑specific JS (based on $view_name) -->
      <script src="js/{$view_name}.js"></script>

      <!-- Auto‑initialise page JS if it exists -->
      <script>
        document.addEventListener("DOMContentLoaded", function() {
          if (typeof {$view_name} !== "undefined" && {$view_name}.init) {
            {$view_name}.init();
          }
        });
      </script>

    </body>
</html>
