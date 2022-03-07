<?php 

//Starting the Session
ob_start();

session_start();

//Creating constant to store non repeating values
define('SITEURL', 'http://192.168.0.200/projects/robo-cafe-new/');

define('LOCALHOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'food-order');

//define('LOCALHOST', 'sql303.unaux.com:3306');
//define('DB_USERNAME', 'unaux_30756807');
//define('DB_PASSWORD', 'udhx76r8');
//define('DB_NAME', 'unaux_30756807_food_order');



    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error());
    
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //Selecting Database

?>