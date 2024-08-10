<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class JenisSurat extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_jenissurat' => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'user_id'       => ['type' => 'varchar', 'constraint' => 255],
            'jenis_surat'   => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey('id_jenissurat', true);
        $this->forge->createTable('jenis_surat', true);
    }

    public function down()
    {
        $this->forge->dropTable('jenis_surat', true);
    }
}
