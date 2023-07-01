<?php 

ob_start();

session_start();
if (isset($_SESSION['user_email'])){
    
    
require '../../config.php';
require '../functions.php';
require '../views/header.view.php';
require '../views/navbar.view.php'; 

$connect = connect($database);
if(!$connect){
	header('Location: ' . _SITE_URL . '/admin/controller/error.php');
	} 

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

	$slug = convert_slug($song_title);
	$exists = get_song_slug($connect, $slug);

	if ($exists > 0)
	{
	    $new_number = $exists + 1;
	    $song_slug = $slug."-".$new_number;

	}else{

	$song_slug = convert_slug($song_title);

	}

	$song_image = $_FILES['song_image']['tmp_name'];

	$imagefile = explode(".", $_FILES["song_image"]["name"]);
	$renamefile = round(microtime(true)) . '.' . end($imagefile);

	$song_image_upload = '../../images/';

	move_uploaded_file($song_image, $song_image_upload . 'song_' . $renamefile);

	$statment = $connect->prepare(
		"INSERT INTO songs (song_id,song_title,song_description,song_year,song_duration,song_stars,song_link,song_status,song_downloadable, song_date,song_iframe, song_featured, song_slug, song_image) VALUES (null, :song_title, :song_description, :song_year, :song_duration, :song_stars,  :song_link, :song_status, :song_downloadable, CURRENT_TIMESTAMP, :song_iframe, :song_featured, :song_slug, :song_image)"
		);

	$statment->execute(array(

		':song_title' => $song_title,
		':song_description' => $song_description,
		':song_year' => $song_year,
		':song_duration' => $song_duration,
		':song_stars' => $song_stars,
		':song_link' => $song_link,
		':song_status' => $song_status,
		':song_downloadable' => $song_downloadable,
		':song_iframe' => $song_iframe,
		':song_featured' => $song_featured,
		':song_slug' => $song_slug,
		':song_image' => 'song_' . $renamefile
		));


$statment = $connect->prepare("SELECT @@identity AS id");
$statment->execute();
$resultado = $statment->fetchAll();
$id = 0;
foreach ($resultado as $row) {
        $id = $row["id"];
    }

$statment = $connect->prepare( "INSERT INTO songs_genres (genre_id,song_id) VALUES (:genre_id, :song_id)");
$statment->bindParam(':genre_id', $idgenre);
$statment->bindParam(':song_id', $id);

foreach ($song_genre as $option_value)
{
   $idgenre = $option_value;
   $statment->execute();
}

	header('Location:' . _SITE_URL . '/admin/controller/songs.php');

}

$genres = get_all_genres($connect);

require '../views/new.song.view.php';
require '../views/footer.view.php';

}else{

	header('Location: ' . _SITE_URL);
}

}else {
		header('Location: ./login.php');		
		}


?>