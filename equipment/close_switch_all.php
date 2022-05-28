<?php
        require '../connect.php';

        $room_id = $_POST['room_id'];
        $status_all = $_POST['status_all'];
        $sql ="UPDATE  tb_room_eq SET eq_status = '".$status_all."'  WHERE room_id = '$room_id'";
        $query = mysqli_query($condb,$sql);

?>