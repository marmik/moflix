<?php


//URL PROJECT
 
define ('_SITE_URL', 'http://localhost/moflix/');

//DATABASE CONFIGURATION 

$database = array(

'host' => "127.0.0.1",
'db' => "database",
'user' => "root",
'pass' => ""

);

// SITE CONFIGURATION 

$site_config = array(
	
    'items_page' => 20, // Number Of Items To Display Per Page (Minimum 5)
    'items_featured' => 12, // Number Of Featured Items To Display (Minimum 4)
    'items_recent' => 10, // Number Of Recent Items To Display (Minimum 5)
);

?>