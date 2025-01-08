<?php
/**
 * * แสดงข้อมูล view ใน input ต่างๆออกมา
 */
function view_detail_planing($conn, $doc_num) {
    // ประกาศตัวแปรเป็น global
    global $doc_num,$header,$type_doc,$date_start,$end_date,$detail,$curee,$group_mm, $total,$vat,$g_l,$fun_center,$scpoe_fund,$commitments,$fund,$fund_center,
    $procurement_message,$item_notes,$delivery_message,$quotation_text;

    $data = view_darft_planning($conn, $doc_num); // เรียกฟังก์ชันเพื่อดึงข้อมูล

    if ($data) {
        // กำหนดค่าจากผลลัพธ์ของ query ลงในตัวแปร
        $doc_num = $data['doc_num'] ?? "";
        $header = $data['title'] ?? "";
        $type_doc = $data['type_doc'] ?? "";
        $date_start = $data['start_date'] ?? "";
        $end_date = $data['end_date'] ?? "";
        $detail = $data['detail'] ?? "";
        $curee = $data['currency'] ?? "";
        $group_mm = $data['mm_group'] ?? "";
        $total = $data['total'] ?? "";
        $vat = $data['vat'] ?? "";
        $g_l = $data['g_l'] ?? "";
        $fun_center = $data['fund_money'] ?? "";
        $scpoe_fund = $data['scpoe_fund'] ?? "";
        $commitments = $data['commitments'] ?? "";
        $fund = $data['fund'] ?? "";
        $fund_center = $data['fund_center'] ?? "";
        $procurement_message = $data['procurement_message'];
        $item_notes = $data['item_notes'];
        $delivery_message = $data['delivery_message'];
        $quotation_text = $data['quotation_text'];
    } else {
        // echo "No data found for Document Number: " . htmlspecialchars($doc_num) . ".";
    }
}
?>
