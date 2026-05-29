<?php
class Item {
    private $Conn;

    // Store the database connection when the class is created
    public function __construct($Conn) {
        $this->Conn = $Conn;
    }

    // Get all items that belong to a specific category
    public function getItemsForCategory($category_id) {
        $query = "SELECT * FROM items WHERE category_id = :category_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "category_id" => $category_id
        ]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Get a single item by its ID (used for item detail pages)
    public function getItem($item_id) {
        $query = "SELECT * FROM items WHERE item_id = :item_id";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([
            "item_id" => $item_id
        ]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
