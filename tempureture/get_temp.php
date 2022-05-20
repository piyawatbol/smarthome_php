<?php
    require '../connect.php';

    $sql = "SELECT * FROM tb_temp ";
    $queryResult = mysqli_query($condb,$sql);

    while ($fetchData = mysqli_fetch_assoc($queryResult)) {
        $result[] = $fetchData;
    }
    echo json_encode($result);

?>