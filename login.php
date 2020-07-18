<?php session_start(); ?>
<?php require_once('connection.php');?>	
<?php 
	
	if(isset($_POST['submit']))//check  use press submit 
	{
		$errors = array();

		if(!isset($_POST['username']) || strlen(trim($_POST['username'])) < 1 || !isset($_POST['password']) || strlen(trim($_POST['password'])) < 1)
		{
			$errors[] = 'invalid';
		}


		if(empty($errors))//no errors found
		{
			$namee		= mysqli_real_escape_string($connection,$_POST['username']);
			$Password  	= mysqli_real_escape_string($connection,$_POST['password']);
			


			$query  = "	SELECT type 
						FROM users 
						WHERE name  = '{$namee}'  
						AND password = '{$Password}'
						LIMIT 1 ";

			$result = mysqli_query($connection,$query);
            $row = mysqli_fetch_array($result);


			if($result)
			{
				if(mysqli_num_rows($result) == 1)//if found user
				{
                    $_SESSION["type"]=$row["type"];

                    if($_SESSION["type"]=='admin'){
                        header("Location:home_Admin.php");
                    }
                    if($_SESSION["type"]=='doctor'){
                        header("Location:services.php");
                    }
                    if($_SESSION["type"]=='nurse'){
                        header("Location:doctors-single.html");
                    }
                    if($_SESSION["type"]=='surgeon'){
                        header("Location:home_Surgeon.php");
                    }
                    if($_SESSION["type"]=='patient'){
                        header("Location:home_Patient.php");
                    }



                }

				else
				{
					$errors[] = 'Invalid Username or Password';
				}
			}

			else//Invalid Username or Password
			{
				$errors[] = 'Invalid Query';
			}
		}

	}
 ?>



    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <title>Hospital Login Form</title>
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
    <div class="loginBox">
        <img src="user.png" class="user">
        <h2>Log In Here</h2>

        <form method ="POST" action ="#">
            <p>User Name</p>
            <input type="text" name="username" placeholder="User Name" value= "">

            <p>Password</p>
            <input type="password" name="password" placeholder="••••••" value ="">

            <input type="submit" name="submit" value="Sign In">

        </form>
    </div>
    </body>
    </html>

<?php mysqli_close($connection);?>