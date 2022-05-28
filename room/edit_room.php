<?php

    require '../connect.php';
    $room_id = $_POST["room_id"];
    $room_name = $_POST["room_name"];

    if($_FILES['img']['name']!=""&& $_FILES['img']['name']!=null){
        //ลบรูปเก่า
        $sql_select = "SELECT img FROM tb_room WHERE room_id ='$room_id'";
        $result_image = mysqli_query($condb,$sql_select) ;
        $row_image = mysqli_fetch_assoc($result_image);
        $image_old = $row_image['img'] ;
        unlink("../images/".$image_old);
        //เพิ่มรูปใหม่
        $img = $_FILES['img']['name'];
        $imagePath = '../images/'.$img;
        $tmp_name = $_FILES['img']['tmp_name'];
        move_uploaded_file($tmp_name,$imagePath);
    
        $sql = "UPDATE tb_room SET room_name = '$room_name', img = '$img' WHERE room_id = '$room_id'";
        $result = mysqli_query($condb,$sql);
    }

    $sql = "UPDATE tb_room SET room_name = '$room_name' WHERE room_id = $room_id ";
    $query = mysqli_query($condb,$sql);

    if($query){
         echo json_encode("1");
    }else{
        echo json_encode("0");
    }
?>