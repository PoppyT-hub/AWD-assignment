{extends file="layouts/main.tpl"}

{block name="body"}

<div class="container">
    <h1 class="mt-4 mb-4">Explore Music</h1>

    <!-- Loop through all categories -->
    <div class="row">
        {foreach from=$categories item=category}
        <div class="col-md-3">
            <div class="music-card">

                <!-- Category image -->
                <div class="music-card-image"
                     style="background-image: url('/AWD-assignment/images/{$category.cat_image}');">
                    <a href="index.php?p=items&id={$category.cat_id}"></a>
                </div>

                <!-- Category name -->
                <a href="index.php?p=items&id={$category.cat_id}">
                    <h3>{$category.cat_name}</h3>
                </a>

            </div>
        </div>
        {/foreach}
    </div>
</div>

{/block}
