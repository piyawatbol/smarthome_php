<?php
    require '../connect.php';
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM tb_user WHERE username = '".$username."' AND password = '".$password."' ";
    $result = mysqli_query($condb,$sql);
    $count = mysqli_num_rows($result);
    $resultt = array();
    if($count == 1){
        while($row=mysqli_fetch_assoc($result)){
            $resultt[]=$row;
        }
        echo json_encode($resultt);
    }else{
        echo json_encode("miss");
    }
    
?>