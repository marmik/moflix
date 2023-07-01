<?php

require "core.php";

$errors = '';

// Title

$titleHeader = getTitle($connect, _SONGSPAGETITLE);

// Genres

$rGenres = getSongsGenres($connect);

// Year

$rYears = getSongsYears($connect);

// Get All Songs

$getSongs = getAllSongs($connect, $site_config['items_page']);

$qResults = $getSongs['items'];
$total = $getSongs['total'];

if (empty($qResults)){
	
     $errors .='<div class="errors">'._NODATAFOUND.'</div>';
}

// For Pagination

$numPages = numTotalPages($total, $site_config['items_page']);


require './header.php';
require './top.php';
require './views/songs.view.php';
require './sidemenu.php';
require './bottom.php';
require './footer.php';

?>