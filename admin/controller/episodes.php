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

$check_access = check_access($connect);

if ($check_access['user_role'] == 1){

$episodes = get_all_episodes($connect);

$episodes_total = number_episodes($connect);

require '../views/episodes.view.php';
require '../views/footer.view.php';
 
}else{

	header('Location: ' . _SITE_URL);
}

}else {
		header('Location: ./login.php');		
		}


?>