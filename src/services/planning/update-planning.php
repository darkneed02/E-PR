<?php
    require '../../auth.php'; // session data
    require '../../services/class/connect_db.php'; // connect database
    require '../../services/class/planning-db.php'; // planning add database

    $conn = db_connect();

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
            $price = $row['price'];
            $total = $row['total'];

            //** เพิ่มข้อมูลแผน PR  */
            if(update_planning_pr($conn,$doc_num,$type_doc,$start_date,$end_date,$header,$deatil,$id_list,$group_account,$material,$short_text,$quantity,$unit,$delivery_date,$currentDate,$group_material,$factor,$store_mm
            ,$store_mm,$price,$default_vat,$default_cure,$total,$default_g_l,$default_fun_center,$default_money_center,$default_spoce,$default_funds_center,$default_messsinons,$_SESSION['user_id'],1,$grand_total)){
                $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
            }else{
                $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
            }
        }

        //** เพิ่มข้อมูลรายละเอียดข้อความการขอแผน PR */
        // if(add_comment_pr($conn,$doc_num,$meagess_job,$meagess_list,$meagess_monkbon,$meagess_mm,$megess_price,$_SESSION['user_id'])){
        //     $resultMessage = "ทำการบันทึกขออนุมัติสำเร็จ";
        // }else{
        //     $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        // }

        echo $resultMessage;
    }

    /**
     * * อัพเดตสถานะการอนุมัติรายการ สาขา จังหวัด เขต และ สำนักงานใหญ๋
     */
    function handleApprovalRequest($conn, $level, $doc_num) {
        $currentDate = date('Y-m-d H:i:s');
        $status = $level; // ระดับการอนุมัติจะสัมพันธ์กับ status
    
        // Mapping branch/district/province/headquarters based on level
        $branch_id = $level >= 1 ? 1 : 0;
        $district_id = $level >= 2 ? 1 : 0;
        $province_id = $level >= 3 ? 1 : 0;
        $headquarters_id = $level >= 4 ? 1 : 0;
    
        // อัพเดตสถานะใน tb_approvaler
        $updateApproval = approval_planning_level(
            $conn,
            $status,
            $_SESSION['user_id'],
            $currentDate,
            $doc_num,
            'PR',
            $branch_id,
            $district_id,
            $province_id,
            $headquarters_id
        );
    
        // อัพเดตสถานะในแผน PR
        $updatePlanning = update_planning_status($conn, $status, $doc_num);
    
        if ($updateApproval && $updatePlanning) {
            return "ทำการบันทึกขออนุมัติสำเร็จ";
        } else {
            return "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ";
        }
    }
    
    // ตรวจสอบและจัดการคำขอ
    if (isset($_POST['doc_num_update'])) {
        echo handleApprovalRequest($conn, 2, $_POST['doc_num_update']); // ระดับสาขา
    }
    
    if (isset($_POST['doc_num_province'])) {
        echo handleApprovalRequest($conn, 3, $_POST['doc_num_province']); // ระดับจังหวัด
    }
    
    if (isset($_POST['doc_num_disctracit'])) {
        echo handleApprovalRequest($conn, 4, $_POST['doc_num_disctracit']); // ระดับเขต
    }
    
    if (isset($_POST['doc_num_headequter'])) {
        echo handleApprovalRequest($conn, 5, $_POST['doc_num_headequter']); // ระดับสำนักงานใหญ่
    }

    if(isset($_POST['doc_num_cancel'])){
        $doc_num_cancel = $_POST['doc_num_cancel'];
        $currentDate = date('Y-m-d H:i:s');

        $resultMessage = "";

        // อัพเตคสถานะงานในการขอนุมัติ
        if(approval_planning_level($conn,10,$_SESSION['user_id'],$currentDate,$doc_num_cancel,'PR',0,0,0,0)){
            $resultMessage = "ทำการยกเลิกสำเร็จ";
        }else{
            $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        }

        // อัพเดตสถานะการยกเลิกของแผน
        if(update_planning_status($conn,10,$doc_num_cancel)){
            $resultMessage = "ทำการยกเลิกสำเร็จ";
        }else{
            $resultMessage = "ข้อมูลผิดพลาด กรุณาแจ้งผู้ดูแลระบบ" . "<br>";
        }


        echo $resultMessage;
    }
    

?>