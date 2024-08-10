<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Document extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_document'   => ['type' => 'int', 'constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'id_surat'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'nomor_surat'   => ['type' => 'varchar', 'constraint' => 255],
            'perihal'       => ['type' => 'varchar', 'constraint' => 255],
            'asal_surat'    => ['type' => 'varchar', 'constraint' => 255],
            'jenis_surat'   => ['type' => 'varchar', 'constraint' => 255],
            'tanggal_surat' => ['type' => 'varchar', 'constraint' => 255],
            'name_document' => ['type' => 'varchar', 'constraint' => 255],
            'penerima'      => ['type' => 'varchar', 'constraint' => 255],
            'archive'       => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_document", TRUE);
        $this->forge->createTable("document", TRUE);
    }

    public function down()
    {
        //
    }
}
