<?php
// Load boot file and User class
require_once(__DIR__ . '/../includes/boot.include.php');
require_once(__DIR__ . '/../classes/user.class.php');

$User = new User($Conn);

$error = null;
$success = null;

// Handle form submission
if($_POST) {

    // Basic validation
    if(empty($_POST['currentPassword'])){
        $error = "Current Password not set";
    } else if(empty($_POST['newPassword'])){
        $error = "New Password not set";
    }

    if($error) {
        // Show validation error
        $Smarty->assign('error', $error);

    } else {
        // Attempt password change
        $change_pass = $User->changeUserPassword($_POST['currentPassword'], $_POST['newPassword']);

        if($change_pass) {
            $Smarty->assign('success', "Password has been updated.");
        } else {
            $Smarty->assign('error', "Something went wrong.");
        }
    }
}

// Display the change password page
$Smarty->display('pages/changepassword.tpl');
