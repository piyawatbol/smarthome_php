<?php

require '../connect.php';

$name = $_POST['name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];


    $sql_user = "SELECT * FROM tb_user WHERE username = '".$username."'  ";
    $result_user = mysqli_query($condb,$sql_user);
    $count_user = mysqli_num_rows($result_user);

    if($count_user == 1){
        echo json_encode('duplicate_username');
    }else if($count_user == 0){
        $sqle_mail = "SELECT * FROM tb_user WHERE email = '".$email."'  ";
        $result_email = mysqli_query($condb,$sqle_mail);
        $count_email = mysqli_num_rows($result_email);
    if($count_email == 1){
            echo json_encode('duplicate_email');
    }else if($count_email == 0){
        $sql_phone = "SELECT * FROM tb_user WHERE phone = '".$phone."'  ";
        $result_phone = mysqli_query($condb,$sql_phone);
        $count_phone = mysqli_num_rows($result_phone);
        if($count_phone == 1){
            echo json_encode('duplicate_phone');
        }else{
              $sql_insert = "INSERT INTO tb_user (name,phone,email,username,password)";
         $sql_insert .= " VALUES ('$name','$phone','$email','$username','$password')";
         $result_insert = mysqli_query($condb,$sql_insert);
             if ($result_insert) {
                 echo json_encode('succes');
             } else {
                
            }
         }
        }
    }
        

    