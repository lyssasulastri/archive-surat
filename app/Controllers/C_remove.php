<?php

namespace App\Controllers;
use CodeIgniter\I18n\Time;

class C_remove extends BaseController
{

    public function del_categori()
    {
        $this->M_jenis->delete($this->request->getPost("idcategori"));
    }

    public function delete_notifikasi()
    {

        $notifikasi = $this->M_notifikasi->where("penerima", $this->request->getPost("userid"))->get()->getResultarray();
        foreach($notifikasi as $nof){
            $this->M_notifikasi->delete($nof["id_notifikasi"]);
        }
    }

    public function delete_document_archive(){
        $this->M_document->save([
            "id_document" => $this->request->getPost("documentid"),
            "archive"     => 0
        ]);
    }

    public function delete_foldername()
    {
        $this->M_foldername->delete($this->request->getPost("folderid"));
    }

    public function delete_surat_surat()
    {
        $this->M_surat->delete($this->request->getPost("suratid"));
    }

    public function delete_riwayat_surat()
    {
        $this->M_riwayat->delete($this->request->getPost("riwayatid"));
    }

    public function block_user()
    {
        $this->M_users->delete($this->request->getPost("user_id"));
    }

    public function delete_disposisi()
    {
        $this->M_disposisi->delete($this->request->getPost("getiddisposisi"));
    }
}

