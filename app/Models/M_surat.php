<?php

namespace App\Models;
use CodeIgniter\Model;

class M_surat extends Model
{
    protected $table = 'surat';
    protected $useTimestamps = true;
    protected $primaryKey = 'id_surat';
    protected $allowedFields = [
        'id_surat',
        'user_id',
        'no_surat',
        'perihal',
        'asal_surat',
        'date',
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

    public function search($keyword) {
        $builder = $this->table('surat');
        $builder->like('updated_at', $keyword);
        $builder->orLike('created_at', $keyword);
        $builder->orLike('no_surat', $keyword);
        $builder->orLike('judul', $keyword);
        $builder->orLike('penerima', $keyword);
        $builder->orLike('id_surat', $keyword);
        $builder->orLike('user_id', $keyword);
        $builder->orLike('perihal', $keyword);
        $builder->orLike('is_ready', $keyword);
        $builder->orLike('is_read', $keyword);
        $builder->orLike('type', $keyword);
        $builder->orLike('jenis', $keyword);
        $builder->orLike('message', $keyword);
        $builder->orLike('date', $keyword);
        $builder->orLike('asal_surat', $keyword);
        return $builder;
    }

}