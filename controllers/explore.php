<?php
// Load all categories for the Explore page
$Category = new Category($Conn);
$categories = $Category->getAllCategories();

// Pass categories to the template
$Smarty->assign('categories', $categories);

// Display Explore page
$Smarty->display('pages/explore.tpl');
