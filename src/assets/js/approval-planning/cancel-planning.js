$(document).ready(function () {
  // ยกเลิกแผน
  $("#cancel_btn_planning").on("click", function () {
    let doc_num = $("#doc_num").val();

    swal
      .fire({
        title: "ท่านต้องการยกเลิกแผนนี้ใช่หรือไม่",
        text: `รหัสแผนของท่าน ${doc_num}`,
        icon: "question",
        showCancelButton: true,
        confirmButtonText: "ใช่, ทำรายการ",
        cancelButtonText: "ยกเลิก",
      })
      .then((result) => {
        if (result.isConfirmed) {
          showLoadingScreen(); // แสดง Loading Screen

          // ส่งข้อมูลผ่าน AJAX
          setTimeout(() => {
            $.ajax({
              url: "services/planning/update-planning.php", // URL ของ PHP
              method: "POST",
              data: {
                doc_num_cancel: doc_num, // ส่งข้อมูลยกเลิก
              },
              success: function (response) {
                // แสดงผลลัพธ์สำเร็จ
                swal
                  .fire({
                    icon: "success",
                    title: "ยกเลิกแผนสำเร็จ",
                    text: response,
                    showConfirmButton: true,
                  })
                  .then(function () {
                    location.reload(); // รีโหลดหน้า
                  });
              },
              error: function () {
                // แสดงข้อผิดพลาด
                swal.fire({
                  icon: "error",
                  title: "เกิดข้อผิดพลาด",
                  text: "ไม่สามารถยกเลิกแผนได้ กรุณาลองใหม่อีกครั้ง",
                });
              },
            });
          }, 1000); // หน่วงเวลา 1 วินาทีก่อนส่งข้อมูล
        } else {
          showCancelMessage(); // แสดงข้อความเมื่อผู้ใช้กดยกเลิก
        }
      });
  });
});

// แสดง Loading Screen ด้วย SweetAlert
function showLoadingScreen() {
  swal.fire({
    title: "กำลังดำเนินการ...",
    html: '<div class="spinner-border text-primary" role="status"></div><br>กรุณารอสักครู่',
    allowOutsideClick: false,
    showConfirmButton: false,
  });
}

// แสดงข้อความเมื่อผู้ใช้กดยกเลิก
function showCancelMessage() {
  swal.fire({
    icon: "info",
    title: "การทำรายการถูกยกเลิก",
    text: "คุณได้ยกเลิกการดำเนินการ",
    timer: 1500,
  });
}
