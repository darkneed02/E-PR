$(document).ready(function () {
  // ยกเลิกแผน
  $("#btn_cancel_planning").on("click", function () {
    let doc_num = $("#doc_num").val();
    swal
      .fire({
        title: "ท่านต้องการรีเซ็ตข้อมูลแผนใช่หรือไม่",
        text: "รหัสแผนของท่าน " + doc_num,
        icon: "question",
        showCancelButton: true,
        confirmButtonText: "ใช่, ทำรายการ",
        cancelButtonText: "ยกเลิก",
      })
      .then((result) => {
        if (result.isConfirmed) {
          // Reload the page if confirmed
          location.reload();
        } else if (result.dismiss === Swal.DismissReason.cancel) {
          // Do nothing if canceled
          console.log("Action canceled");
        }
      });
  });
});
