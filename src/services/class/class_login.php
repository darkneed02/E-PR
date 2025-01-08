<?php
    /***
     * * เช็ค username และ password
     */
    function check_user_login($conn,$username,$password){
        $query = "select * from tb_user where username =$1 and password = $2";
        $result = pg_query_params($conn,$query,array(
            $username,$password
        ));

        return $result;
    }

    /***
     * * ทำการเข้าเงื่อนไขแต่สิทธิ์ที่สามารถเข้าเมนูได้ 
     */
    function menus($conn,$userid){
        $query = "select r.role_id, rm.role_name_th, rm.icon, rm.url , rm.role_type
        from tb_role_ajustement r
        join tb_role_master rm on rm.role_id = r.role_id
        where r.user_id =  '$userid' and rm.is_deleted = 'f'
        group by r.role_id,rm.role_name_th, rm.icon, rm.url,rm.role_id,rm.role_type
        order by rm.role_id asc;";
        return pg_query($conn,$query);
    }


    /***
     * * ทำการแสดงรายการของทั้งหมดเฉพาะ admin เท่านั้น
    */
    function menu_all($conn){
        $query = "
        select * FROM tb_role_master 
        where is_deleted = 'f' and  role_type ='PR'
        order by 
            role_id 
    ";
    return pg_query($conn, $query);
    }

?>