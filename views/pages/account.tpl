{extends file="layouts/main.tpl"}

{block name="body"}

<!-- Account dashboard menu -->
<h1 class="mb-4 pb-2">My Account</h1>

<div class="btn-group mb-3" role="group">
    <a href="index.php?p=account" class="btn btn-secondary">Home</a>
    <a href="index.php?p=favourite" class="btn btn-secondary">Favourites</a>
    <a href="index.php?p=myplaylists" class="btn btn-secondary">My Playlists</a>
    <a href="index.php?p=addplaylist" class="btn btn-secondary">Add Playlist</a>
    <a href="index.php?p=changepassword" class="btn btn-secondary">Change Password</a>
</div>

{/block}
