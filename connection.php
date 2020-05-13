<?php
 
    $con=mysqli_connect('localhost:3307','root','','tutorial');
 
    if(!$con)
    {
        die(' Please Check Your Connection'.mysqli_error($con));
    }
?>