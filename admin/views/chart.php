<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection info
$dbhost = "127.0.0.1";
$dbname = "database";
$dbuser = "root";
$dbpass = "";

// Connect to the database
$db = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);

// Query to get the number of movies in each genre
$sql = "SELECT genre.genres_title, COUNT(*) AS num_movies 
        FROM movies_genres 
        INNER JOIN genre ON genre.genres_id = movies_genres.genre_id 
        GROUP BY genre.genres_id";

// Execute the query and fetch the results
$stmt = $db->prepare($sql);
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Prepare data for the pie chart
$data = array();
foreach ($results as $row) {
    $data[$row['genres_title']] = intval($row['num_movies']);
}

// Create data string for the chart
$chart_data = "['Genre', 'Number of Movies'],";
foreach ($data as $genre => $num_movies) {
    $chart_data .= "['$genre', $num_movies],";
}
$chart_data = rtrim($chart_data, ",");

// Display the pie chart using Google Charts API
echo "<img src='https://chart.googleapis.com/chart?cht=p3&chs=500x250&chd=t:$chart_data'>";
?>
