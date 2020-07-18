<?php
$del_id= $_GET['Employee_No'];


?>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 25%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px; 
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body background="b.png">

<center><h3 ><font size ="6"> Data Update Form</font></h3></center>

<div class="container">
  <form action="" method="post">
  
  
    <center><label for="name"> Grade       :</label>
    <input type="text" id="name" name="grade" placeholder="Your name.."></center><br>

    <center><label for="address">Salary  :</label>
    <input type="text" id="address" name="salary" placeholder="Your address.."></center><br>

    <center><label for="tele_no">Surgery Code :</label>
    <input type="text" id="tele_no" name="code" placeholder="Your contact number.."></center><br>
  
      </select></center><br>
    

   <center><input type="submit" value="submit" name="submit"></center>
  </form>
</div>

</body>
</html>
<?php

$conn = new mysqli("localhost","root","","suwasetha medical associates");
// Check connection
if($conn){
		echo 'connected';
	}
	if(!$conn){
		echo 'Not connected';
	}

if(isset($_POST['submit'])){	


	$sql="UPDATE Nurse SET grade='$_POST[grade]',salary='$_POST[salary]',surgery_code='$_POST[code]' WHERE Employee_No= '$del_id'";
	if(mysqli_query($conn,$sql)){
		echo "Updated";
		header("refresh:1; url=services.php");
		
	}
	else {
	echo "Not Updated";};
}
	
	


?>	