<?php

    require '../connect.php';
    $room_id = $_GET['room_id'];

    $sql = "SELECT * FROM tb_room WHERE room_id = '$room_id'";
    $queryResult = mysqli_query($condb,$sql);

    while ($fetchData = mysqli_fetch_assoc($queryResult)) {
        $result[] = $fetchData;
    }
    echo json_encode($result);
?>