{extends file="layouts/main.tpl"}

{block name="body"}

<div class="container mt-4">

    <!-- Item title + description -->
    <h1>{$item.item_name}</h1>
    <p>{$item.item_description}</p>

    <!-- Back button -->
    <a href="index.php?p=items&id={$item.category_id}" class="btn btn-secondary mt-3">
        Back to items
    </a>

    {if $user_data}

        <!-- FAVOURITES BUTTON -->
        {if $is_fav}
            <button id="removeFav"
                    class="btn btn-primary mt-3"
                    data-itemid="{$item.item_id}">
                Remove from favourites
            </button>
        {else}
            <button id="addFav"
                    class="btn btn-primary mt-3"
                    data-itemid="{$item.item_id}">
                Add to favourites
            </button>
        {/if}

        <!-- PLAYLIST BUTTONS (songs only → category_id = 1) -->
        {if $item.category_id == 1}

            {if $is_in_playlist}
                <!-- Remove from playlist -->
                <button id="removeFromPlaylist"
                        class="btn btn-danger mt-3"
                        data-itemid="{$item.item_id}">
                    Remove from Playlist
                </button>
            {else}
                <!-- Add to playlist -->
                <button id="addToPlaylist"
                        class="btn btn-primary mt-3"
                        data-itemid="{$item.item_id}">
                    Add to Playlist
                </button>

                <!-- Playlist dropdown container (filled by JS) -->
                <div id="playlistDropdown" style="display:none;"></div>
            {/if}

        {/if}

    {/if}

</div>

{/block}
