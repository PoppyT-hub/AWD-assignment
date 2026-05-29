<?php
// Start session and load required configuration, database connection, and class autoloader
session_start();
require_once(__DIR__.'/../includes/config.include.php');
require_once(__DIR__.'/../includes/db.include.php');
require_once(__DIR__.'/../includes/autoloader.include.php');

// Create Playlist object and fetch all playlists belonging to the logged-in user
$Playlist = new Playlist($Conn);
$playlists = $Playlist->getUserPlaylists();

// Output each playlist as a selectable option (used in playlist selection UI)
foreach($playlists as $p){
    echo '<div class="playlist-option" data-playlistid="'.$p['playlist_id'].'">'.$p['playlist_name'].'</div>';
}
