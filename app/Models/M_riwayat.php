<?php

namespace App\Models;

use CodeIgniter\Model;

class M_riwayat extends Model
{
    protected $table            = 'riwayat';
    protected $primaryKey       = 'id_riwayat';
    protected $allowedFields    = [
        'id_riwayat',
        'user_id',
        'id_surat',
        'judul',
        'message',
        'is_read',
        'jenis',
        'type',
        'is_ready',
        'penerima',
        'created_at',
        'created_at',
        'updated_at'
    ];

    // Dates
    protected $useTimestamps = true;

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;

}
