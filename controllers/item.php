<?php

// Get item ID from URL
$item_id = $_GET['id'] ?? null;

if (!$item_id) {
    die("No item selected.");
}

// Load item details
require_once(__DIR__ . '/../classes/item.class.php');
$Item = new Item($Conn);
$item = $Item->getItem($item_id);

// Check playlist status
require_once(__DIR__ . '/../classes/playlist.class.php');
$Playlist = new Playlist($Conn);
$is_in_playlist = $Playlist->isInPlaylist($item_id);

// Check favourite status
$Favourite = new Favourite($Conn);
$is_fav = $Favourite->isFavourite($item_id);

// Pass data to template
$Smarty->assign('item', $item);
$Smarty->assign('is_fav', (bool)$is_fav);
$Smarty->assign('is_in_playlist', $is_in_playlist);

// Display item detail page
$Smarty->display('pages/item.tpl');
