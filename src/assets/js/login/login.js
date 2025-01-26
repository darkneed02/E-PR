$(document).ready(function () {
  // ตรวจสอบการกดปุ่ม Enter ในฟอร์ม
  $("#username, #userpassword").on("keydown", function (event) {
    if (event.key === "Enter") {
      event.preventDefault(); // ป้องกันพฤติกรรมเริ่มต้น
      $("#btn_login").click(); // Trigger the click event for the login button
    }
  });

  $("#btn_login").click(function () {
    var username = $("#username").val();
    var password = $("#userpassword").val();

    console.log(username);
    console.log(password);

    $.ajax({
      url: "services/login/login.php",
      method: "post",
      data: {
        username: username,
        password: password,
      },
      dataType: "json",
      success: function (response) {
        console.log(response); // ตรวจสอบว่า response มีค่าอะไรบ้าง
        if (response.status === "success") {
          Swal.fire({
            icon: "success",
            title: "เข้าสู่ระบบสำเร็จ",
            showConfirmButton: false,
            timer: 1500,
          }).then(function () {
            window.location.href = response.url; // รีไดเรกไปยัง URL ที่ได้รับ
          });
        } else if (response.status === "error") {
          // เพิ่มเงื่อนไขการตรวจสอบ
          Swal.fire({
            icon: "error",
            title: "เกิดข้อผิดพลาด",
            text: "Username หรือ Password ของท่านผิด",
            showConfirmButton: true,
          });
        } else {
          Swal.fire({
            icon: "error",
            title: "เกิดข้อผิดพลาด",
            text: response.message,
            showConfirmButton: false,
          });
        }
      },
      error: function (xhr, status, error) {
        console.log("Error: " + error); // ตรวจสอบข้อผิดพลาดในกรณีที่เกิดปัญหา
      },
    });
  });
});
