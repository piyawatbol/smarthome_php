<?php
    require '../connect.php';

    $room_id = $_POST['room_id'];

    $sql_select = "SELECT img FROM tb_room WHERE room_id ='$room_id'";
    $result_image = mysqli_query($condb,$sql_select) ;
    $row_image = mysqli_fetch_assoc($result_image);
    $image_old = $row_image['img'] ;
    
    unlink("../images/".$image_old);

    $sql = "DELETE FROM tb_room WHERE room_id = $room_id";
    $query = mysqli_query($condb,$sql);

?>