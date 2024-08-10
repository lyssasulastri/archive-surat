<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class AuthGroups extends Seeder
{
    public function run()
    {
        $data = [
            [
                'name'         => 'login',
                'description'  => 'user yang sudah login',
            ],
        ];

        $this->db->table('auth_groups')->insertBatch($data);
    }
}
