<?php 


// Movies Genres

$moviesGenres = getMoviesGenres($connect);

// Songs Genres

$songsGenres = getSongsGenres($connect);

// Series Genres

$seriesGenres = getSeriesGenres($connect);

require './views/sidemenu.view.php';

?>