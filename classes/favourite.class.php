<?php
class Favourite {
    protected $Conn;

    // Store the database connection when the class is created
    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    // Check if the current user has favourited a specific item
    public function isFavourite($item_id){
        $query = "SELECT * FROM user_favs 
                  WHERE user_id = :user_id 
                  AND item_id = :item_id";

        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id'],
            "item_id" => $item_id
        ]);

        return $stmt->fetch(PDO::FETCH_ASSOC); // returns row or false
    }

    // Add or remove a favourite depending on its current state
    public function toggleFavourite($item_id){
        $is_favourite = $this->isFavourite($item_id);

        if($is_favourite){
            // If already favourited → remove it
            $query = "DELETE FROM user_favs WHERE user_fav_id = :fav_id";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute([
                "fav_id" => $is_favourite['user_fav_id']
            ]);
            return false; // removed
        } else {
            // If not favourited → add it
            $query = "INSERT INTO user_favs (user_id, item_id) 
                      VALUES (:user_id, :item_id)";
            $stmt = $this->Conn->prepare($query);
            $stmt->execute([
                "user_id" => $_SESSION['user_data']['user_id'],
                "item_id" => $item_id
            ]);
            return true; // added
        }
    }

    // Get all favourite items for the logged-in user
    public function getAllFavouritesForUser(){
        $query = "SELECT * 
                  FROM user_favs 
                  LEFT JOIN items ON user_favs.item_id = items.item_id 
                  WHERE user_favs.user_id = :user_id";

        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "user_id" => $_SESSION['user_data']['user_id']
        ]);

        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
