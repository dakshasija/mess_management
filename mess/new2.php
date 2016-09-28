<?php

include_once('./connect.php');

$regno=$_POST['regno'];
$name=$_POST['name'];
$block=$_POST['block'];
$mname=$_POST['cecky'];


if(isset($_POST('Submit')))
{
if($mname=='S')
$mid=1;
else
if($mname=='NIV')
$mid=2;
else
if($mname=='NINV')
$mid=3;
else
if($mname=='SI')
$mid=4;
$sql="INSERT INTO record (regno,name, block, mname, mid) VALUES ('$regno', '$name', '$block', '$mname', '$mid')";
if(mysqli_query($con,$sql))

{
	header('Location:final.php');


}
else
{
echo'<h3>Sorry!This Regno is already used! Try another.';
echo'<a href="index.php">Re Register</a>';

}
}

if(isset($_POST('Delete')))
{
	$sql="DELETE from record where regno=$regno";
	if(mysqli_query($con,$sql))

{
	echo <h3> Row Deleted</h3>


}
}
	
	
}

?>