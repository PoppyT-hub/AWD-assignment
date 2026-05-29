<?php
// Load boot file and Favourite class
require_once(__DIR__ . '/../includes/boot.include.php');
require_once(__DIR__ . '/../classes/favourite.class.php');

// Get all favourites for the logged-in user
$Favourite = new Favourite($Conn);
$user_favs = $Favourite->getAllFavouritesForUser();

// Pass favourites to template
$Smarty->assign('user_favs', $user_favs);

// Display favourites page
$Smarty->display('pages/favourite.tpl');
