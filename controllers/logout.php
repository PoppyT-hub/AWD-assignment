<?php
// Clear session and log the user out
$_SESSION = array();
session_destroy();

// Redirect to login page
header("Location: index.php?p=login");
exit();
