<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class RecentActivity extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_recent'    => ['type' => 'int','constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'judul'        => ['type' => 'varchar', 'constraint' => 255],
            'description'  => ['type' => 'varchar', 'constraint' => 255],
            'jenis'        => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_recent", TRUE);
        $this->forge->createTable("recent_activity");
    }

    public function down()
    {
        $this->forge->dropTable("recent_activity", TRUE);
    }
}
