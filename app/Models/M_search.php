<?php

namespace App\Models;

use CodeIgniter\Model;

class M_search extends Model
{
    protected $table = 'disposisi';
    protected $useTimestamps = true;
    protected $primaryKey = 'id_disposisi';
    protected $allowedFields = [
        'id_disposisi',
        'nomor_surat',
        'jabatan_pengirim',
        'jabatan_penerima',
        'pengirim',
        'penerima',
        'created_at',
        'created_at',
        'updated_at',
        'jenis_surat'
    ]; 
    
    function search($keyword) {
        $db = \Config\Database::connect();
        $builder = $this->table('disposisi');
        $builder->like('updated_at', $keyword);
        $builder->orLike('created_at', $keyword);
        $builder->orLike('nomor_surat', $keyword);
        $builder->orLike('jabatan_pengirim', $keyword);
        $builder->orLike('jabatan_penerima', $keyword);
        $builder->orLike('pengirim', $keyword);
        $builder->orLike('penerima', $keyword);

        $query = $builder->get();

        return $query->getResult();
    }

}
