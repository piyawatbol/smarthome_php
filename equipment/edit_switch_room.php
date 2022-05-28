<?php
        require '../connect.php';

        $room_eq_id = $_POST['room_eq_id'];
        $eq_status = $_POST['eq_status'];
        $sql ="UPDATE  tb_room_eq SET eq_status = '".$eq_status."'  WHERE room_eq_id = '$room_eq_id'";
        $query = mysqli_query($condb,$sql);

?>