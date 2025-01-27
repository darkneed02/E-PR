$(document).ready(function () {
  $("#btn_requst_darft_approve").on("click", function () {
    let doc_num = $("#doc_num").val();

    swal
      .fire({
        title: "ท่านต้องการขออนุมัติแผนใช่หรือไม่",
        text: "รหัสแผนของท่าน " + doc_num,
        icon: "question",
        showCancelButton: true,
        confirmButtonText: "ใช่, ทำรายการ",
        cancelButtonText: "ยกเลิก",
      })
      .then((result) => {
        if (result.isConfirmed) {
          let order = [];

          // input textbox
          let doc_num = $("#doc_num").val();
          let type_doc = $("#default").val();
          let start_date = $("#start_date").val();
          let end_date = $("#end_date").val();
          let header = $("#header").val();
          let deatil = $("#deatil").val();
          let grand_total = $("#grand_total").val();
          let default_cure = $("#default_cure").val();
          let default_cure_unit = $("#default_cure_unit").val();
          let default_vat_v = $("#default_vat_v").val();
          let default_g_l = $("#default_g_l").val();
          let default_fun_center = $("#default_fun_center").val();
          let default_spoce = $("#default_spoce").val();
          let default_messsinons = $("#default_messsinons").val();
          let default_money_center = $("#default_money_center").val();
          let default_funds_center = $("#default_funds_center").val();
          let meagess_job = $("#meagess_job").val();
          let meagess_list = $("#meagess_list").val();
          let meagess_monkbon = $("#meagess_monkbon").val();
          let meagess_mm = $("#meagess_mm").val();
          let megess_price = $("#megess_price").val();

          // table => id list_order
          $("#list_order tbody tr").each(function () {
            let id_list = $(this).find("td").eq(1).text();
            let group_account = $(this).find("td").eq(2).text();
            let material = $(this).find("td").eq(3).text();
            let short_text = $(this).find("td").eq(4).text();
            let quantity = $(this).find("td").eq(5).text();
            let unit = $(this).find("td").eq(6).text();
            let delivery_date = $(this).find("td").eq(7).find("input").val();
            let group_material = $(this).find("td").eq(8).text();
            let factor = $(this).find("td").eq(9).text();
            let store_mm = $(this).find("td").eq(10).text();
            let price = $(this).find("td").eq(12).text();
            let total = $(this).find("td").eq(13).text();

            order.push({
              id_list,
              group_account,
              material,
              short_text,
              quantity,
              unit,
              delivery_date,
              group_material,
              factor,
              store_mm,
              price,
              total,
            });
          });

          // ส่งข้อมูลรูปแบบ ajax
          $.ajax({
            url: "services/planning/update-planning.php",
            method: "post",
            data: {
              order: JSON.stringify(order),
              doc_num: doc_num,
              type_doc: type_doc,
              start_date: start_date,
              end_date: end_date,
              header: header,
              deatil: deatil,
              grand_total: grand_total,
              default_cure: default_cure,
              default_cure_unit: default_cure_unit,
              default_vat_v: default_vat_v,
              default_g_l: default_g_l,
              default_fun_center: default_fun_center,
              default_spoce: default_spoce,
              default_messsinons: default_messsinons,
              default_money_center: default_money_center,
              default_funds_center: default_funds_center,
              meagess_job: meagess_job,
              meagess_list: meagess_list,
              meagess_monkbon: meagess_monkbon,
              meagess_mm: meagess_mm,
              megess_price: megess_price,
            },
            success: function (response) {
              swal
                .fire({
                  icon: "success",
                  title: "บันทึกข้อมูลสำเร็จ",
                  text: response,
                  showConfirmButton: "OK",
                  timer: 1500,
                })
                .then(function () {
                  location.reload();
                });
            },
          });
        } else if (result.dismiss === Swal.DismissReason.cancel) {
          swal.fire({
            icon: "info",
            title: "การทำรายการถูกยกเลิก",
            text: "คุณได้ยกเลิกการขออนุมัติแผน",
            timer: 1500,
          });
        }
      });
  });

  // อัพเดตสถานะการอนุมัติรายการ สาขา จังหวัด เขต และ สำนักงานใหญ๋
  function handleApproval(buttonId, dataKey) {
    $(buttonId).on("click", function () {
      let doc_num = $("#doc_num").val();
  
      // ยืนยันการดำเนินการ
      swal
        .fire({
          title: "ท่านต้องการขออนุมัติแผนใช่หรือไม่",
          text: "รหัสแผนของท่าน " + doc_num,
          icon: "question",
          showCancelButton: true,
          confirmButtonText: "ใช่, ทำรายการ",
          cancelButtonText: "ยกเลิก",
        })
        .then((result) => {
          if (result.isConfirmed) {
            showLoading(); // แสดง SweetAlert สำหรับสถานะการโหลด
            submitApprovalRequest(dataKey, doc_num); // ส่งข้อมูลผ่าน AJAX
          } else {
            showCancellation(); // แสดงข้อความกรณียกเลิก
          }
        });
    });
  }
  
  // แสดง SweetAlert สำหรับสถานะการโหลด
  function showLoading() {
    swal.fire({
      title: "กำลังดำเนินการ...",
      html: '<div class="spinner-border text-primary" role="status"></div><br>กรุณารอสักครู่',
      allowOutsideClick: false,
      showConfirmButton: false,
    });
  }
  
  // แสดงข้อความกรณียกเลิก
  function showCancellation() {
    swal.fire({
      icon: "info",
      title: "การทำรายการถูกยกเลิก",
      text: "คุณได้ยกเลิกการขออนุมัติแผน",
    });
  }
  
  // ส่งข้อมูลผ่าน AJAX
  function submitApprovalRequest(dataKey, doc_num) {
    let payload = {};
    payload[dataKey] = doc_num;
  
    $.ajax({
      url: "services/planning/update-planning.php",
      method: "POST",
      data: payload,
      success: function (response) {
        handleAjaxSuccess(response, doc_num); // จัดการเมื่อสำเร็จ
      },
      error: function () {
        handleAjaxError(); // จัดการเมื่อเกิดข้อผิดพลาด
      },
    });
  }
  
  // จัดการเมื่อ AJAX สำเร็จ
  function handleAjaxSuccess(response, doc_num) {
    try {
      if (typeof response === "string") {
        response = JSON.parse(response);
      }
  
      setTimeout(() => {
        if (response.success) {
          swal.fire({
            icon: "success",
            title: "บันทึกข้อมูลสำเร็จ",
            text: response.message || "การดำเนินการเสร็จสมบูรณ์ รหัสแผน: " + doc_num,
          }).then(function () {
            location.reload(); // รีโหลดหน้า
          });
        } else {
          swal.fire({
            icon: "error",
            title: "เกิดข้อผิดพลาด",
            text: response.message || "กรุณาลองอีกครั้ง",
          });
        }
      }, 1000); // หน่วงเวลา 1 วินาทีก่อนแสดงผล
    } catch {
      swal.fire({
        icon: "error",
        title: "รูปแบบข้อมูลผิดพลาด",
        text: "ไม่สามารถประมวลผลข้อมูลที่ตอบกลับได้",
      });
    }
  }
  
  // จัดการเมื่อ AJAX เกิดข้อผิดพลาด
  function handleAjaxError() {
    swal.fire("ผิดพลาด", "ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ได้", "error");
  }
  
  // เรียกใช้งานฟังก์ชัน
  handleApproval("#approveplanning_Btn", "doc_num_update");
  handleApproval("#btn_approval_provinces", "doc_num_province");
  handleApproval("#btn_approval_disctract", "doc_num_disctracit");
  handleApproval("#btn_approval_headequerts", "doc_num_headequter");

});
