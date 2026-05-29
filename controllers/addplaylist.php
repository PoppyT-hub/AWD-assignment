<?php
// Set view name and load the Add Playlist form
$Smarty->assign('view_name', 'addplaylist');
$Smarty->display('views/pages/addplaylist.tpl');

// Handle form submission
if($_POST) {

    // Validate playlist name
    if(!$_POST['playlist_name']) {
        $error = "Please enter a playlist name.";
    }

    // If validation failed, show error
    if(isset($error)) {
        $Smarty->assign('error', $error);

    } else {
        // Create playlist
        $data = [];
        $data['playlist_name'] = $_POST['playlist_name'];

        $Playlist = new Playlist($Conn);
        $attempt = $Playlist->addPlaylist($data);

        // Show success or error message
        if($attempt) {
            $Smarty->assign('success', "Your playlist has been created.");
        } else {
            $Smarty->assign('error', "An error occurred while creating the playlist.");
        }
    }
}




