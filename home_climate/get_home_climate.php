<?php

        require '../connect.php';
        $home_id = $_GET['home_id'];
        $sql = "SELECT * FROM tb_home_climate WHERE home_id = $home_id ";
        $query = mysqli_query($condb,$sql);

        while($row = mysqli_fetch_assoc($query)){
            $result[] = $row;
        }
        echo json_encode($result);  
?>