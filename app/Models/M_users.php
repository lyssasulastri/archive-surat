<?php

namespace App\Models;
use CodeIgniter\Model;

class M_users extends Model
{
    protected $table = 'users';
    protected $useTimestamps = true;
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'profile',
        'email',
        'username',
        'fullname',
        'nohp',
        'location',
        'jabatan',
        'rules',
        'created_at',
        'updated_at'
    ]; 

    protected $validationRules = [
        'username'  => 'required|max_length[50]',
        'nohp'      => 'required|regex_match[/^(\+62|62)?[\s-]?0?8[1-9]{1}\d{1}[\s-]?\d{4}[\s-]?\d{2,5}$/]',
        'email'     => 'required|valid_email',
        'fullname'  => 'required|is_unique[users.username]|max_length[70]',
        'location'  => 'required',
        'kecamatan' => 'required|max_length[50]',
    ];

    protected $validationMessages = [
        'username' => [
            'is_unique'  => 'Username Yang Anda Masukan Sudah Digunakan',
            'required'   => 'Bidang Username Tidak Boleh Kosong!',
            'max_length' => 'Username Yang Anda Masukan Terlalu Panjang',
        ],

        'nohp' => [
            'required'    => 'Bidang No Hp Tidak Boleh Kosong!',
            'regex_match' => 'Masukan Nomor Hp Yang Valid',
            'is_unique'   => 'No Hp Ini Sudah Digunakan!'
        ],

        'email' => [
            'required'    => 'Bidang Email Tidak Boleh Kosong!',
            'valid_email' => 'Masukan Email Yang Valid!'
        ],

        'fullname' => [
            'required'    => 'Bidang Fullname Tidak Boleh Kosong!',
            'is_unique'   => 'Nama Sudah Digunakan!',
            'max_length'  => 'Nama Anda Terlalu Panjang Max. 70 Kata'
        ],

        'location' => [
            'required' => 'Bidang Location Tidak Boleh Kosong!'
        ],

        'kecamatan' => [
            'required'   => 'Bidang kecamatan Tidak Boleh Kosong!',
            'max_length' => 'kecamatan Anda Terlalu Panjang Max. 50 Kata'
        ],
        
    ];

    
}