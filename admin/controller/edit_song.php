<?php 


session_start();
if (isset($_SESSION['user_email'])){
    
    
require '../../config.php';
require '../functions.php';
require '../views/header.view.php';
require '../views/navbar.view.php'; 

$connect = connect($database);
if(!$connect){
	header ('Location: ' . _SITE_URL . '/admin/controller/error.php');
	}

	ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


$check_access = check_access($connect);

if ($check_access['user_role'] == 1){

if ($_SERVER['REQUEST_METHOD'] == 'POST'){

	$song_genre = $_POST['song_genre'];

	$song_title = cleardata($_POST['song_title']);
	$song_description = cleardataTextArea($_POST['song_description']);
	$song_year = cleardata($_POST['song_year']);
	$song_duration = cleardata($_POST['song_duration']);
	$song_link = cleardata($_POST['song_link']);
	$song_status = cleardata($_POST['song_status']);
	$song_downloadable = cleardata($_POST['song_downloadable']);
	$song_stars = cleardata($_POST['song_stars']);
	$song_iframe = $_POST['song_iframe'];
	$song_featured = cleardata($_POST['song_featured']);
	$song_id = cleardata($_POST['song_id']);
	$song_image_save = $_POST['song_image_save'];
	$song_image = $_FILES['song_image'];

	if (empty($song_image['name'])) {
		$song_image = $song_image_save;
	} else{
			$imagefile = explode(".", $_FILES["song_image"]["name"]);
			$renamefile = round(microtime(true)) . '.' . end($imagefile);
		$song_image_upload = '../../images/';
		move_uploaded_file($_FILES['song_image']['tmp_name'], $song_image_upload . 'song_' . $renamefile);
		$song_image = 'song_' . $renamefile;
	}

$statment = $connect->prepare(
	"UPDATE songs SET song_title = :song_title, song_description = :song_description, song_year = :song_year, song_duration = :song_duration,  song_link = :song_link, song_status = :song_status, song_downloadable = :song_downloadable, song_stars = :song_stars, song_iframe = :song_iframe, song_featured = :song_featured, song_image = :song_image WHERE song_id = :song_id"
	);

$statment->execute(array(

		':song_title' => $song_title,
		':song_description' => $song_description,
		':song_year' => $song_year,
		':song_duration' => $song_duration,
		':song_link' => $song_link,
		':song_status' => $song_status,
		':song_downloadable' => $song_downloadable,
		':song_stars' => $song_stars,
		':song_iframe' => $song_iframe,
		':song_featured' => $song_featured,
		':song_image' => $song_image,
		':song_id' => $song_id

		));

  $statment = $connect->prepare("DELETE FROM songs_genres WHERE song_id = :song_id");
  $statment->bindParam(':song_id',$song_id);
  $statment->execute();

  $statment = $connect->prepare("INSERT INTO songs_genres (genre_id,song_id) VALUES (:genre_id, :song_id)" );
  $statment->bindParam(':genre_id', $idgenre);
  $statment->bindParam(':song_id', $song_id);

  $statment->execute();

foreach ($song_genre as $option_value)
{
   $idgenre = $option_value;
   $statment->execute();
}

header('Location: ' . $_SERVER['HTTP_REFERER']);

} else{

$id_song = id_song($_GET['id']);
    
if(empty($id_song)){
	header('Location: ' . _SITE_URL . '/admin/controller/home.php');
	}

$song = get_song_per_id($connect, $id_song);
    
    if (!$song){
    header('Location: ' . _SITE_URL . '/admin/controller/home.php');
}

$song = $song['0'];

}

$genres = get_genres($connect);
$selected_genres = selected_song_genres($connect);
$not_selected_genres = not_selected_song_genres($connect);

require '../views/edit.song.view.php';
require '../views/footer.view.php';

}else{

	header('Location: ' . _SITE_URL);
} 
 
} else {
		header('Location: ./login.php');		
		}


?>