<?php
    include('connectdb.php');

    $c_id = $_GET['c_id'];
    $sql = "DELETE FROM comment WHERE c_id='$c_id'";
    $result = mysqli_query($dbcon, $sql);

    if($result) {
      echo "<script>";
      echo "alert('ลบบทวิเคราะห์เรียบร้อย');";
      echo "window.location ='show_comment.php'; ";
      echo "</script>";
    } else {

      echo "<script>";
      echo "alert('ไม่สามารถลบบทวิเคราะห์ได้ !');";
      echo "window.location ='show_comment.php'; ";
      echo "</script>";
    }
    mysqli_close($dbcon);

 ?>
