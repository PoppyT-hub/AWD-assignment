<?php
// Start session and load required configuration, database connection, and class autoloader
session_start();
require_once(__DIR__.'/../includes/config.include.php');
require_once(__DIR__.'/../includes/db.include.php');
require_once(__DIR__.'/../includes/autoloader.include.php');

// Return JSON responses
header('Content-Type: application/json');

// Ensure the user is logged in before allowing favourite actions
if (!isset($_SESSION['user_data'])) {
    echo json_encode([
        "success" => false,
        "reason" => "User not logged in."
    ]);
    exit;
}

// Get the item ID from the POST request (default to 0 if missing)
$item_id = (int) ($_POST['item_id'] ?? 0);

// Validate item ID
if (!$item_id) {
    echo json_encode([
        "success" => false,
        "reason" => "Item ID not provided."
    ]);
    exit;
}

// Toggle favourite status for this item for the logged-in user
$Favourite = new Favourite($Conn);
$toggle = $Favourite->toggleFavourite($item_id);

// Return success message indicating whether it was added or removed
echo json_encode([
    "success" => true,
    "reason" => $toggle ? "Item added to favourites." : "Item removed from favourites."
]);
