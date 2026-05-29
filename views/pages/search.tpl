{extends file="layouts/main.tpl"}

{block name="body"}

<div class="container mt-4">

    <h1>Search</h1>

    <!-- Search form -->
    <form method="post" action="index.php?p=search" class="mb-4">
        <input type="text"
               name="query"
               placeholder="Search for songs, albums, artists or podcasts..."
               class="form-control"
               value="{$query}">
        <button type="submit" class="btn btn-primary mt-2">Search</button>
    </form>

    <!-- If results exist -->
    {if $results|@count > 0}

        <h2>Search results for "{$query}"</h2>

        <div class="row mt-3">

            {foreach from=$results item=item}
                <div class="col-6 col-md-3 mb-4">

                    <!-- Clickable API result card -->
                    <a href="{$item.trackViewUrl|default:$item.collectionViewUrl}"
                       target="_blank"
                       style="text-decoration:none; color:inherit;">

                        <div class="card h-100">

                            {if isset($item.artworkUrl100)}
                                <img src="{$item.artworkUrl100}" class="card-img-top" alt="Artwork">
                            {/if}

                            <div class="card-body">

                                <!-- Title (track, album or artist) -->
                                {if isset($item.trackName)}
                                    <h5 class="card-title">{$item.trackName}</h5>
                                {elseif isset($item.collectionName)}
                                    <h5 class="card-title">{$item.collectionName}</h5>
                                {elseif isset($item.artistName)}
                                    <h5 class="card-title">{$item.artistName}</h5>
                                {/if}

                                <!-- Artist name -->
                                {if isset($item.artistName)}
                                    <p class="card-text">{$item.artistName}</p>
                                {/if}

                            </div>

                        </div>

                    </a>

                </div>
            {/foreach}

        </div>

    {else}

        <!-- Suggestions shown before searching -->
        <h2>Try searching for:</h2>
        <ul class="suggestions mt-3">
            {foreach from=$preloaded item=item}
                <li style="color:#fff; font-size:1.1rem;">{$item.name}</li>
            {/foreach}
        </ul>

    {/if}

</div>

{/block}
