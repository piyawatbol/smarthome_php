<?php
        require '../connect.php';
        $user_id = $_POST['user_id'];
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
           
        $sql = "UPDATE tb_user set name = '".$name."',phone = '".$phone."', email = '".$email."'where user_id = '".$user_id."'";
        $qurey = mysqli_query($condb,$sql);
        
?>
