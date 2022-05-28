<?php

    require '../connect.php';
    $user_id = $_GET['user_id'];
    $sql = "SELECT * FROM tb_home WHERE user_id = $user_id ";
    $queryResult = mysqli_query($condb,$sql);

    while ($fetchData = mysqli_fetch_assoc($queryResult)) {
        $result[] = $fetchData;
    }
    echo json_encode($result);
?>