{extends file="layouts/main.tpl"}

{block name="body"}

<!-- Category header -->
<h1>{$category.cat_name}</h1>
<p>Browse all {$category.cat_name} below.</p>

<!-- Item grid -->
<div class="row">
{foreach from=$items item=item}
    <div class="col-md-3">
        <div class="card h-100">

            <!-- Item image -->
            <img src="/AWD-assignment/images/{$folder}/{$item.item_image}"
                 class="card-img-top"
                 alt="{$item.item_name}">

            <!-- Item name + link -->
            <div class="card-body text-center">
                <h3 class="card-title">{$item.item_name}</h3>
                <a href="index.php?p=item&id={$item.item_id}" class="btn btn-light">
                    View details
                </a>
            </div>

        </div>
    </div>
{/foreach}
</div>

{/block}
