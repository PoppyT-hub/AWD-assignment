<?php
// Start session and load required configuration, database connection, and class autoloader
session_start();
require_once(__DIR__.'/../includes/config.include.php');
require_once(__DIR__.'/../includes/db.include.php');
require_once(__DIR__.'/../includes/autoloader.include.php');

// Return JSON responses
header('Content-Type: application/json');

// Ensure the user is logged in before allowing playlist actions
if (!isset($_SESSION['user_data'])) {
    echo json_encode([
        "success" => false,
        "reason" => "User not logged in."
    ]);
    exit;
}

// Get playlist and item IDs from the AJAX request
$playlist_id = (int) ($_POST['playlist_id'] ?? 0);
$item_id     = (int) ($_POST['item_id'] ?? 0);

// Validate item ID
if (!$item_id) {
    echo json_encode([
        "success" => false,
        "reason" => "Missing item ID."
    ]);
    exit;
}

$Playlist = new Playlist($Conn);

/*
    Toggle logic for this system:
    - A song can only belong to ONE playlist at a time.
    - If the song already exists in ANY playlist → remove it.
    - If it does not exist → add it to the selected playlist.
*/

// Check if the item already exists in any playlist
$query = "SELECT * FROM playlist_songs WHERE item_id = :item_id";
$stmt = $Conn->prepare($query);
$stmt->execute(["item_id" => $item_id]);
$existing = $stmt->fetch(PDO::FETCH_ASSOC);

if ($existing) {
    // Remove the item from whichever playlist it is currently in
    $query = "DELETE FROM playlist_songs WHERE item_id = :item_id";
    $stmt = $Conn->prepare($query);
    $stmt->execute(["item_id" => $item_id]);

    echo json_encode([
        "success" => true,
        "reason" => "Item removed from playlist."
    ]);
    exit;

} else {
    // Add the item to the selected playlist
    $query = "INSERT INTO playlist_songs (playlist_id, item_id, user_id)
              VALUES (:playlist_id, :item_id, :user_id)";
    $stmt = $Conn->prepare($query);
    $stmt->execute([
        "playlist_id" => $playlist_id,
        "item_id" => $item_id,
        "user_id" => $_SESSION['user_data']['user_id']
    ]);

    echo json_encode([
        "success" => true,
        "reason" => "Item added to playlist."
    ]);
    exit;
}
