<?php

    require '../connect.php';
    $home_id = $_GET['home_id'];
    $room_id = $_GET['room_id'];
    $sql = "SELECT * FROM tb_room_eq WHERE home_id = '$home_id' AND  room_id = '$room_id'";
    $queryResult = mysqli_query($condb,$sql);

    while ($fetchData = mysqli_fetch_assoc($queryResult)) {
        $result[] = $fetchData;
    }
    echo json_encode($result);
?>