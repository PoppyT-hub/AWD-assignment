<?php
require_once(__DIR__ . '/../classes/user.class.php');

$error = "";

// Handle form submission
if($_POST) {

    // Registration form
    if(isset($_POST['register'])) {

        // Basic validation
        if(!$_POST['email']){
            $error = "Email not set";
        } else if(!$_POST['password']){
            $error = "Password not set";
        } else if(!$_POST['password_confirm']){
            $error = "Password not confirmed";
        } else if($_POST['password'] != $_POST['password_confirm']) {
            $error = "Password and confirm password must match";
        } else if(strlen($_POST['password']) < 8){
            $error = "Password must be at least 8 characters in length";
        } else if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid";
        }

        // Show error or create account
        if($error) {
            $Smarty->assign('error', $error);
        } else {  
            $User = new User($Conn);
            $attempt = $User->createUser($_POST);

            if($attempt) {
                $Smarty->assign('success', "Your account has been created. Please now login.");
            } else {
                $Smarty->assign('error', "An error occurred, please try again later.");
            }
        }

    // Login form
    } else if(isset($_POST['login'])) {

        // Basic validation
        if(!$_POST['email']) {
            $error = "Email not set";
        } else if(!$_POST['password']) {
            $error = "Password not set";
        } else if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $error = "Email is not valid";
        } else if(strlen($_POST['password']) < 8) {
            $error = "Password must be at least 8 characters in length";
        }

        // Show error or attempt login
        if($error) {
            $Smarty->assign('error', $error);
        } else {
            $User = new User($Conn);
            $user_data = $User->loginUser($_POST['email'], $_POST['password']);

            if($user_data) {
                // Store session and redirect
                $_SESSION['is_loggedin'] = true;
                $_SESSION['user_data'] = $user_data;
                header("Location: index.php?p=account");
                exit();
            } else {
                $Smarty->assign('error', "Incorrect Email/Password");
            }
        }
    }
}

// Display login/register page
$Smarty->display('pages/login.tpl');
