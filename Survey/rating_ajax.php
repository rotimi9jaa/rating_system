<?php
session_start();
include "config.php";

$userid = $_SESSION['id'];
$postid = $_POST['postid'];
$rating = $_POST['rating'];

// Check entry within table
$query = "SELECT COUNT(*) AS cntpost FROM post_rating WHERE postid=".$postid." and userid=".$userid;

$result = mysqli_query($con,$query);
$fetchdata = mysqli_fetch_array($result);
$count = $fetchdata['cntpost'];

if($count == 0){
    $insertquery = "INSERT INTO post_rating(userid,postid,rating) values(".$userid.",".$postid.",".$rating.")";
    mysqli_query($con,$insertquery);
}else {
    $updatequery = "UPDATE post_rating SET rating=" . $rating . " where userid=" . $userid . " and postid=" . $postid;
    mysqli_query($con,$updatequery);
	$insertquery = "INSERT INTO votes(userid,postid,rating) values(".$userid.",".$postid.",".$rating.")";
    mysqli_query($con,$insertquery);
}


// get average
$query = "SELECT ROUND(AVG(rating),1) as averageRating FROM post_rating WHERE postid=".$postid;
$result = mysqli_query($con,$query) or die(mysqli_error());
$fetchAverage = mysqli_fetch_array($result);
$averageRating = $fetchAverage['averageRating'];

$return_arr = array("averageRating"=>$averageRating);

echo json_encode($return_arr);