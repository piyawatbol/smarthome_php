<?php
        require '../connect.php';
        $user_id = $_POST['user_id'];
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        if($_FILES['img']['name']!=""&& $_FILES['img']['name']!=null){
                //ลบรูปเก่า
                $sql_select = "SELECT img FROM tb_user WHERE user_id ='$user_id'";
                $result_image = mysqli_query($condb,$sql_select) ;
                $row_image = mysqli_fetch_assoc($result_image);
                $image_old = $row_image['img'] ;
                unlink("../images/".$image_old);
                //เพิ่มรูปใหม่
                $img = $_FILES['img']['name'];
                $imagePath = '../images/'.$img;
                $tmp_name = $_FILES['img']['tmp_name'];
                move_uploaded_file($tmp_name,$imagePath);
            
                $sql = "UPDATE tb_user SET name = '$name', phone = '$phone', email = '$email' , img = '$img' WHERE user_id = '$user_id'";
                $result = mysqli_query($condb,$sql);
            }
           
        $sql = "UPDATE tb_user set name = '".$name."',phone = '".$phone."', email = '".$email."'where user_id = '".$user_id."'";
        $qurey = mysqli_query($condb,$sql);
        
?>
