<?php 

// Enable error reporting during development
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Load core system bootstrapping (DB, Smarty, autoloading, session, etc.)
require_once(__DIR__. '/includes/boot.include.php');

// Check if a page parameter is provided
if (isset($_GET['p']) && $_GET['p'] !== '') {

    // Pages that require the user to be logged in
    $secure_pages = array('account', 'favourite');

    // Redirect unauthenticated users to login page
    if (in_array($_GET['p'], $secure_pages)) {
        if (!isset($_SESSION['is_loggedin']) || !$_SESSION['is_loggedin']) {
            header("Location: index.php?p=login");
            exit();
        }
    }

    // Pass the view name to Smarty for page‑specific JS loading
    $Smarty->assign('view_name', $_GET['p']);

    // Load the matching controller
    require_once('controllers/' . $_GET['p'] . '.php');

} else {

    // Default page: Home
    $Smarty->assign('view_name', 'home');
    require_once('controllers/home.php');
}
