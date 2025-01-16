<?php
    function view_profile($conn, $user_id) {
        $data = getprofile($conn, $user_id);
    
        if ($data) {
            return [
                'firstname' => $data['firstname'] ?? "",
                'lastname' => $data['lastname'] ?? "",
                'department_name' => $data['department_name'] ?? "",
                'position_name' => $data['position_name'] ?? "",
                'level' => $data['level'] ?? "",
                'branch' => $data['branch'] ?? "",
                'province' => $data['province'] ?? "",
                'zone_raot' => $data['zone_raot'] ?? "",
            ];
        }
        return [];
    }
?>