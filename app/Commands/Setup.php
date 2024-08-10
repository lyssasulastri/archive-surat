<?php

namespace App\Commands;


use CodeIgniter\CLI\BaseCommand;
use CodeIgniter\CLI\CLI;
use CodeIgniter\Config\Factories;
use CodeIgniter\Database\SQLite3\Connection;
use CodeIgniter\Model;
use Config\Services;
use Config\Database;
use Throwable;
use ReflectionMethod;
use App\Models\M_riwayat;

class Setup extends BaseCommand
{
    /**
     * The Command's Group
     *
     * @var string
     */
    protected $group = 'Bitlab';

    /**
     * The Command's Name
     *
     * @var string
     */
    protected $name = 'debug';

    /**
     * The Command's Description
     *
     * @var string
     */
    protected $description = 'Mengatur settingan Ulang Database Dan Configuration Application';

    /**
     * The Command's Usage
     *
     * @var string
     */
    protected $usage = 'debug [arguments] [options]';

    /**
     * The Command's Arguments
     *
     * @var array
     */
    protected $arguments = [];

    /**
     * The Command's Options
     *
     * @var array
     */
    protected $options = [];

    /**
     * Actually execute a command.
     *
     * @param array $params
     */
    public function run(array $params)
    {
        $M_riwayat = new M_riwayat();
        $riwayat = $M_riwayat->where("id_surat", 2)->get()->getResultArray();
        d($riwayat);
        dd($riwayat[0]["id_riwayat"]);
        // foreach ($methods as $method) {
        //     $reflection = new ReflectionMethod($M_suratmasuk, $method);
        //     $description = $reflection->getDocComment();
        //     // d($method, $description);
        // }
    }
}
