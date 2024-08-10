<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Controllers\BaseController;

use \Dompdf\Dompdf;

class C_Filter extends BaseController
{
   public function index() 
   {
      return view('/content/printer/view_filter.php');
   }
   public function filter()
   {
      helper('form');
      
      $data = [
         "active_menu"    => "dashboard",
         "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
         "riwayat"        => $this->M_riwayat->findall(),
         "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
         "active_submenu" => "",
         "disposisi"      => $this->M_disposisi->findAll(),
         "count_surat"    => $this->M_count_surat->findall(),
     ];
    return view('/content/printer/view_filter.php', $data);
   }
}