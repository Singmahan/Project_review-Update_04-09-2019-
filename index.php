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
    <title>หน้าหลัก</title>

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
          <?php include('navbar.php');?>
        </div>
      </div>
    </div>

    <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <p class="list-group-item active">
                ประเภทหนังสือ
              </p>
              <?php
              // include('connectdb.php');
                $sqltype = "SELECT * FROM `tbl_book_type`";
                $restype = mysqli_query($dbcon, $sqltype);
                while ($res = mysqli_fetch_array($restype)) {
                  echo "<a href='index.php?type=".$res['type_id']."' class='list-group-item'>".$res['type_name']."</a>";
                }
                ?>
                <br>
                <div class="list-group">
                  <p class="list-group-item active">ยอดนิยม</p>
                  <a href="graph_rating.php" class="list-group-item">Rating สูงสุด</a>
                  <a href="top_comment.php" class="list-group-item">ได้รับการรีวิวมากที่สุด</a>
                  <a href="graph_month.php" class="list-group-item">สถิติหนังสือใหม่รายเดือน</a>
                  <a href="graph_year.php" class="list-group-item">สถิติหนังสือใหม่รายรายปี</a>
                </div>

            </div>

          </div>
          <div class="col-md-9">
              <?php include('show_index.php');?>
          </div>
        </div>
    </div>
    <div class="container">
      <div class="row">
        
      </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
              <?php include('footer.php');?>
            </div>
        </div>
    </div>
    


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <!-- <script src="js/jquery-3.3.1.min.js"></script> -->
      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="js/bootstrap.min.js"></script>
  </body>
</html>
