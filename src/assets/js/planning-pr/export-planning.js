$(document).ready(function () {
  $(".export-btn").click(function () {
    const reportId = $(this).data("report_id");

    if (reportId) {
      $.ajax({
        url: "services/planning/export-planning.php",
        type: "POST",
        data: { id: reportId },
        xhrFields: {
          responseType: "blob", // สำคัญสำหรับดาวน์โหลดไฟล์
        },
        success: function (data) {
          const blob = new Blob([data], {
            type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
          });
          const url = window.URL.createObjectURL(blob);
          const a = document.createElement("a");
          a.style.display = "none";
          a.href = url;
          a.download = `exported_data_${reportId}.xlsx`;
          document.body.appendChild(a);
          a.click();
          window.URL.revokeObjectURL(url);
        },
        error: function (xhr, status, error) {
          alert("Error exporting data: " + error);
        },
      });
    } else {
      alert("ไม่สามารถดึงข้อมูลได้: ไม่มี ID ที่ถูกต้อง");
    }
  });
});
