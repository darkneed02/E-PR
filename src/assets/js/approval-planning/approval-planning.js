$(document).on("click", ".view-btn", function () {
  var approveId = $(this).data("view_id"); // ดึง ID จาก data-view_id

  // แสดง Modal
  $("#detailModal").modal("show");

  // ล้างค่าเก่าใน input ก่อนโหลดข้อมูลใหม่
  $("#modalContent input").val("");
  $("#modalContent textarea").val("");
  $("#list_order_detail tbody").empty();

  // Object Mapping สำหรับแปลง type_doc เป็นข้อความ
  const typeDocMap = {
    PR01: "ใบขอเสนอซื้อ",
    PR02: "ใบขอเสนอเช่า",
    PR03: "ใบขอเสนอจ้าง",
  };

  // ดึงข้อมูลจากฐานข้อมูลผ่าน AJAX
  $.ajax({
    url: "services/planning/fetch_approve_details.php", // ไฟล์ PHP ที่ใช้ดึงข้อมูล
    type: "POST",
    dataType: "json", // กำหนดให้รับข้อมูลในรูปแบบ JSON
    data: { approve_id: approveId },
    success: function (response) {
      console.log(response); // ตรวจสอบค่าที่ได้รับจาก PHP
      if (response.success) {
        // ใส่ค่าลงใน input ต่าง ๆ
        $("#detailModalLabel").text(
          "รายละเอียด (หรัสรายการ: " + response.data.doc_num + ")"
        );

        // แปลง type_doc เป็นข้อความ
        const typeDocText =
          typeDocMap[response.data.type_doc] || "ไม่ทราบประเภทเอกสาร";
        // อัปเดตค่าใน input
        $("#doc_num").val(response.data.doc_num);
        $("#type_doc").val(typeDocText); // แสดงข้อความแทน type_doc
        $("#start_date").val(response.data.start_date); // แสดงวันที่เริ่ม
        $("#end_date").val(response.data.end_date); // แสดงวันที่สิ้นสุด
        $("#header").val(response.data.title); // แสดงชื่อแผนงาน PR
        $("#deatil").val(response.data.detail); // แสดงรายละเอียดแผนงาน
        $("#grand_total").val(response.data.totalSum); // ราคาประเมิน
        $("#default_cure").val(response.data.currency); // แสดงหน่วยเงิน
        $("#group_mm").val(response.data.mm_group); // แสดงกลุ่มวัสดุ
        $("#grand_total_vat").val(response.data.estimated_price); // แสดงราคาประเมินรวมภาษี
        $("#default_vat_v").val(response.data.vat); // แสดงภาษี
        $("#default_g_l").val(response.data.g_l); // แสดงกลุ่มบัญชี
        $("#default_fun_center").val(response.data.fund_money); // แสดงกลุ่มเงินทุน
        $("#default_spoce").val(response.data.scpoe_fund); // แสดงกลุ่มขอบเขต
        $("#default_messsinons").val(response.data.commitments); // แสดงกลุ่มภาละพูกพัน
        $("#default_money_center").val(response.data.procurement_group); // แสดงกลุ่มจัดซื้อ
        $("#default_Funds_center").val(response.data.fund_center); // แสดงกลุ่มศนูย์เงินทุน
        $("#meagess_job").val(response.data.procurement_message); // ข้อความจัดซื้อจัดจ้าง
        $("#meagess_list").val(response.data.item_notes); // หมายเหตุรายการ
        $("#meagess_monkbon").val(response.data.delivery_message); // ข้อความการส่งมอบ
        $("#meagess_mm").val(response.data.message_ordering_materials); // ข้อความในสั่งซื้อวัสดุ
        $("#megess_price").val(response.data.quotation_text); // ข้อความใบเสนอราคา

        // เติมข้อมูลในตาราง
        const tableData = response.data.details; // ดึงข้อมูลสินค้า
        const $tableBody = $("#list_order_detail tbody"); // อ้างถึง tbody ของตาราง
        $tableBody.empty(); // ล้างข้อมูลเก่าออก

        tableData.forEach((row, index) => {
          const rowHtml = `
                    <tr>
                        <td>${index + 1}</td>
                        <td>${row.order_list}</td>
                        <td>${row.group_account}</td>
                        <td>${row.matrail_name}</td>
                        <td>${row.short_meagess}</td>
                        <td>${row.quantity}</td>
                        <td>${row.unit}</td>
                        <td>${row.delivery_date}</td>
                        <td>${row.mm_group}</td>
                        <td>${row.factory_mm}</td>
                        <td>${row.product_storage}</td>
                        <td>${row.factory_mm}</td>
                        <td>${row.price}</td>
                        <td>${row.total}</td>
                    </tr>
                `;
          $tableBody.append(rowHtml); // เพิ่มแถวใหม่ใน tbody
        });
      } else {
        alert("ไม่พบข้อมูล: " + response.message);
      }
    },
    error: function (xhr, status, error) {
      console.error("Error: " + error);
      console.error("Response: ", xhr.responseText);
      alert("เกิดข้อผิดพลาดในการโหลดข้อมูล");
    },
  });
});
