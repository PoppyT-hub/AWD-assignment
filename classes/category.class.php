<?php
class Category {
    protected $Conn;

    // Store the database connection when the class is created
    public function __construct($Conn){
        $this->Conn = $Conn;
    }

    // Fetch all categories from the database, ordered alphabetically
    public function getAllCategories() {
        $query = "SELECT * FROM music_categories ORDER BY cat_name ASC";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Fetch a single category by its ID
    public function getCategory($category_id) {
        $query = "SELECT * FROM music_categories WHERE cat_id = ?";
        $stmt = $this->Conn->prepare($query);
        $stmt->execute([$category_id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
