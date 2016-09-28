<html>
<head>
<link rel="stylesheet" type="text/css" href="asd.css">

</head>
<body>
</body>
</html>
<?php

include_once('./connect.php');

$regno=$_POST['regno'];

$sql1="SELECT regno from record where regno='$regno'";
$query=mysqli_query($con,$sql1);
if($query)	
{
$row=mysqli_fetch_assoc($query);
if($row==NULL)
	{
echo'<h3>Sorry!Record Does Not Exist</h3>';
echo'<a href="index.php">Go Back</a>';

}
else
{
$sql="DELETE FROM record where regno='$regno'";
if(mysqli_query($con,$sql))

{
	echo '<h3>Record Deleted</h3>';
	echo'<a href="index.php">Go Back</a>';
	


}
}
}



?>