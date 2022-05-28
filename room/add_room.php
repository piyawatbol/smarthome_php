<?php

    require '../connect.php';

    $home_id = $_POST['home_id'];
    $room_name = $_POST['room_name'];
    $img = $_FILES['img']['name'];
    $imagePath = '../images/'.$img;
    $tmp_name = $_FILES['img']['tmp_name'];
    move_uploaded_file($tmp_name,$imagePath);

    $sql = "INSERT INTO tb_room (room_name,img,home_id)";
    $sql.= " VALUES('$room_name','$img','$home_id')";
    $query = mysqli_query($condb,$sql);


    
?>