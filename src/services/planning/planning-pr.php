<?php
    require '../../auth.php'; // session data
    require '../../services/class/connect_db.php'; // connect database
    require '../../services/class/planning-db.php'; // planning add database

    $conn = db_connect();

    /***
     * * บันทึกข้อมูแแผนการ PR
     */
    if(isset($_POST['order'])){
        $orders = json_decode($_POST['order'], true); 

        /**
         * * ดึงข้อมูลมาจัดเก็บ
         */
        $doc_num = $_POST['doc_num'];
        $type_doc = $_POST['type_doc'];
        $start_date = $_POST['start_date'];
        $end_date = $_POST['end_date'];
        $header = $_POST['header'];
        $deatil = $_POST['deatil'];
        $grand_total = $_POST['grand_total'];
        $default_cure = $_POST['default_cure'];
        $default_cure_unit = $_POST['default_cure_unit'];
        $default_vat = $_POST['default_vat_v'];
        $default_g_l = $_POST['default_g_l'];
        $default_fun_center = $_POST['default_fun_center'];
        $default_spoce = $_POST['default_spoce'];
        $default_messsinons = $_POST['default_messsinons'];
        $default_money_center = $_POST['default_money_center'];
        $default_funds_center =$_POST['default_funds_center'];
        $meagess_job = $_POST['meagess_job'];
        $meagess_list = $_POST['meagess_list'];
        $meagess_monkbon = $_POST['meagess_monkbon'];
        $meagess_mm = $_POST['meagess_mm'];
        $megess_price = $_POST['megess_price'];

        $currentDate = date('Y-m-d H:i:s');

        // ข้อความผลลัพธ์
        $resultMessage = "";

        foreach($orders as $row){
            $id_list = $row['id_list'];
            $group_account = $row['group_account'];
            $material = $row['material'];
            $short_text = $row['short_text'];
            $quantity = $row['quantity'];
            $unit = $row['unit'];
            $delivery_date = $row['delivery_date'];
            $group_material = $row['group_material'];
            $factor = $row['factor'];
            $store_mm = $row['store_mm'];
            $pushuing_group = $row['pushuing_group'];
            $price = $row['price'];
            $total = $row['total'];

            //** เพิ่มข้อมูลแผน PR  */
            if(add_planning_pr($conn,$doc_num,$type_doc,$start_date,$end_date,$header,$deatil,$id_list,$group_account,$material,$short_text,$quantity,$unit,$delivery_date,$currentDate,$group_material,$factor,$store_mm
            ,$pushuing_group,$price,$default_vat,$default_cure,$total,$default_g_l,$default_fun_center,$default_money_center,$default_spoce,$default_funds_center,$default_messsinons,$_SESSION['user_id'],1,$grand_total)){
                $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
            }else{
                $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
            }
        }

        //** เพิ่มข้อมูลรายละเอียดข้อความการขอแผน PR */
        if(add_comment_pr($conn,$doc_num,$meagess_job,$meagess_list,$meagess_monkbon,$meagess_mm,$megess_price,$_SESSION['user_id'])){
            $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
        }else{
            $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        }

        /**
         * * เพิ่มการร้องขอการอนุมัติ PR
         */
        if(approval_planning($conn,$doc_num,$currentDate,$_SESSION['user_id'],$_SESSION['fullname'],$_SESSION['department_name'],'PR',$header,1,1,0,0,0)){
            $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
        }else{
            $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        }

        echo $resultMessage;
    }

     /***
     * * บันทึกแผนข้อมูลข้อมูแแผนการ PR
     */
    if(isset($_POST['order_darft'])){
        $order_darft = json_decode($_POST['order_darft'], true); 

        /**
         * * ดึงข้อมูลมาจัดเก็บ
         */
        $doc_num = $_POST['doc_num'];
        $type_doc = $_POST['type_doc'];
        $start_date = $_POST['start_date'];
        $end_date = $_POST['end_date'];
        $header = $_POST['header'];
        $deatil = $_POST['deatil'];
        $grand_total = $_POST['grand_total'];
        $default_cure = $_POST['default_cure'];
        $default_cure_unit = $_POST['default_cure_unit'];
        $default_vat = $_POST['default_vat_v'];
        $default_g_l = $_POST['default_g_l'];
        $default_fun_center = $_POST['default_fun_center'];
        $default_spoce = $_POST['default_spoce'];
        $default_messsinons = $_POST['default_messsinons'];
        $default_money_center = $_POST['default_money_center'];
        $default_funds_center =$_POST['default_funds_center'];
        $meagess_job = $_POST['meagess_job'];
        $meagess_list = $_POST['meagess_list'];
        $meagess_monkbon = $_POST['meagess_monkbon'];
        $meagess_mm = $_POST['meagess_mm'];
        $megess_price = $_POST['megess_price'];

        // ข้อความผลลัพธ์
        $resultMessage = "";

        foreach($order_darft as $row){
            $id_list = $row['id_list'];
            $group_account = $row['group_account'];
            $material = $row['material'];
            $short_text = $row['short_text'];
            $quantity = $row['quantity'];
            $unit = $row['unit'];
            $delivery_date = $row['delivery_date'];
            $group_material = $row['group_material'];
            $factor = $row['factor'];
            $store_mm = $row['store_mm'];
            $price = $row['price'];
            $total = $row['total'];

            //** เพิ่มข้อมูลแผน PR  */
            if(add_planning_pr($conn,$doc_num,$type_doc,$start_date,$end_date,$header,$deatil,$id_list,$group_account,$material,$short_text,$quantity,$unit,$delivery_date,$currentDate,$group_material,$factor,$store_mm
            ,$store_mm,$price,$default_vat,$default_cure,$total,$default_g_l,$default_fun_center,$default_money_center,$default_spoce,$default_funds_center,$default_messsinons,$_SESSION['user_id'],0,$grand_total)){
                $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
            }else{
                $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
            }
        }

        //** เพิ่มข้อมูลรายละเอียดข้อความการขอแผน PR */
        if(add_comment_pr($conn,$doc_num,$meagess_job,$meagess_list,$meagess_monkbon,$meagess_mm,$megess_price,$_SESSION['user_id'])){
            $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
        }else{
            $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        }

        echo $resultMessage;
    }
?>