<?php
    /**
     * * เพิ่มข้อมูลแผน PR
     */
    function add_planning_pr($conn,$doc_num,$type_doc,$start_date,$end_date,$title,$detail,$order_list,$group_account,$matrail_name,$short_meagess,$quantity,$unit,$delivery_date,
    $requst_date,$mm_group,$factory_mm,$product_storage,$procurement_group,$price,$vat,$currency,$total,$g_l,$fund_money,$fund,$scpoe_fund,$fund_center,$commitments,$create_by,$status,$estimated_price){
        $query = "insert into planning.tb_plann_pr (doc_num, type_doc, start_date, end_date, title, detail, order_list, group_account, matrail_name, short_meagess, quantity, unit, delivery_date, requst_date, mm_group, factory_mm, product_storage, procurement_group, price, vat, currency, total, g_l, fund_money, fund, scpoe_fund, 
        fund_center, commitments, create_by, status, estimated_price) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,
        $17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30,$31)";
        $result = pg_query_params($conn,$query,array(
            $doc_num,$type_doc,$start_date,$end_date,$title,$detail,$order_list,$group_account,$matrail_name,$short_meagess,$quantity,$unit,$delivery_date,
            $requst_date,$mm_group,$factory_mm,$product_storage,$procurement_group,$price,$vat,$currency,$total,$g_l,$fund_money,$fund,$scpoe_fund,$fund_center,$commitments,$create_by,$status,$estimated_price
        ));

        return $result;
    }

    /**
     * * อัพเดตข้อมูล PR 
     */
    function update_planning_pr($conn, $doc_num, $order_list, $type_doc, $start_date, $end_date, $title, $detail, $group_account, $matrail_name, $short_meagess, $quantity, $unit, $delivery_date,
    $requst_date, $mm_group, $factory_mm, $product_storage, $procurement_group, $price, $vat, $currency, $total, $g_l, $fund_money, $fund, $scpoe_fund, 
    $fund_center, $commitments, $create_by, $status, $estimated_price) {

    $query = "UPDATE planning.tb_plann_pr 
              SET type_doc = $3, start_date = $4, end_date = $5, title = $6, detail = $7, 
                  group_account = $8, matrail_name = $9, short_meagess = $10, quantity = $11, 
                  unit = $12, delivery_date = $13, requst_date = $14, mm_group = $15, factory_mm = $16, 
                  product_storage = $17, procurement_group = $18, price = $19, vat = $20, 
                  currency = $21, total = $22, g_l = $23, fund_money = $24, fund = $25, scpoe_fund = $26, 
                  fund_center = $27, commitments = $28, create_by = $29, status = $30, estimated_price = $31
              WHERE doc_num = $1 AND order_list = $2";

    $result = pg_query_params($conn, $query, array(
        $doc_num, $order_list, $type_doc, $start_date, $end_date, $title, $detail, $group_account, 
        $matrail_name, $short_meagess, $quantity, $unit, $delivery_date, $requst_date, $mm_group, 
        $factory_mm, $product_storage, $procurement_group, $price, $vat, $currency, $total, 
        $g_l, $fund_money, $fund, $scpoe_fund, $fund_center, $commitments, $create_by, $status, $estimated_price
    ));

    return $result;
}



    /**
     * * เพิ่มข้อมูลการบันทึกข้อความขอแต่รหัสรายการ
     */
    function add_comment_pr($conn,$doc_num,$meagess_job,$meagess_list,$meagess_monkbon,$meagess_mm,$megess_price,$create_by){
        $query = "insert into planning.tb_comment (doc_num, procurement_message, item_notes, delivery_message, message_ordering_materials, quotation_text, create_by) values ($1,$2,$3,$4,$5,$6,$7)";

        $result = pg_query_params($conn,$query,array(
            $doc_num,$meagess_job,$meagess_list,$meagess_monkbon,$meagess_mm,$megess_price,$create_by
        ));

        return $result;
    }

    /**
     * * แสดงข้อมูลรายการในรูปแบบตาราง
     */
    function getPlanningData($conn,$department) {
        $query = "
            select distinct on (p.doc_num) m.firstname, m.lastname,m.department_name, p.*
            from tb_user m
            inner join planning.tb_plann_pr p on m.user_id = p.create_by
            where m.department_name = '$department'
        ";
        
        $result = pg_query($conn, $query);
    
        if (!$result) {
            return []; // คืนค่าเป็นอาเรย์ว่างหากเกิดข้อผิดพลาด
        }
    
        $data = [];
        while ($row = pg_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }

        /**
     * * แสดงข้อมูลรายการในรูปแบบตาราง by dou_num
     */
    function getPlanningData_doc_num($conn, $doc_num) {
        $query = "
            select distinct on (p.doc_num) m.firstname, m.lastname,m.department_name, p.*
            from tb_user m
            inner join planning.tb_plann_pr p on m.user_id = p.create_by
            where p.doc_num = '$doc_num'
        ";
        
        $result = pg_query($conn, $query);
    
        if (!$result) {
            return []; // คืนค่าเป็นอาเรย์ว่างหากเกิดข้อผิดพลาด
        }
    
        $data = [];
        while ($row = pg_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }

    /**
     * * แสดงข้อมูล tab แต่ละ tab โดยการแบ่งสถานะ
     */
    function getPlanningData_tab($conn, $department) {
        $query = "
            select distinct on (p.doc_num) m.firstname, m.lastname,m.department_name, p.*
            from tb_user m
            inner join planning.tb_plann_pr p on m.user_id = p.create_by
            where m.department_name = '$department'
        ";
        
        $result = pg_query($conn, $query);
    
        if (!$result) {
            return []; // คืนค่าเป็นอาเรย์ว่างหากเกิดข้อผิดพลาด
        }
    
        $data = [];
        while ($row = pg_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }

    /**
     * * แสดงรายการข้อมูลที่บันทึกร่างไว้
     */
    function view_darft_planning($conn, $doc_num) {
        if (pg_connection_status($conn) !== PGSQL_CONNECTION_OK) {
            die('Connection failed: ' . pg_last_error($conn));
        }
    
        $query = "
            select m.*,p.* from planning.tb_comment m
            inner join planning.tb_plann_pr p on p.doc_num = m.doc_num
            where p.doc_num = $1
        ";
        
        $result = pg_query_params($conn, $query, array($doc_num));
    
        if (!$result) {
            die('Query failed: ' . pg_last_error($conn));
        }
    
        if (pg_num_rows($result) > 0) {
            return pg_fetch_assoc($result); // คืนค่าข้อมูลแถวแรกในรูปแบบ array
        } else {
            return null; // หากไม่มีข้อมูล ให้คืนค่า null
        }
    }

    /**
     * * นำข้อมูลออก เป็น excel 
     */

     function getPlanningComment($conn, $id) {
        // SQL Query
        $query = "select m.*, p.* 
                  from planning.tb_comment m
                  inner join planning.tb_plann_pr p on p.doc_num = m.doc_num
                  where p.doc_num = $1";
        
        // Execute the query with parameterized input
        $result = pg_query_params($conn, $query, [$id]);
    
        // ตรวจสอบผลลัพธ์
        if ($result) {
            // Return all rows as an associative array
            return pg_fetch_all($result);
        } else {
            // หาก query ล้มเหลว ส่งคืนข้อความข้อผิดพลาด
            return ['error' => pg_last_error($conn)];
        }
    }

    /**
     * * เพิ่มข้อมูลการขออนุมัติ
     * * Type PR
     */
    function approval_planning($conn,$requset_id,$day_now,$user_id,$user_name,$department,$type_approve,$short_title,$status,$branch_id,$district_id,$province_id,$headquarters_id){
        $query = "insert into tb_approvaler(approve_id, request_date, requset_id, requester_name, department_id,type_approve, short_title, status, branch_id, district_id, province_id, headquarters_id) 
        values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)";

        $result = pg_query_params($conn,$query,array(
            $requset_id,$day_now,$user_id,$user_name,$department,$type_approve,$short_title,$status,$branch_id,$district_id,$province_id,$headquarters_id
        ));

        return $result;

    }

    /**
     * * ข้อมูลการขออนุมัติ
     */
    function view_approval_planning($conn, $status, $type, $department) {
        // เพิ่ม ORDER BY เพื่อเรียงข้อมูลล่าสุดขึ้นมาก่อน
        $query = "SELECT * 
                  FROM tb_approvaler 
                  WHERE status = $1 AND type_approve = $2 AND department_id = $3
                  ORDER BY approve_date DESC"; // เปลี่ยน created_at เป็นคอลัมน์ที่เหมาะสม
    
        $result = pg_query_params($conn, $query, [$status, $type,$department]);
    
        if (!$result) {
            return []; // คืนค่าข้อมูลว่างถ้า Query ล้มเหลว
        }
    
        $data = [];
        while ($row = pg_fetch_assoc($result)) {
            $data[] = $row;
        }
        return $data;
    }
    

    /**
     * * การอนุมัติแผนระดับสาขา จังหวัด เขต และ สำนักงานใหญ่ แผน 
     */
    function approval_planning_level($conn, $status, $approve_by, $approve_date, $doc_num, $type_approve, $branch_id, $district_id, $province_id, $headquarters_id) {
        $query = "UPDATE tb_approvaler 
                  SET status = $1, 
                      approve_by = $2, 
                      approve_date = $3, 
                      branch_id = $4, 
                      district_id = $5, 
                      province_id = $6, 
                      headquarters_id = $7 
                  WHERE approve_id = $8 AND type_approve = $9";
    
        // เรียกใช้ pg_query_params พร้อมการจัดลำดับพารามิเตอร์ให้ถูกต้อง
        $result = pg_query_params($conn, $query, array(
            $status,          // $1
            $approve_by,      // $2
            $approve_date,    // $3
            $branch_id,       // $4
            $district_id,     // $5
            $province_id,     // $6
            $headquarters_id, // $7
            $doc_num,         // $8 (เปลี่ยนเป็น approve_id)
            $type_approve     // $9
        ));
    
        return $result;
    }

    /**
     * * อัพเดตข้อมูลในตารางรายการของแผนนั้นๆ
     */
    function update_planning_status($conn,$status,$dou_num){
        $query = "update planning.tb_plann_pr set status = $1 where doc_num = $2";
        $result = pg_query_params($conn,$query,array(
            $status,$dou_num
        ));

        return $result;
    }

    /**
     * * แสดงข้อมูลของวัสดุ, กลุ่มวัสดุ , โรงงาน, ที่เก็บสินค้า, กลุ่มการจัดซื้อ, เงินทุน, ศนูย์ต้นทุน, ภาระผูกพันธ์, เงินทุน, ศ.ต้นทุน
     * * เมื่อต้องการเพิ้ม แค่เพิ่มชื่อตารางเข้ามา 
     */

    function fetch_table_data($conn, $table_name) {
        // Escape table name เพื่อป้องกัน SQL Injection
        $allowed_tables = [
            'planning.tb_material',
            'planning.tb_group_matrail',
            'planning.tb_factory',
            'planning.tb_storage_location',
            'planning.tb_purchasing_group',
            'tb_g_l',
            'planning.tb_costcenter',
            'planning.tb_scope',
            'tb_comment_item',
            'planning.tb_fund',
            'planning.tb_s_coscenter'
        ];
    
        if (!in_array($table_name, $allowed_tables)) {
            echo "Invalid table name!";
            return [];
        }
    
        $query = "SELECT * FROM {$table_name}";
        $result = pg_query($conn, $query);
    
        if (!$result) {
            echo "Error in query execution: " . pg_last_error($conn);
            return [];
        }
    
        $data = [];
        while ($row = pg_fetch_assoc($result)) {
            $data[] = $row;
        }
    
        return $data;
    }
    
?>