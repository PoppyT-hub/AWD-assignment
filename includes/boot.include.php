<?php
global $Smarty;

// Start session and load core configuration + database connection
session_start();
require_once(__DIR__.'/config.include.php');
require_once(__DIR__.'/db.include.php');

// Load essential classes
require_once(__DIR__ . '/../classes/user.class.php');
require_once(__DIR__ . '/../classes/category.class.php');

// Enable autoloading for other classes
require_once(__DIR__.'/autoloader.include.php');

// Load Composer dependencies (Smarty)
require_once(__DIR__ . '/../vendor/autoload.php');

// Create Smarty instance and configure template directories
$Smarty = new Smarty\Smarty();
$Smarty->setTemplateDir(__DIR__.'/../views');
$Smarty->setCompileDir(__DIR__.'/../smarty/templates_c');
$Smarty->setCacheDir(__DIR__.'/../smarty/cache');
$Smarty->setConfigDir(__DIR__.'/../smarty/configs');

// If user is logged in, fetch their latest data and pass to templates
if(isset($_SESSION['is_loggedin']) && $_SESSION['is_loggedin']) {
    $User = new User($Conn);
    $active_user_data = $User->getUser($_SESSION['user_data']['user_id']);
    $Smarty->assign('user_data', $active_user_data);
}
