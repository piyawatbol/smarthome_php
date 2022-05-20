<?php

    require '../connect.php';
    $room_id = $_GET["Room_id"];
    $room_name = $_GET["Room_name"];
    $sql = "UPDATE tb_room set room_name = '".$room_name."' where room_id = '".$room_id."'";
    $queryResult = mysqli_query($condb,$sql);
    echo json_encode("1");

?>