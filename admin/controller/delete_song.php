<?php 



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

$id_movie = cleardata($_GET['id']);

if(!$id_song){
	header('Location: ' . _SITE_URL . '/admin/controller/home.php');
}

$check_access = check_access($connect);

if ($check_access['user_role'] == 1){


$statement = $connect->prepare('DELETE FROM songs_genres WHERE song_id = :song_id;');
$statement->execute(array('song_id' => $id_song));

$statement = $connect->prepare('DELETE FROM songs WHERE song_id = :song_id');
$statement->execute(array('song_id' => $id_song));

header('Location: ' . $_SERVER['HTTP_REFERER']);

}else{

	header('Location: ' . _SITE_URL);
}

}else {
		header('Location: ./login.php');		
		}


?>