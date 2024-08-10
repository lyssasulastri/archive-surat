<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Disposisi extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_disposisi'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'nomor_surat'       => ['type' => 'varchar', 'constraint' => 255],
            'jabatan_pengirim'  => ['type' => 'varchar', 'constraint' => 255],
            'jabatan_penerima'  => ['type' => 'varchar', 'constraint' => 255],
            'pengirim'          => ['type' => 'varchar', 'constraint' => 255],
            'penerima'          => ['type' => 'varchar', 'constraint' => 255],
            'created_at'        => ['type' => 'datetime', 'null' => true],
            'updated_at'        => ['type' => 'datetime', 'null' => true],
            'deleted_at'        => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey('id_disposisi', true);
        $this->forge->createTable('disposisi', true);    
    }

    public function down()
    {
        $this->forge->dropTable("disposisi", true);
    }
}
