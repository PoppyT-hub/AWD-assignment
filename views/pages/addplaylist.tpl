{extends file="layouts/main.tpl"}

{block name="body"}

<h1 class="mb-4 pb-2">Add Playlist</h1>

<!-- Account navigation -->
<div class="btn-group mb-3" role="group">
    <a href="index.php?p=account" class="btn btn-secondary">Home</a>
    <a href="index.php?p=favourite" class="btn btn-secondary">Favourites</a>
    <a href="index.php?p=myplaylists" class="btn btn-secondary">My Playlists</a>
    <a href="index.php?p=addplaylist" class="btn btn-secondary">Add Playlist</a>
    <a href="index.php?p=changepassword" class="btn btn-secondary">Change Password</a>
</div>

<!-- Playlist creation form -->
<form method="post" action="index.php?p=addplaylist" class="form-light">
    <div class="mb-3">
        <label class="form-label" for="playlist_name">Playlist Name</label>
        <input type="text" class="form-control" id="playlist_name" name="playlist_name">
    </div>

    <button type="submit" class="btn btn-primary">Create Playlist</button>
</form>

{/block}
