document.getElementById("btn_cancel_planning").addEventListener("click", function () {
    Swal.fire({
        title: "ยืนยันการรีโหลด?",
        text: "คุณแน่ใจหรือไม่ว่าต้องการรีโหลดหน้านี้?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "ใช่, รีโหลดเลย!",
        cancelButtonText: "ยกเลิก"
    }).then((result) => {
        if (result.isConfirmed) {
            location.reload(); // รีโหลดหน้าใหม่
        }
    });
});
