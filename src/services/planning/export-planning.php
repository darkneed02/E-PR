<?php
// เปิดการแสดง Error เพื่อ Debug
error_reporting(E_ALL);
ini_set('display_errors', 1);

require '../../packages/vendor/autoload.php';
require '../../services/class/connect_db.php';
require '../../services/class/planning-db.php';

$conn = db_connect();

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// รับ ID (ตัวอย่างส่งมาเป็น dummy_data)
$id = $_POST['id'] ?? '';

if (empty($id)) {
    http_response_code(400);
    echo "Invalid ID";
    exit;
}

// Query ข้อมูลจากฐานข้อมูล
$data = getPlanningComment($conn, $id);

// สร้าง Spreadsheet
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();


$sheet->setCellValue('A1', 'เลขที่เอกสาร');
$sheet->setCellValue('B1', 'ประเภทจัดซื้อ');
$sheet->setCellValue('C1', 'บันทึกส่วนหัว');
$sheet->setCellValue('D1', 'คำอธิบาย');
$sheet->setCellValue('E1', 'รายการ');
$sheet->setCellValue('F1', 'หมวดการกำหนดบัญชี');
$sheet->setCellValue('G1', 'วัสดุ');
$sheet->setCellValue('H1', 'ข้อความสั้น');
$sheet->setCellValue('I1', 'ปริมาณ');
$sheet->setCellValue('J1', 'หน่วย');
$sheet->setCellValue('K1', 'วันที่ส่งมอบ');
$sheet->setCellValue('L1', 'กลุ่มวัสดุ');
$sheet->setCellValue('M1', 'โรงงาน');
$sheet->setCellValue('N1', 'ที่เก็บสินค้า');
$sheet->setCellValue('O1', 'กลุ่มจัดซื้อ');
$sheet->setCellValue('P1', 'วันที่ขอ');
$sheet->setCellValue('Q1', 'ราคาประเมิน');
$sheet->setCellValue('R1', 'สกุลเงิน');
$sheet->setCellValue('S1', 'รหัสภาษี');
$sheet->setCellValue('T1', 'บัญชี G/L');
$sheet->setCellValue('U1', 'ศนูย์ต้นทุน');
$sheet->setCellValue('V1', 'เงินทุน');
$sheet->setCellValue('W1', 'ขอบเขตหน้าที่');
$sheet->setCellValue('X1', 'Fund Center');
$sheet->setCellValue('Y1', 'รายการภาระผูกพัน');
$sheet->setCellValue('Z1', 'ข้อความจัดซื้อจัดจ้าง');
$sheet->setCellValue('AA1', 'หมายเหตุรายการ');
$sheet->setCellValue('AB1', 'ข้อความการส่งมอบ');
$sheet->setCellValue('AC1', 'ข้อความในสั่งซื้อวัสดุ');
$sheet->setCellValue('AD1', 'ข้อความใบเสนอราคา');

if (isset($data['error'])) {
    // Handle error case
    echo "Error: " . $data['error'];
} elseif ($data) {
    $rowNumber = 2;
    foreach ($data as $row) {
        $sheet->setCellValue('A' . $rowNumber, $row['doc_num']);
        $sheet->setCellValue('B' . $rowNumber, $row['type_doc']);
        $sheet->setCellValue('C' . $rowNumber, $row['title']);
        $sheet->setCellValue('D' . $rowNumber, $row['detail']);
        $sheet->setCellValue('E' . $rowNumber, $row['order_list']);
        $sheet->setCellValue('F' . $rowNumber, $row['group_account']);
        $sheet->setCellValue('G' . $rowNumber, $row['matrail_name']);
        $sheet->setCellValue('H' . $rowNumber, $row['short_meagess']);
        $sheet->setCellValue('I' . $rowNumber, $row['quantity']);
        $sheet->setCellValue('J' . $rowNumber, $row['unit']);
        $sheet->setCellValue('K' . $rowNumber, $row['delivery_date']);
        $sheet->setCellValue('L' . $rowNumber, $row['mm_group']);
        $sheet->setCellValue('M' . $rowNumber, $row['factory_mm']);
        $sheet->setCellValue('N' . $rowNumber, $row['product_storage']);
        $sheet->setCellValue('O' . $rowNumber, $row['procurement_group']);
        $sheet->setCellValue('P' . $rowNumber, $row['create_date']);
        $sheet->setCellValue('Q' . $rowNumber, $row['estimated_price']);
        $sheet->setCellValue('R' . $rowNumber, $row['currency']);
        $sheet->setCellValue('S' . $rowNumber, $row['vat']);
        $sheet->setCellValue('T' . $rowNumber, $row['g_l']);
        $sheet->setCellValue('U' . $rowNumber, $row['fund_money']);
        $sheet->setCellValue('V' . $rowNumber, $row['fund']);
        $sheet->setCellValue('W' . $rowNumber, $row['scpoe_fund']);
        $sheet->setCellValue('X' . $rowNumber, $row['fund_center']);
        $sheet->setCellValue('Y' . $rowNumber, $row['commitments']);
        $sheet->setCellValue('Z' . $rowNumber, $row['procurement_message']);
        $sheet->setCellValue('AA' . $rowNumber, $row['item_notes']);
        $sheet->setCellValue('AB' . $rowNumber, $row['delivery_message']);
        $sheet->setCellValue('AC' . $rowNumber, $row['message_ordering_materials']);
        $sheet->setCellValue('AD' . $rowNumber, $row['quotation_text']);

        $rowNumber++;
    }
} else {
    echo "No data found.";
}


// สร้าง Writer
$writer = new Xlsx($spreadsheet);

// ตั้งค่า Headers สำหรับ Response
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment; filename="exported_data.xlsx"');
header('Cache-Control: max-age=0');

// เขียนไฟล์ลงใน Output Stream
$writer->save('php://output');
exit;
?>
