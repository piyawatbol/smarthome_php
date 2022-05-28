<?php
        require '../connect.php';

        $home_eq_id = $_POST['home_eq_id'];
        $eq_status = $_POST['eq_status'];
        $sql ="UPDATE  tb_home_eq SET eq_status = '".$eq_status."'  WHERE home_eq_id = '$home_eq_id'";
        $query = mysqli_query($condb,$sql);

?>