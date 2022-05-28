<?php
        require '../connect.php' ;
        $room_id = $_GET['room_id'];
        $sql = "SELECT Sum(eq_status) FROM `tb_room_eq` WHERE room_id = '$room_id' ";
        $query = mysqli_query($condb,$sql);

        while ($fetchData = mysqli_fetch_assoc($query)) {
                $result[] = $fetchData;
            }
            echo json_encode($result);
?>