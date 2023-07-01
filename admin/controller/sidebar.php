<?php 



$user = get_user_information($connect);
$user = $user['0'];

require '../views/sidebar.view.php';

?>