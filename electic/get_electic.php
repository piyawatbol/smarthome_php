<?php

    require '../connect.php';
    $home_id = $_GET['home_id'];
    $sql = "SELECT * FROM tb_electic WHERE home_id = $home_id  ORDER BY elec_id DESC";
    $queryResult = mysqli_query($condb,$sql);

    while ($fetchData = mysqli_fetch_assoc($queryResult)) {
        $result[] = $fetchData;
    }
    echo json_encode($result);
?>