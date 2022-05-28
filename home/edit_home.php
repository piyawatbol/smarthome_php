<?php
        require '../connect.php';
        $home_id = $_POST['home_id'];
        $home_name = $_POST['home_name'];
        $home_number = $_POST['home_number'];
        $soi = $_POST['soi'];
        $parish = $_POST['parish'];
        $district = $_POST['district'];
        $province = $_POST['province'];
        $zip_code = $_POST['zip_code'];
        
        $sql = "UPDATE tb_home set home_name = '".$home_name."',home_number = '".$home_number."',soi = '".$soi."' , parish = '".$parish."' , district = '".$district."' , province = '".$province."' , zip_code = '".$zip_code."' WHERE home_id = $home_id";
        $qurey = mysqli_query($condb,$sql);
        if($qurey){
            echo json_encode('1');
        }else{
            echo json_encode('0');
        }
        
?>