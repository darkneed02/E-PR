<?php
    // require 'services/class/connect_db.php';
    require 'services/class/planning-db.php';

    $conn = db_connect();

    // ดึงข้อมูลการวางแผน รูปแบบตารางสถานะการอนุัมติ
    $planningData = getPlanningData($conn,$_SESSION['department_name']);

    // ดึงข้อมูลแสดงแท็บในแต่ละสถานะ
    $status_planning_darft = getPlanningData_tab($conn,$_SESSION['department_name']);
    // ดึงสถานะการขออนุมัติรายการ
    $status_planning_procssing = getPlanningData_tab($conn,$_SESSION['department_name']);
    // แสดงการขออนุมัติของการขออนุมัติรายการตาราง
    $branch_approval = view_approval_planning($conn,1,'PR',$_SESSION['department_name']);
    $province_approval = view_approval_planning($conn,2,'PR',$_SESSION['department_name']);
    $distric_approval = view_approval_planning($conn,3,'PR',$_SESSION['department_name']);
    $headquarters_approval = view_approval_planning($conn,4,'PR',$_SESSION['department_name']);

    /**
     * *  แสดงข้อมูลของวัสดุ, กลุ่มวัสดุ , โรงงาน, ที่เก็บสินค้า, กลุ่มการจัดซื้อ, เงินทุน, ศนูย์ต้นทุน, ภาระผูกพันธ์, เงินทุน, ศ.ต้นทุน
     */

    $dataList = fetch_table_data($conn, 'planning.tb_material');
    $datagroupMM = fetch_table_data($conn, 'planning.tb_group_matrail');
    $datafactory = fetch_table_data($conn, 'planning.tb_factory');
    $datastorage = fetch_table_data($conn, 'planning.tb_storage_location');
    $datapurchasing_group = fetch_table_data($conn, 'planning.tb_purchasing_group');
    $view_g_l = fetch_table_data($conn, 'tb_g_l');
    $cost_center = fetch_table_data($conn, 'planning.tb_costcenter');
    $view_scope = fetch_table_data($conn, 'planning.tb_scope');
    $commitment = fetch_table_data($conn, 'tb_comment_item');
    $fund = fetch_table_data($conn, 'planning.tb_fund');
    $s_fund = fetch_table_data($conn, 'planning.tb_s_coscenter');

?>