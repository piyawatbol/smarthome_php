<?php
    require '../connect.php';

    $room_id = $_POST['room_id'];

    $sql = "DELETE FROM tb_room WHERE room_id = $room_id";
    $query = mysqli_query($condb,$sql);

?>