<?php

        require '../connect.php';
        $home_id = $_GET['home_id'];
        $elec_month = $_GET['elec_month'];
        $sql = "SELECT * FROM tb_electic WHERE elec_month = '".$elec_month."' AND home_id  = '$home_id '";
        $query = mysqli_query($condb,$sql);

        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
        echo json_encode($result);  
?>