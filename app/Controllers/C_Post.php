<?php

namespace App\Controllers;
use CodeIgniter\I18n\Time;

class C_Post extends BaseController
{
    public function account_detail()
    {
        $this->M_users->save([
            'id'         => $this->request->getVar("user_id"),
            'username'   => $this->request->getVar("username"),
            'email'      => $this->request->getVar("email"),
            'fullname'   => $this->request->getVar("fullname"),
            'nohp'       => $this->request->getVar("nohp"),
            'location'   => $this->request->getVar("location"),
            'jabatan'    => $this->request->getVar("jabatan"),
            'updated_at' => Time::now('Asia/Jakarta', 'in_ID')
        ]);

        session()->setFlashdata('alert', 'Update-Success');
        return redirect()->to(previous_url());
    }
    
    public function update_profile()
    {

        $imageData = $_POST["profile"];

        if ($imageData) {
            $imageParts   = explode(",", $imageData);
            $decodedImage = base64_decode($imageParts[1]);
            $userId       = $this->request->getPost("user_id");
            $fileName     = uniqid('profile-') . '-' . $userId . '.png';
            $documentRoot = $this->request->getServer('DOCUMENT_ROOT');
            $filePath     = $documentRoot . '/assets/canvases/profile/' . $fileName;
            
            if(!empty($this->request->getPost('old_name'))){
                unlink($documentRoot . '/assets/canvases/profile/'. $this->request->getPost('old_name'));
            }

            file_put_contents($filePath, $decodedImage);
        }

        $this->M_users->save([
            'id'      =>  $userId,
            'profile' =>  $fileName,
        ]);
        
        return $this->response->setJSON(['fileName' => $fileName]);
    }

    public function hak_akses()
    {
        $this->M_users->save([
            "id"    => $this->request->getPost("user_id"),
            "rules" => $this->request->getPost("rules"),
        ]);
    }


    public function jenis_surat()
    {
        $this->M_jenis->save([
            "user_id"     => $this->request->getPost("user_id"),
            "jenis_surat" => $this->request->getPost("input")
        ]);
        
        if(!empty($this->M_jenis->findall())){

            return $this->M_jenis->builder()->where("user_id", $this->request->getPost("user_id"))->orderBy('id_jenissurat', 'desc')->get()->getResultArray()[0]["id_jenissurat"];
        
        } else {
        
            return "not found";
        
        }
    }


    public function data_surat_masuk()
    {

        $this->M_surat->save([
            "judul"         => "",
            "user_id"       => $this->request->getPost("user_id"),
            "no_surat"      => $this->request->getPost("nomor_surat"),
            "perihal"       => $this->request->getPost("perihal"),
            "asal_surat"    => $this->request->getPost("asal_surat"),
            "date"          => $this->request->getPost("tanggal_surat"),
            "message"       => $this->request->getPost("message"),
            "penerima"      => $this->request->getPost("penerima"),
            "type"          => $this->request->getPost("jenis_surat"),
            "jenis"         => $this->request->getPost("info_surat"),
            "is_read"       => "no",
            'updated_at'    => Time::now('Asia/Jakarta', 'in_ID')
        ]);

        $surat = $this->M_surat->builder()->where("user_id", $this->request->getPost("user_id"))->orderBy("id_surat","desc")->get()->getResultArray()[0];

        $this->M_riwayat->save([
            "judul"         => "",
            "user_id"       => $this->request->getPost("user_id"),
            "id_surat"      => $surat["id_surat"],
            "message"       => $this->request->getPost("message"),
            "penerima"      => $this->request->getPost("penerima"),
            "type"          => $this->request->getPost("jenis_surat"),
            "jenis"         => $this->request->getPost("info_surat"),
            "is_read"       => "no",
            'updated_at'    => Time::now('Asia/Jakarta', 'in_ID')
        ]);

        $userinfo = $this->M_users->find($this->request->getPost("user_id"));
        $userpenerima = $this->M_users->find($this->request->getPost("penerima"));
        
        
        if($this->request->getPost("info_surat") != "surat keluar"){
            $this->M_disposisi->save([
                "nomor_surat"      => $this->request->getPost("nomor_surat"),
                "jabatan_pengirim" => !empty($userinfo["jabatan"]) ? $userinfo["jabatan"] : "Tidak Diketahui",
                "jabatan_penerima" => !empty($userpenerima["jabatan"]) ? $userpenerima["jabatan"] : "Tidak Diketahui",
                "pengirim"         => !empty($userinfo["fullname"]) ? $userinfo["fullname"] : $userinfo["username"],
                "penerima"         => !empty($userpenerima["fullname"]) ? $userpenerima["fullname"] : $userpenerima["username"]
            ]);
        }
        $this->M_count_surat->save([
            "jenis"         => $this->request->getPost("info_surat"),
            'updated_at'    => Time::now('Asia/Jakarta', 'in_ID')
        ]);

        $this->M_notifikasi->save([
            "penerima"      => $this->request->getPost("penerima"),
            "pengirim"      => $this->request->getPost("user_id"),
            "jenis"         => $this->request->getPost("info_surat"),
            "id_surat"      => $surat["id_surat"],
            "is_read"       => "no"
        ]);

        return $surat["id_surat"];
    }

