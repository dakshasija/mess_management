<html>
<head>
<link rel="stylesheet" type="text/css" href="asd.css">

</head>
<body>

<div class="container">

    <form id="signup" action="next.php" method="POST">

        <div class="header">
        
            <h3>Mess Registration</h3>
            
            <p>Please Register for the Mess</p>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            <input type="text" name="regno" placeholder="Reg No" autofocus required />
			<input type="text" name="name"placeholder="Name" required/>
			<input type="text" name="block"placeholder="Block" required/>
			<input type="number" value="<?php echo $mid; ?>" placeholder="Mess id" disabled/>

        
            
            
            <div class="checkboxy">
			
				<h4>Select Mess</h4>
                <input name="cecky" id="checky" value="S" type="radio" /><label class="terms">Special</label>
				<input name="cecky" id="checky" value="NINV" type="radio" /><label class="terms">NVeg</label>
				<input name="cecky" id="checky" value="NIV" type="radio" /><label class="terms">Veg</label>
				<input name="cecky" id="checky" value="SI" type="radio" /><label class="terms">South</label>
            </div>
            
			<input type="submit" id="submit" value="Submit" href="next.php">
			<a id="submit" href="final.php">Search</a>
			<a id="submit" href="delete.php">Delete</a>
			
			

        
        </div>

    </form>

</div>
​</body>
</html>