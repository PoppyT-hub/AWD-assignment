<?php
// Get the category ID from the URL
$category_id = $_GET['id'];

// Load required classes
require_once('classes/item.class.php');
require_once('classes/category.class.php');

// Create class instances
$Item = new Item($Conn);
$Category = new Category($Conn);

// Fetch all items belonging to this category
$items = $Item->getItemsForCategory($category_id);

// Fetch category details (name, icon, etc.)
$category = $Category->getCategory($category_id);

// Map category IDs to their image folders
$folderMap = [
    1 => 'song-images',
    2 => 'artist-images',
    3 => 'album-images',
    4 => 'podcast-images'
];

// Determine which folder to use for this category
$folder = $folderMap[$category['cat_id']] ?? 'song-images';

// Pass data to Smarty
$Smarty->assign('items', $items);
$Smarty->assign('category', $category);
$Smarty->assign('folder', $folder);

// Display the items page
$Smarty->display('pages/items.tpl');
?>

