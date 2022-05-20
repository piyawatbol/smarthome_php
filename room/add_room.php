<?php

    require '../connect.php';
    $room_name = $_POST['room_name'];

    $sql = "INSERT INTO tb_room (room_name)";
    $sql.= " VALUES('$room_name')";
    $query = mysqli_query($condb,$sql);
    if($query){
        echo json_encode('1');
    }else{
        echo json_encode('0');
    }
?>