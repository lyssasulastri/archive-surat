<?php

namespace App\Models;

use CodeIgniter\Model;

class M_document extends Model
{
    protected $table            = 'document';
    protected $primaryKey       = 'id_document';
    protected $allowedFields    = [
        "id_document",
        "id_surat",
        "nomor_surat",
        "perihal",
        "asal_surat",
        "jenis_surat",
        "tanggal_surat",
        "name_document",
        "penerima",
        "archive"
    ];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // // Validation
    // protected $validationRules      = [];
    // protected $validationMessages   = [];
    // protected $skipValidation       = false;
    // protected $cleanValidationRules = true;

    // // Callbacks
    // protected $allowCallbacks = true;
    // protected $beforeInsert   = [];
    // protected $afterInsert    = [];
    // protected $beforeUpdate   = [];
    // protected $afterUpdate    = [];
    // protected $beforeFind     = [];
    // protected $afterFind      = [];
    // protected $beforeDelete   = [];
    // protected $afterDelete    = [];
}
