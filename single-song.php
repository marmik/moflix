<?php

require "core.php";

// Get Item Id

$idSong = clearGetData(getItemId());


if(empty($idSong)){

	header('Location: '. $urlPath->home());
}

// Song Details

$songDetails = getSongById($connect, $idSong);

if(empty($songDetails)){
	
	header('Location: '. $urlPath->error());
}

// Stars by Song

$getSongStars = getSongsStarsBySong($connect, $idSong);

$songStars = explode(',', $getSongStars);


// Genres by Song

$getSongGenres = getSongsGenresBySong($connect, $idSong);

$songGenres = explode(',', $getSongGenres);


// Title

$titleHeader = getTitle($connect, $songDetails['song_title']);

// Get All Reviews By Song

$getReviews = ReviewsBySong($idSong, $connect);


if (isLogged()) {

// Check if user have already posted a review for the Song
	
$isReviewed = getUserReviewBySong($idSong, $connect);

// Check if user have saved the item into favorites

$isInFavorites = getFavBySong($connect, $idSong);

}



require './header.php';
require './top.php';
require './views/single-song.view.php';
require './sidemenu.php';
require './bottom.php';
require './footer.php';

?>