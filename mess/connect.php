<?php

$host="localhost";
$user="root";
$pass='';
$dbn= "mess management";
$con = mysqli_connect($host, $user, $pass, $dbn);
if(!$con )
{
	echo"Connection Error:".mysqli_connect_error();
}



?>