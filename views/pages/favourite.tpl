{extends file="layouts/main.tpl"}

{block name="body"}

<h1 class="mt-4 mb-3">Favourites</h1>

<!-- Account navigation -->
<div class="btn-group mb-3" role="group">
    <a href="index.php?p=account" class="btn btn-secondary">Home</a>
    <a href="index.php?p=favourite" class="btn btn-secondary">Favourites</a>
    <a href="index.php?p=myplaylists" class="btn btn-secondary">My Playlists</a>
    <a href="index.php?p=addplaylist" class="btn btn-secondary">Add Playlist</a>
    <a href="index.php?p=changepassword" class="btn btn-secondary">Change Password</a>
</div>

<!-- List of favourite items -->
<ul class="user-favs">
    {foreach from=$user_favs item=fav}
        <li>
            <a href="index.php?p=item&id={$fav.item_id}">
                {$fav.item_name}
            </a>
        </li>
    {/foreach}
</ul>

{/block}
