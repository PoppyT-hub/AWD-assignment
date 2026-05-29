<?php
// Automatically load class files when they are used
function autoload($classname) {

    // Look for a matching class file in the /classes directory
    if (file_exists(__DIR__.'/../classes/'.strtolower($classname).'.class.php')) {
        require_once(__DIR__.'/../classes/'.strtolower($classname).'.class.php');
    }
}

// Register the autoload function
spl_autoload_register('autoload');
