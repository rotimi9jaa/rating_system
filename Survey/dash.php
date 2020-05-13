<?php
 $con = mysqli_connect('localhost:3307','root','','tutorial');

session_start();

    if(isset($_SESSION['Userr']))
    {
        echo '<a href="../logout.php?logout">Logout</a>';
    }
    else
    {
        header("location:../index.php");
    }
?>

<html>
    <head>
        <title>Middlesex University</title>

        <!-- CSS -->
        <link href="style.css" type="text/css" rel="stylesheet" />
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <link href='jquery-bar-rating-master/dist/themes/fontawesome-stars.css' rel='stylesheet' type='text/css'>
        
        <!-- Script -->
        <script src="jquery-3.0.0.js" type="text/javascript"></script>
        <script src="jquery-bar-rating-master/dist/jquery.barrating.min.js" type="text/javascript"></script>
        <script type="text/javascript">
        $(function() {
            $('.rating').barrating({
                theme: 'fontawesome-stars',
                onSelect: function(value, text, event) {

                    // Get element id by data-id attribute
                    var el = this;
                    var el_id = el.$elem.data('id');

                    // rating was selected by a user
                    if (typeof(event) !== 'undefined') {
                        
                        var split_id = el_id.split("_");

                        var postid = split_id[1];  // postid

                        // AJAX Request
                        $.ajax({
                            url: 'rating_ajax.php',
                            type: 'post',
                            data: {postid:postid,rating:value},
                            dataType: 'json',
                            success: function(data){
                                // Update average
                                var average = data['averageRating'];
                                $('#avgrating_'+postid).text(average);
                            }
                        });
                    }
                }
            });
        });
      
        </script>
		<style>
		h1 {
		color: gold;
		}
		</style>
    </head>
    <body>
		 <div class="content">
<div class="alert">
		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
		Tap metrics to view progression
		</div>
            <?php
                $query = "SELECT * FROM posts";
                $result = mysqli_query($con,$query);
                while($row = mysqli_fetch_array($result)){
                    $postid = $row['id'];
                    $title = $row['title'];
                    $content = $row['content'];
                    $link = $row['link'];
					
                    // get average
                    $query = "SELECT ROUND(AVG(rating),1) as averageRating FROM post_rating WHERE postid=".$postid;
                    $avgresult = mysqli_query($con,$query) or die(mysqli_error());
                    $fetchAverage = mysqli_fetch_array($avgresult);
                    $averageRating = $fetchAverage['averageRating'];

                    if($averageRating <= 0){
                        $averageRating = "No rating yet.";
                    }
            ?>
                    <div class="post">
                        <h2><a href='<?php echo $link; ?>' class='link' target='_blank'><?php echo $title; ?></a></h2>
                        <div class="post-text">
                            
                        </div>
                        <div class="post-action">
                            <!-- Rating -->
		                    <h1><p style="text-align:right;"><span id='avgrating_<?php echo $postid; ?>'><?php echo $averageRating; ?>/10</span>

                            <!-- Set rating -->
                            <script type='text/javascript'>
                            $(document).ready(function(){
                                $('#rating_<?php echo $postid; ?>').barrating('set',<?php echo $rating; ?>);
                            });
                            
                            </script></p></h1>
                        </div>
                    </div>
            <?php
                }
            ?>

        </div>

        
    </body>
</html>
