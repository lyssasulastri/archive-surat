<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Users extends Seeder
{
    public function run()
    {
        $data = [
            [
                'profile'        => '',
                'email'          => 'admin@gmail.com',
                'username'       => 'admin',
                'rules'          => 'admin',
                'active'         => 1,
                'password_hash'  => '$2y$10$/m2rNouRSu5UlxzkCLYHC.GXaZ9WnHi/AbF4eAs3L2TVkoUEpacW6',
            ],
            [
                'profile'        => '',
                'email'          => 'user@gmail.com',
                'username'       => 'user',
                'rules'          => '',
                'active'         => 1,
                'password_hash'  => '$2y$10$/m2rNouRSu5UlxzkCLYHC.GXaZ9WnHi/AbF4eAs3L2TVkoUEpacW6',
            ],
        ];

        $this->db->table('users')->insertBatch($data);
    }
}
