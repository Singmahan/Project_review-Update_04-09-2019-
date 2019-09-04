<?php
    session_start();
    include('connectdb.php');
    include('session.php');

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>สถิติหนังสือใหม่รายปี</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">

    <style type="text/css">
        input[type=number]{
          width:40px;
          text-align:center;
          color:red;
          font-weight:600;
        }
        .container{
          font-family: 'Prompt', sans-serif;
        }


    </style>
  </head>
  <body>
    <div class="container">
      <div class="row">
          <?php include('banner.php');?>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <?php include('navbar_bunna.php');?>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-center">สถิติหนังสือใหม่รายปี</h3>
        </div>
        <div class="col-md-12" id="barchart"></div>
      </div>
    </div>

     <?php

      $query = "SELECT `date`, COUNT(`b_name`) AS namebook  FROM tbl_book GROUP BY YEAR(`date`)";
      // $res_c = $dbcon->query($query);
      $res_c = mysqli_query($dbcon, $query);

      if (!$res_c) {
          die('<p><strong style="color:#FF0000">!! Invalid query:</strong> ' . $dbcon->error.'</p>');
      }
    ?>
    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script type="text/javascript">
    $(function () {
        $('#barchart').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: 'กราฟแสดงสถิติการเพิ่มหนังสือรายปี'
            },
           // subtitle: {
           //      text: ''
           //  },
            xAxis: {
                categories: [
       <?php
       $c_field = $res_c->field_count-1;
        $c=0; while($row = $res_c->fetch_array(MYSQLI_NUM)){ $c++; ?>
       <?php if($c>1){ ?>,<?php }
       $data[] = $row[$c_field];
       ?>
       '<?php
           $time = strtotime($row[0]);
        echo htmlspecialchars(addslashes(str_replace("\t","",str_replace("\n","",str_replace("\r","",date('Y', $time)))))); ?>'
       <?php } ?>
                ],
                crosshair: true
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'Values'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y:,.0f} </b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0,
        dataLabels: {
         enabled: true
        }
       }
            },
      credits: {
       enabled: false
      },
            series: [{
                name: 'Values',
                data: [<?php echo join(',',$data); ?>]

            }]
        });
    });
    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
