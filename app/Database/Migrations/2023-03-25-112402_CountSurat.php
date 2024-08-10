<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CountSurat extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_count'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'jenis'         => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_count", TRUE);
        $this->forge->createTable("count_surat", TRUE);
    }

    public function down()
    {
        $this->forge->dropTable("count_surat", TRUE);
    }
}
