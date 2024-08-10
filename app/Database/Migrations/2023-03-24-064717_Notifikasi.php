<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Notifikasi extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_notifikasi' => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'id_surat'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'penerima'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'pengirim'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'jenis'         => ['type' => 'varchar', 'constraint' => 255],
            'is_read'       => ['type' => 'varchar', 'constraint' => 255],
            'is_ready'      => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_notifikasi", TRUE);
        $this->forge->createTable("notifikasi", TRUE);
    }

    public function down()
    {
        $this->forge->dropTable("notifikasi", TRUE);
    }
}
