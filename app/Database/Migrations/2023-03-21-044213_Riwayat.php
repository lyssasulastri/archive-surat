<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Riwayat extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_riwayat'    => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'user_id'       => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'id_surat'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'judul'         => ['type' => 'varchar', 'constraint' => 255],
            'message'       => ['type' => 'varchar', 'constraint' => 255],
            'is_read'       => ['type' => 'varchar', 'constraint' => 255],
            'type'          => ['type' => 'varchar', 'constraint' => 255],
            'jenis'         => ['type' => 'varchar', 'constraint' => 255],
            'penerima'      => ['type' => 'varchar', 'constraint' => 255],
            'is_ready'      => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_riwayat", TRUE);
        $this->forge->createTable("riwayat", TRUE);
    }

    public function down()
    {
        $this->forge->dropTable("riwayat", TRUE);
    }
}
