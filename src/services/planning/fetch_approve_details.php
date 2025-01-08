<?php
header('Content-Type: application/json'); // กำหนดให้ส่ง JSON response

require '../../services/class/connect_db.php'; // ตรวจสอบว่าลิงก์ไฟล์นี้ถูกต้อง

$conn = db_connect();

$response = ['success' => false, 'message' => '', 'data' => null];

if (isset($_POST['approve_id'])) {
    $approve_id = $_POST['approve_id'];

    // Query ดึงข้อมูลจากตารางเดียว
    $query = "select m.*,p.* from planning.tb_comment m
        inner join planning.tb_plann_pr p on m.doc_num = p.doc_num
        where p.doc_num = $1
    ";

    $result = pg_query_params($conn, $query, array($approve_id));

    if ($result && pg_num_rows($result) > 0) {
        $details = [];
        $data = null;
        $totalSum = 0; // ตัวแปรสะสมราคารวม

        // วนลูปข้อมูลทั้งหมด
        while ($row = pg_fetch_assoc($result)) {
            // เก็บข้อมูลหลัก (แถวแรก)
            if (!$data) {
                $data = [
                    'doc_num' => $row['doc_num'],
                    'type_doc' => $row['type_doc'],
                    'start_date' => $row['start_date'],
                    'end_date' => $row['end_date'],
                    'title' => $row['title'],
                    'detail' => $row['detail'],
                    'currency' => $row['currency'],
                    'mm_group' => $row['mm_group'],
                    'estimated_price' => $row['estimated_price'],
                    'vat' => $row['vat'],
                    'g_l' => $row['g_l'],
                    'fund_money' => $row['fund_money'],
                    'scpoe_fund' => $row['scpoe_fund'],
                    'commitments' => $row['commitments'],
                    'procurement_group' => $row['procurement_group'],
                    'fund_center' => $row['fund_center'],
                    'procurement_message' => $row['procurement_message'],
                    'item_notes' => $row['item_notes'],
                    'delivery_message' => $row['delivery_message'],
                    'message_ordering_materials' => $row['message_ordering_materials'],
                    'quotation_text' => $row['quotation_text'],
                ];
            }

            // เก็บรายละเอียดสินค้าใน Array
            $details[] = [
                'order_list' => $row['order_list'],
                'group_account' => $row['group_account'],
                'matrail_name' => $row['matrail_name'],
                'short_meagess' => $row['short_meagess'],
                'quantity' => $row['quantity'],
                'unit' => $row['unit'],
                'delivery_date' => $row['delivery_date'],
                'mm_group' => $row['mm_group'],
                'factory_mm' => $row['factory_mm'],
                'product_storage' => $row['product_storage'],
                'procurement_group' => $row['procurement_group'],
                'price' => $row['price'],
                'total' => $row['total'],
            ];

            // สะสมราคารวม
            $totalSum += $row['total'];
        }

        // เพิ่มราคารวมในข้อมูลหลัก
        $data['totalSum'] = $totalSum;

        // รวมข้อมูลเอกสารและรายละเอียดสินค้า
        $response['success'] = true;
        $response['data'] = array_merge($data, ['details' => $details]);
    } else {
        $response['message'] = 'ไม่พบข้อมูลในระบบ';
    }
} else {
    $response['message'] = 'ไม่มีข้อมูลที่ส่งมา';
}

// ตรวจสอบข้อผิดพลาดของ PostgreSQL
if (!$response['success']) {
    $response['error'] = pg_last_error($conn);
}

// ส่ง JSON response
echo json_encode($response);

?>
