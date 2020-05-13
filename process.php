<?php 
require_once('connection.php');
session_start();
    if(isset($_POST['Login']))
    {
       if(empty($_POST['UName']) || empty($_POST['Password']))
       {
            header("location:index.php?Empty= Please Fill in the Blanks");
       }
       else
       {
            $query="select * from users where username='".$_POST['UName']."' and password='".$_POST['Password']."'";
            $result=mysqli_query($con,$query);
			
			$queryy="select * from admin where username='".$_POST['UName']."' and password='".$_POST['Password']."'";
            $resultt=mysqli_query($con,$queryy);
			

            if(mysqli_fetch_assoc($result))
            {
				$query="select userid, username from users where username='".$_POST['UName']."'";
				$result=mysqli_query($con,$query);
				$row = mysqli_fetch_row($result);
				$_SESSION['id'] = $row[0];
				
				$_SESSION['User']=$_POST['UName'];
                header("location:survey/index.php");
            }
            else
            {
				if(mysqli_fetch_assoc($resultt))
            {
				$queryy="select userid, username from admin where username='".$_POST['UName']."'";
				$resultt=mysqli_query($con,$queryy);
				$row = mysqli_fetch_row($resultt);
				$_SESSION['id'] = $row[0];
				
				$_SESSION['Userr']=$_POST['UName'];
                header("location:survey/dash.php");
            }
            else
            {
                header("location:index.php?Invalid= Please Enter Correct User Name and Password ");
            }
			}
       }
    }
    else
    {
        echo 'Not Working Now Guys';
    }

?>