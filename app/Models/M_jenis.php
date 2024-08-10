<?php

namespace App\Models;
use CodeIgniter\Model;

class M_jenis extends Model
{
    protected $table = 'jenis_surat';
    protected $useTimestamps = true;
    protected $primaryKey = 'id_jenissurat';
    protected $allowedFields = [
        'id_jenissurat',
        'user_id',
        'jenis_surat',
        'created_at',
        'created_at',
        'updated_at'
    ]; 
    
    protected $validationRules = [
        'jenis_surat'  => 'required|max_length[50]',
    ];

    protected $validationMessages = [
        'jenis_surat'  => [
            'required'   => 'Bidang Jenis Surat Tidak Boleh Kosong!',
        ],
    ];
}