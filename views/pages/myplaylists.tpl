{extends file="layouts/main.tpl"}

{block name="body"}

<h1 class="mt-4 mb-3">My Playlists</h1>

<!-- Account navigation -->
<div class="btn-group mb-3" role="group">
    <a href="index.php?p=account" class="btn btn-secondary">Home</a>
    <a href="index.php?p=favourite" class="btn btn-secondary">Favourites</a>
    <a href="index.php?p=myplaylists" class="btn btn-secondary">My Playlists</a>
    <a href="index.php?p=addplaylist" class="btn btn-secondary">Add Playlist</a>
    <a href="index.php?p=changepassword" class="btn btn-secondary">Change Password</a>
</div>

<!-- If viewing a specific playlist -->
{if isset($playlist_songs)}

    <h2>{$playlist.playlist_name}</h2>

    {if $playlist_songs|@count > 0}

        <div class="container my-4">
            <ul class="playlist-song-list">
                {foreach from=$playlist_songs item=song}
                    <li>
                        <a href="index.php?p=item&id={$song.item_id}" class="playlist-song-link">
                            {$song.item_name}
                        </a>
                    </li>
                {/foreach}
            </ul>
        </div>

    {else}
        <p>This playlist is empty.</p>
    {/if}

<!-- Otherwise show list of all playlists -->
{else}

    {if $playlists|@count > 0}

        <div class="container my-4">
            <div class="row g-3">

                {foreach from=$playlists item=p}
                    <div class="col-6 col-md-4 col-lg-3">
                        <a href="index.php?p=myplaylists&playlist_id={$p.playlist_id}" class="playlist-card-link">
                            <div class="playlist-card">
                                <div class="playlist-card-image"></div>
                                <h3 class="playlist-card-title">{$p.playlist_name}</h3>
                            </div>
                        </a>
                    </div>
                {/foreach}

            </div>
        </div>

    {else}
        <p>You have no playlists yet.</p>
    {/if}

{/if}

{/block}
