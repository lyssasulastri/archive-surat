<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class archive extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_archive'    => ['type' => 'int','constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'id_surat'      => ['type' => 'int', 'constraint' => 11, 'unsigned' => true],
            'nama_folder'   => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_archive", TRUE);
        $this->forge->createTable("archive", TRUE);
    }

    public function down()
    {
        $this->forge->dropTable("archive", TRUE);
    }
}
