$(document).ready(function () {
  // บันทึกแผน PR ของอนุมัติ
  $("#btn_requst_approve").on("click", function () {
    const doc_num = $("#doc_num").val();
  
    console.log("เริ่มต้น: กดปุ่มอนุมัติ - รหัสเอกสาร:", doc_num);
  
    swal
      .fire({
        title: "ท่านต้องการขออนุมัติแผนใช่หรือไม่",
        text: `รหัสแผนของท่าน ${doc_num}`,
        icon: "question",
        showCancelButton: true,
        confirmButtonText: "ใช่, ทำรายการ",
        cancelButtonText: "ยกเลิก",
      })
      .then((result) => {
        if (result.isConfirmed) {
          showLoadingScreen(); // แสดง Loading Screen
          const dataToSend = prepareFormData(doc_num); // เตรียมข้อมูลส่ง AJAX
  
          // ส่งข้อมูล AJAX หลังหน่วงเวลา 1 วินาที
          setTimeout(() => {
            sendAjaxRequest(dataToSend);
          }, 1000);
        } else {
          showCancelMessage(); // แสดงข้อความยกเลิก
        }
      });
  });
  
  // แสดง SweetAlert Loading Screen
  function showLoadingScreen() {
    swal.fire({
      title: "กำลังดำเนินการ...",
      html: '<div class="spinner-border text-primary" role="status"></div><br>กรุณารอสักครู่',
      allowOutsideClick: false,
      showConfirmButton: false,
    });
  }
  
  // แสดงข้อความยกเลิก
  function showCancelMessage() {
    swal.fire({
      icon: "info",
      title: "การทำรายการถูกยกเลิก",
      text: "คุณได้ยกเลิกการขออนุมัติแผน",
      timer: 1500,
    });
  }
  
  // เตรียมข้อมูลสำหรับส่ง AJAX
  function prepareFormData(doc_num) {
    const formData = {
      doc_num: doc_num,
      type_doc: $("#default").val(),
      start_date: $("#start_date").val(),
      end_date: $("#end_date").val(),
      header: $("#header").val(),
      deatil: $("#deatil").val(),
      grand_total: $("#grand_total").val(),
      default_cure: $("#default_cure").val(),
      default_cure_unit: $("#default_cure_unit").val(),
      default_vat_v: $("#default_vat_v").val(),
      default_g_l: $("#default_g_l").val(),
      default_fun_center: $("#default_fun_center").val(),
      default_spoce: $("#default_spoce").val(),
      default_messsinons: $("#default_messsinons").val(),
      default_money_center: $("#default_money_center").val(),
      default_funds_center: $("#default_funds_center").val(),
      meagess_job: $("#meagess_job").val(),
      meagess_list: $("#meagess_list").val(),
      meagess_monkbon: $("#meagess_monkbon").val(),
      meagess_mm: $("#meagess_mm").val(),
      megess_price: $("#megess_price").val(),
      order: collectOrderData(), // ข้อมูลจากตาราง
    };
  
    return formData;
  }
  
  // เก็บข้อมูลจากตาราง
  function collectOrderData() {
    const order = [];
    $("#list_order tbody tr").each(function () {
      order.push({
        id_list: $(this).find("td").eq(1).text(),
        group_account: $(this).find("td").eq(2).text(),
        material: $(this).find("td").eq(3).text(),
        short_text: $(this).find("td").eq(4).text(),
        quantity: $(this).find("td").eq(5).text(),
        unit: $(this).find("td").eq(6).text(),
        delivery_date: $(this).find("td").eq(7).find("input").val(),
        group_material: $(this).find("td").eq(8).text(),
        factor: $(this).find("td").eq(9).text(),
        store_mm: $(this).find("td").eq(10).text(),
        pushuing_group: $(this).find("td").eq(11).text(),
        price: $(this).find("td").eq(12).text(),
        total: $(this).find("td").eq(13).text(),
      });
    });
    return order;
  }
  
  // ส่งข้อมูลผ่าน AJAX
  function sendAjaxRequest(data) {
    $.ajax({
      url: "services/planning/planning-pr.php",
      method: "POST",
      data: data,
      success: function (response) {
        console.log("AJAX Success: รับข้อมูลจากเซิร์ฟเวอร์", response);
  
        swal
          .fire({
            icon: "success",
            title: "บันทึกข้อมูลสำเร็จ",
            text: response,
            showConfirmButton: true,
            timer: 1500,
          })
          .then(function () {
            window.location.href = "planning-pr.php"; // เปลี่ยนเส้นทาง
          });
      },
      error: function () {
        swal.fire({
          icon: "error",
          title: "เกิดข้อผิดพลาด",
          text: "ไม่สามารถส่งข้อมูลได้ กรุณาลองอีกครั้ง",
        });
      },
    });
  }
  
  // บันทุกแผน PR ร่าง
  $("#btn_darft_planning").on("click", function () {
    let doc_num = $("#doc_num").val();

    swal
      .fire({
        title: "ท่านต้องการบันทึกร่างแผนใช่หรือไม่",
        text: "รหัสแผนของท่าน " + doc_num,
        icon: "question",
        showCancelButton: true,
        confirmButtonText: "ใช่, ทำรายการ",
        cancelButtonText: "ยกเลิก",
      })
      .then((result) => {
        if (result.isConfirmed) {
          let order_darft = [];

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

            order_darft.push({
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
            url: "services/planning/planning-pr.php",
            method: "post",
            data: {
              order_darft: JSON.stringify(order_darft),
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
});