    public function edit_sifat_surat()
    {
        $dataedit = [
            "jenis_surat" => $this->request->getPost("editsurat")
        ];


        $this->M_jenis->update($this->request->getPost("sifatsuratid"), $dataedit);
    }

    public function upload_document()
    {
      $file = $this->request->getFile("file");
      if ($file->isValid() && !$file->hasMoved()) {

            // pindahkan file ke folder tujuan
            $newFileName = $file->getName();
            $file->move('./assets/document/', $newFileName);

            // kirim response ke client
            $response = [
                'status' => true,
                'message' => 'File uploaded successfully',
                'file_name' => $newFileName,
                'size'  => $file->getSize(),
            ];

            return $file->getName();
        }
    }

    public function data_document(){

        $informasisurat = $this->M_surat->find($this->request->getPost("id_surat"));


        $this->M_document->save([
            "id_surat"          => $this->request->getPost("id_surat"),
            "nomor_surat"       => $informasisurat["no_surat"],
            "perihal"           => $informasisurat["perihal"],
            "jenis_surat"       => $informasisurat["jenis"],
            "asal_surat"        => $informasisurat["asal_surat"],
            "tanggal_surat"     => $informasisurat["date"],
            "name_document"     => $this->request->getPost("name_document"),
            "penerima"          => $this->request->getPost("penerima"),
        ]);

        // $this->M_surat->save([
        //     "id_surat"      => $this->request->getPost("id_surat"),
        //     "is_ready"      => "siap",
        // ]);

        $riwayat =  $this->M_riwayat->where("id_surat", $this->request->getPost("id_surat"))->get()->getResultArray();

        $this->M_riwayat->save([
            "id_riwayat"    => $riwayat[0]["id_riwayat"],
            "is_ready"      => "siap",
        ]);
       
    }

    public function update_surat_siap(){
        $this->M_surat->save([
            "id_surat"      => $this->request->getPost("id_surat"),
            "is_ready"      => "siap",
        ]);

        $riwayat =  $this->M_riwayat->where("id_surat", $this->request->getPost("id_surat"))->get()->getResultArray();

        $notifikasi = $this->M_notifikasi->where("id_surat", $this->request->getPost("id_surat"))->get()->getResultArray();

        $this->M_notifikasi->save([
            "id_notifikasi"  => $notifikasi[0]["id_notifikasi"],
            "is_ready"       => "siap"
        ]);

        $this->M_riwayat->save([
            "id_riwayat"    => $riwayat[0]["id_riwayat"],
            "is_ready"      => "siap",
        ]);

    }

    public function update_read()
    {
        $surat = $this->M_surat->find($this->request->getPost("suratid"));

        if($surat["is_read"] == "no"){

            $data = [
                "is_read"   => "read",
            ];

            $this->M_surat->update($this->request->getPost("suratid"),$data);
        
            return "berhasil";
        }

    }


    public function update_read_notifikasi()
    {
        $notifikasi = $this->M_notifikasi->find($this->request->getPost("notifikasiid"));
        if($notifikasi["is_read"] == "no"){
            $this->M_notifikasi->save([
                "id_notifikasi" => $this->request->getPost("notifikasiid"),
                "is_read"       => "read"
            ]);
        }
    }


    public function update_read_all()
    {
        $notifikasi = $this->M_notifikasi->where("penerima", $this->request->getPost("userid"))->get()->getResultarray();
        foreach($notifikasi as $nof){
            if($nof["is_read"] == "no"){
                $this->M_notifikasi->save([
                    "id_notifikasi" => $nof["id_notifikasi"],
                    "is_read"       => "read"
                ]);
            }
        }

    }

    public function create_folder()
    {
        if(!empty($this->request->getPost("foldername"))){
            $this->M_foldername->save([
                "id_user"       => $this->request->getPost("userid"),
                "foldername"    => $this->request->getPost("foldername")
            ]);
        }
    }

    public function archive_upload_document()
    {
        $this->M_document->save([
            "id_document" => $this->request->getPost("docid"),
            "archive"     => $this->request->getPost("foldername")
        ]);
    }

    public function rename_folder()
    {
        $this->M_foldername->save([
            "id_foldername" => $this->request->getPost("folderid"),
            "foldername"    => $this->request->getPost("new_name"),
        ]);
    }

    public function cari_surat(){

        
        $input = $this->request->getVar("carisurat");


        
        $resultsearching = $this->M_document->builder()->like('nomor_surat', $input)->orlike('nomor_surat', $input)->get()->getResultArray();


        $data = [
            "active_menu"    => "archive",
            "surat"          => $this->M_surat->builder()->orderBy("id_surat","desc")->get()->getResultArray(),
            "riwayat"        => $this->M_riwayat->findall(),
            "notifikasi"     => $this->M_notifikasi->builder()->orderBy("id_notifikasi","desc")->get()->getResultArray(),
            "archive"        => $this->M_foldername->findall(),
            "document"       => $this->M_document->findall(),
            "active_submenu" => "",
            "resultsearching"  => $resultsearching
        ];

        return view('/content/searching.php', $data);
    }
}

