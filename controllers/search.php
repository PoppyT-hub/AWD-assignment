<?php

// Get the search term from the form
$search_query = $_POST['query'] ?? null;
$Smarty->assign('query', $search_query);

// Preloaded suggestions shown before searching
$preloaded = [
    ["name" => "Taylor Swift"],
    ["name" => "Ed Sheeran"],
    ["name" => "Olivia Rodrigo"],
    ["name" => "BTS"],
    ["name" => "Dua Lipa"]
];
$Smarty->assign('preloaded', $preloaded);

// If no search yet, show only suggestions
if (!$search_query) {
    $Smarty->assign('results', []);
    $Smarty->display('pages/search.tpl');
    exit;
}

// Build API URL for iTunes Search API
$term = urlencode($search_query);
$url = "https://itunes.apple.com/search?term=".$term."&entity=song,album,musicArtist,podcast&limit=25";

// Make cURL request
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, $url);
$output = curl_exec($ch);
curl_close($ch);

// Decode JSON response
$data = json_decode($output, true);

// Extract results array
$results = $data['results'] ?? [];

// Sort results so songs appear first
usort($results, function($a, $b) {
    $aIsSong = isset($a['kind']) && $a['kind'] === 'song';
    $bIsSong = isset($b['kind']) && $b['kind'] === 'song';

    if ($aIsSong && !$bIsSong) return -1;
    if (!$aIsSong && $bIsSong) return 1;

    return 0;
});

// Pass results to template
$Smarty->assign('results', $results);

// Display search results page
$Smarty->display('pages/search.tpl');
