<html>
<head><link rel="stylesheet" type="text/css" href="asd.css"></head>

<body>
<div class="container">

    <form id="signup" action="#" method="POST">

        <div class="header">
        
            <h3>Search Day</h3>
            
            <p>Fill to Find the Food</p>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            <input type="text" placeholder="Day" name="day" autofocus />
        
            
			
			

            
            <div class="checkboxy">
                
				<h4>Mess Name:<h4><br>
			<input type="radio" id="checky" value="special_mess" name="cecky" required><label class="terms">Special</label>
			<input type="radio" id="checky" value="north_indian_v" name="cecky" required><label class="terms">North Veg</label>
			<input type="radio" id="checky" value="north_indian_nv" name="cecky" required><label class="terms">North Nveg</label>
			<input type="radio" id="checky" value="south_indian" name="cecky"required><label class="terms">South</label>
			
            </div>
            
           <input type="submit" id="submit" value="Submit">
			<a id="submit" href="Index.php">Back</a>
        
        </div>

    </form>

</div>
</body>
<?php

include_once('./connect.php');
if(empty ($mess) && !isset($day))
{

$mname=$_POST['cecky'];
$day=$_POST['day'];

$sql="SELECT Breakfast,Lunch,Snacks,Dinner from $mname WHERE  Day='$day'";

$query=mysqli_query($con,$sql);
if($query)

{
	if ($row=mysqli_fetch_assoc($query)) {
		echo '<h2>Breakfast For Today:</h2>'.$breakfast=$row['Breakfast'];
		echo'<br><br>';
		echo '<h2>Lunch For Today:</h2>'.$lunch=$row['Lunch'];
		echo'<br><br>';
		echo '<h2>Snacks For Today:</h2>'.$snacks=$row['Snacks'];
		echo'<br><br>';
		echo '<h2>Dinner For Today:</h2>'.$dinner=$row['Dinner'];

	}


}
}




?>

</html>
?