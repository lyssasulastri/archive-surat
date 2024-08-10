<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Controllers\BaseController;
use App\Models\M_disposisi;
// use App\Models\M_surat;
// use App\Models\M_jenis;

use \Dompdf\Dompdf;

class C_Dashboard extends BaseController
{
    public function dashboard()
    {
        // search
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $kata = $this->M_disposisi->search($keyword);
        } else {
            $kata = $this->M_disposisi;
        }

        // range date
        $startDate = $this->request->getPost('start_date');
        $endDate   = $this->request->getPost('end_date');

        $modelDisposisi = new M_disposisi();

        $dataFilter = $modelDisposisi->filterPeriode($startDate, $endDate);

        helper('form');

        // data
        $disposisi = [
            "nomor_surat"       => "",
            "updated_at"        => "",
            "jabatan_pengirim"  => "",
            "sifat_surat"       => "",
        ];

        $data = [
            "active_menu"    => "dashboard",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "active_submenu" => "",
            "disposisi"      => $this->M_disposisi->findAll(),
            "disposisi_first"=> ($data = $this->M_disposisi->builder()->orderBy("id_disposisi", "DESC")->get()->getResultArray()) && count($data) > 0 ? $data[0] : $disposisi,
            "count_surat"    => $this->M_count_surat->findall(),
        ];
        return view('/content/dashboard.php', $data);
        
    }

    public function filter()
    {
        $model = new M_disposisi();

        // Ambil data berdasarkan range tanggal yang dikirim dari form
        $startDate = $this->request->getPost('start_date');
        $endDate = $this->request->getPost('end_date');

        $data['disposisi'] = $model->filterPeriode($startDate, $endDate);

        // Load library dompdf
        $dompdf = new Dompdf();
        $dompdf->loadHtml(view('/content/printer/p_view_filter.php', $data));
        $dompdf->setPaper('A4', 'landscape');

        // Render halaman HTML ke PDF
        $dompdf->render();

        // Tampilkan PDF dalam browser
        $dompdf->stream('data.pdf', ['Attachment' => 0]);

        exit();
    }


   
    public function surat_masuk()
    {
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $kata = $this->M_surat->search($keyword);
        } else {
            $kata = $this->M_surat;
        }
        
        $data = [
            "active_menu"    => "persuratan",
            "active_submenu" => "suratmasuk",
            "archive"        => $this->M_foldername->findall(),
            "user"           => $this->M_users->findall(),
            "jenis_surat"    => $this->M_jenis->findall(),
            "surat"          => $kata->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
        ];

        return view('/content/surat-masuk.php', $data);
    }
    public function surat_keluar()
    {
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $kata = $this->M_surat->search($keyword);
        } else {
            $kata = $this->M_surat;
        }

        $auth = service('authentication');
        
        $data = [
            "active_menu"    => "persuratan",
            "active_submenu" => "suratkeluar",
            "archive"        => $this->M_foldername->findall(),
            "user"           => $this->M_users->findall(),
            "jenis_surat"    => $this->M_jenis->findall(),
            "surat"          => $kata->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
        ];

        // $data["user"] = $auth->user();
        return view('/content/surat-keluar.php', $data);
    }

    public function form_balasan()
    {
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $kata = $this->M_surat->search($keyword);
        } else {
            $kata = $this->M_surat;
        }
        
        $data = [
            "active_menu"    => "persuratan",
            "active_submenu" => "suratkeluar",
            "archive"        => $this->M_foldername->findall(),
            "user"           => $this->M_users->findall(),
            "jenis_surat"    => $this->M_jenis->findall(),
            "surat"          => $kata->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
        ];
        return view('/content/surat-keluar.php', $data);
    }

    // pengaturan
    public function profile()
    {
        $data = [
            "active_menu"    => "pengaturan",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "active_submenu" => "myprofile",
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "validation"     => \Config\Services::validation(),
        ];
        return view('/content/pengaturan/profile.php', $data);
    }

    public function petugas()
    {
        $data = [
            "active_menu"    => "pengaturan",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "active_submenu" => "petugas",
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "user"           => $this->M_users->findall(),
        ];
        return view('/content/pengaturan/petugas.php', $data);
    }
    public function jenis()
    {
        $data = [
            "active_menu"    => "pengaturan",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "active_submenu" => "jenis_surat",
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "jenis_surat"    => $this->M_jenis->findall()
        ];
        return view('/content/pengaturan/jenis.php', $data);
    }
    public function archive()
    {
        $data = [
            "active_menu"    => "archive",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "archive"        => $this->M_foldername->findall(),
            "document"       => $this->M_document->findall(),
            "active_submenu" => "",
        ];
        return view('/content/archive.php', $data);
    }
    
    public function terkirim()
    {

        $riwayat = $this->M_riwayat->findall();

        if(!empty($riwayat)){
            foreach($riwayat as $ri){
                if($ri["is_read"] == "no"){
                    $this->M_riwayat->save([
                        "id_riwayat" => $ri["id_riwayat"],
                        "is_read"    => "read"
                    ]);
                }
            }
        }

  
        $data = [
            "active_menu"    => "persuratan",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->builder()->orderBy("id_riwayat", "desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
            "archive"        => $this->M_foldername->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "active_submenu" => "terkirim",
        ];
        return view('/content/terkirim.php', $data);
    }

    public function pengiriman()
    {
        // Ambil data $user dari database atau sumber lainnya
        $data["username"] = $this->M_users->findall(); // Misalnya menggunakan model UserModel

        // Muat view dan kirimkan data $user ke view
        return view('/sub-content', $data);
    }

    public function printpdf()
   {
        $dompdf = new Dompdf();
        $disposisi = [
        "nomor_surat"       => "",
        "updated_at"        => "",
        "jabatan_pengirim"  => ""
        ];

        $data = [
            "active_menu"    => "dashboard",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "active_submenu" => "",
            "disposisi"      => $this->M_disposisi->findAll(),
            "disposisi_first"=> ($data = $this->M_disposisi->builder()->orderBy("id_disposisi", "DESC")->get()->getResultArray()) && count($data) > 0 ? $data[0] : $disposisi,
            "count_surat"    => $this->M_count_surat->findall(),
        ];

        $html = view('/content/printer/p_view.php', $data);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();
        // $dompdf->stream(); // download file
        $dompdf->stream('data.pdf', array(
            "Attachment" => false
        ));

        exit();
   }

   public function printpdf_sm()
   {
        $dompdf = new Dompdf();
        $data = [
            "active_menu"    => "persuratan",
            "active_submenu" => "suratmasuk",
            "archive"        => $this->M_foldername->findall(),
            "user"           => $this->M_users->findall(),
            "jenis_surat"    => $this->M_jenis->findall(),
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
        ];

        $html = view('/content/printer/p_view_sm.php', $data);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();
        // $dompdf->stream(); // download file
        $dompdf->stream('data.pdf', array(
            "Attachment" => false
        ));

        exit();
   }

   public function printpdf_sk()
   {
        $dompdf = new Dompdf();
        $data = [
            "active_menu"    => "persuratan",
            "archive"        => $this->M_foldername->findall(),
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "document"       => $this->M_document->findall(),
            "active_submenu" => "suratkeluar",
        ];

        $html = view('/content/printer/p_view_sk.php', $data);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();
        // $dompdf->stream(); // download file
        $dompdf->stream('data.pdf', array(
            "Attachment" => false
        ));

        exit();
   }
}