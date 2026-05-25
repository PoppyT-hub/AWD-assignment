{extends file="layouts/main.tpl"}
{block name="body"}

<div class="container">
    <h1 class="mt-4 mb-4">Explore Music</h1>

    <div class="row">
        {foreach from=$categories item=category}
        <div class="col-md-3">
            <div class="music-card">
                <div class="music-card-image" style="background-image: url('./user-images/categories/{$category.cat_image}');">
                    <a href="index.php?p=list&id={$category.cat_id}"></a>
                </div>
                <a href="index.php?p=list&id={$category.cat_id}">
                    <h3>{$category.cat_name}</h3>
                </a>
            </div>
        </div>
        {/foreach}
    </div>
</div>

{/block}

