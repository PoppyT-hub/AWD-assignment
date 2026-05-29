<?php

class Playlist {

    private $Conn;

    // Store the database connection when the class is created
    public function __construct($Conn) {
        $this->Conn = $Conn;
    }

    // Create a new playlist for the logged-in user
    public function addPlaylist($data) {
        $query = "INSERT INTO playlists (user_id, playlist_name) 
                  VALUES (:user_id, :playlist_name)";

        $stmt = $this->Conn->prepare($query);

        // Attach the current user's ID to the playlist data
        $data['user_id'] = $_SESSION['user_data']['user_id'];

        return $stmt->execute($data);
    }

    // Get all playlists belonging to the logged-in user
    public function getUserPlaylists() {
        $query = "SELECT * FROM playlists 
                  WHERE user_id = :user_id";

        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id']
        ]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Check if an item is already in ANY playlist
    public function isInPlaylist($item_id) {
        $query = "SELECT * FROM playlist_songs WHERE item_id = :item_id";

        $stmt = $this->Conn->prepare($query);
        $stmt->execute(["item_id" => $item_id]);

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Toggle playlist membership for an item
    // If the item is already in a playlist → remove it
    // If not → add it to the selected playlist
    public function togglePlaylist($playlist_id, $item_id) {

        $existing = $this->isInPlaylist($item_id);

        if ($existing) {
            // Remove the item from whichever playlist it's currently in
            $query = "DELETE FROM playlist_songs WHERE item_id = :item_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute(["item_id" => $item_id]);

            return false; // removed
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

            return true; // added
        }
    }
}
