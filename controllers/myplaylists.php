<?php
require_once(__DIR__ . '/../includes/boot.include.php');
require_once(__DIR__ . '/../classes/playlist.class.php');

$Playlist = new Playlist($Conn);

// Check if a specific playlist is selected
$playlist_id = $_GET['playlist_id'] ?? null;

if ($playlist_id) {

    // Fetch all songs inside this playlist
    $query = "SELECT items.* 
              FROM playlist_songs
              LEFT JOIN items ON playlist_songs.item_id = items.item_id
              WHERE playlist_songs.playlist_id = :playlist_id";

    $stmt = $Conn->prepare($query);
    $stmt->execute(['playlist_id' => $playlist_id]);
    $playlist_songs = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Fetch playlist name
    $query2 = "SELECT playlist_name FROM playlists WHERE playlist_id = :playlist_id";
    $stmt2 = $Conn->prepare($query2);
    $stmt2->execute(['playlist_id' => $playlist_id]);
    $playlist = $stmt2->fetch(PDO::FETCH_ASSOC);

    // Pass data to template
    $Smarty->assign('playlist', $playlist);
    $Smarty->assign('playlist_songs', $playlist_songs);

} else {

    // No playlist selected → show list of all playlists
    $playlists = $Playlist->getUserPlaylists();
    $Smarty->assign('playlists', $playlists);
}

// Display playlists page
$Smarty->display('pages/myplaylists.tpl');
