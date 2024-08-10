<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class FolderName extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id_foldername' => ['type' => 'int','constraint' => 11, 'unsigned' => true, 'auto_increment' => true],
            'id_user'       => ['type' => 'int','constraint' => 11, 'unsigned' => true],
            'foldername'    => ['type' => 'varchar', 'constraint' => 255],
            'created_at'    => ['type' => 'datetime', 'null' => true],
            'updated_at'    => ['type' => 'datetime', 'null' => true],
            'deleted_at'    => ['type' => 'datetime', 'null' => true],
        ]);

        $this->forge->addKey("id_foldername", TRUE);
        $this->forge->createTable("foldername", TRUE);
    }

    public function down()
    {
        $this->forge->dropTable("foldername", TRUE);
    }
}
