<?php
$postid = 3;
$connect = mysqli_connect('localhost:3307','root','','tutorial');
$query = 'SELECT rating, datetime FROM votes WHERE postid='.$postid;
$result = mysqli_query($connect, $query);
$rows = array();
$table = array();

$table['cols'] = array(
 array(
  'label' => 'Time of day', 
  'type' => 'datetime'
 ),
 array(
  'label' => 'rating', 
  'type' => 'number'
 )
);

while($row = mysqli_fetch_array($result))
{
	preg_match('/(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/', $row['datetime'], $match);
    $year = (int) $match[1];
    $month = (int) $match[2] - 1; // convert to zero-index to match javascript's dates
    $day = (int) $match[3];
    $hours = (int) $match[4];
    $minutes = (int) $match[5];
    $seconds = (int) $match[6];
 /*$sub_array = array();
 $datetime = explode(",", $row["datetime"]);
 $sub_array[] =  array(
      "v" => 'Date(' . $datetime[0] . '000)'
     );*/
	$sub_array = array();
	$sub_array[] =  array(
      "v" => "Date($year, $month, $day, $hours, $minutes, $seconds)"
     ); 
	 
	 
	 
 $sub_array[] =  array(
      "v" => $row["rating"]
     );
 $rows[] =  array(
     "c" => $sub_array
    );
}
$table['rows'] = $rows;
$jsonTable = json_encode($table);

?>



<html>
 <head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script type="text/javascript">
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawChart);
   function drawChart()
   {
    var data = new google.visualization.DataTable(<?php echo $jsonTable; ?>);

    var options = {
     title:'Class Engagement',
     legend:{position:'bottom'},
     chartArea:{width:'95%', height:'65%'},
	 hAxis: {
          viewWindow: {
            min: new Date(2020, 4, 2, 1),
            max: new Date(2020, 4, 2, 22)
          },
          gridlines: {
            count: -1,
            units: {
              days: {format: ['MMM dd']},
              hours: {format: ['HH:mm', 'ha']},
            }
          },
          minorGridlines: {
            units: {
              hours: {format: ['hh:mm:ss a', 'ha']},
              minutes: {format: ['HH:mm a Z', ':mm']}
            }
          }
        },
     vAxis: {minValue: 0},
	 vAxis: {maxValue: 10}
	};

    var chart = new google.visualization.LineChart(document.getElementById('line_chart'));

	
    chart.draw(data, options);
	
	var button = document.getElementById('change');
      var isChanged = false;

      button.onclick = function () {
        if (!isChanged) {
          options.hAxis.viewWindow.min = new Date(2020, 2, 5, 10);
          options.hAxis.viewWindow.max = new Date(2020, 2, 5, 12);
          isChanged = true;
        } else {
          options.hAxis.viewWindow.min = new Date(2020, 4, 2, 1),
          options.hAxis.viewWindow.max = new Date(2020, 4, 2, 22)
          isChanged = false;
        }
        chart.draw(data, options);
	  };
   }
  </script>
  <style>
  .page-wrapper
  {
   width:1000px;
   margin:0 auto;
  }
  </style>
 </head>  
 <body>
 <button onclick="self.close()">Close</button>
  <div class="page-wrapper">
   <br />
   <h2 align="center">Teacher View</h2>
   <div id="line_chart" style="width: 100%; height: 500px"></div>
    <button id="change">Change View Window</button>
  </div>
 </body>
</html>