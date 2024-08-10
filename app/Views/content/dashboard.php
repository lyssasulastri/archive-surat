<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="//cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css" />
        <link href="../../../public/assets/dataTables/datatables.min.css" rel="stylesheet"/>
    </head>
</html>

<div class="container">
    <!-- Title -->
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Dashboard Berisi Informasi Data Analisis</div>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col">
            <div class="wrapper-analisa-disposisi">
                <div class="card-disposisi">
                    <div class="header">Nomor Surat Masuk</div>
                    <div class="body">
                        <?= $disposisi_first["nomor_surat"] ?>
                    </div>
                </div>
                <div class="card-disposisi">
                    <div class="header">Tanggal Surat Masuk</div>
                    <div class="body">
                        <?= $disposisi_first["updated_at"] ?>
                    </div>
                </div>
                <div class="card-disposisi">
                    <div class="header">Asal Surat Masuk</div>
                    <div class="body">
                        <?= $disposisi_first["jabatan_pengirim"] !== "Tidak Diketahui" ? $disposisi_first["jabatan_pengirim"] : $disposisi_first["pengirim"] ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col">
            <div class="wrapper-card-disposisi">
                <div class="header">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Disposisi</a>
                        </li>
                    </ul>

                </div>
                <div class="body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Jabatan Pengirim</th>
                                <th scope="col">Pengirim</th>
                                <th scope="col">Tgl. Disposisi</th>
                                <th scope="col">Jabatan Penerima</th>
                                <th scope="col">Penerima</th>
                                <th scope="col">Status</th>
                                <th scope="col">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach($disposisi as $dpp): ?>
                                <tr>
                                    <td scope="row"><?= $i++ ?></td>
                                    <td><span class="badge text-bg-primary"><?= $dpp["jabatan_pengirim"] ?></span></td>
                                    <td><?= $dpp["pengirim"] ?></td>
                                    <td><?= $dpp["updated_at"] ?></td>
                                    <td><span class="badge text-bg-info"><?= $dpp["jabatan_penerima"] ?></span></td>
                                    <td><?= $dpp["penerima"] ?></td>
                                    <td><span class="badge text-bg-warning">Disposisi</span></td>
                                    <td><a iddisposisi="<?= $dpp["id_disposisi"] ?>" class="badge text-bg-danger delete-disposisi" style="cursor: pointer;">Delete</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Card Report -->
    <div class="row mb-3">
        <div class="col">
            <div class="wrapper-card-disposisi">
                <div class="header" style="display: flex; flex-direction: row; justify-content: space-between;">
                    <ul class="nav nav-tabs" style="display: flex; flex-direction: row;">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="">Laporan Catatan</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-primary" style="margin: 0 10px;" aria-current="page" onclick="window.open('<?php echo site_url('C_Dashboard/printpdf') ?>', 'blank')" href=""><b>Print</b></a>
                        </li>
                    </ul>
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <form action="<?php echo site_url('C_Dashboard/filter') ?>" method="post" target="_blank" >
                                <div class="box-search" style="display: flex; flex-direction: row; ">
                                    tgl awal<input type="date" class="form-control" name="start_date" style="margin-right: 10px;" />
                                    tgl akhir<input type="date" class="form-control" name="end_date" />
                                    <button class="btn btn-primary" aria-current="page"><b>Filter</b></button>
                                </div>
                            </form>
                        </li>  
                    </ul>
                    <ul class="nav nav-tabs">
                    <li class="nav-item col-20" style="display: flex;" >
                            <i class='bx bx-archive'></i>
                            <form method="post" action="">
                                <div class="box-search" style="display: flex; flex-direction: row;">
                                    <input type="text" placeholder="Search" class="form-control" name="keyword" style="margin: 0 10px;" />
                                    <button type="submit" class="btn btn-primary"><b>Cari</b></button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    <?php if (!empty($disposisi)): ?>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Jabatan Pengirim</th>
                                    <th scope="col">Pengirim</th>
                                    <th scope="col">Waktu</th>
                                    <th scope="col">Jabatan Penerima</th>
                                    <th scope="col">Penerima</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Jenis Surat</th>
                                    <th scope="col">Sifat Surat</th>
                                    <th scope="col">No. Surat</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1; ?>
                                <?php foreach($disposisi as $dpp): ?>
                                        <tr>
                                            <td scope="row"><?= $i++ ?></td>
                                            <td><span class="badge text-bg-primary"><?= $dpp["jabatan_pengirim"] ?></span></td>
                                            <td><?= $dpp["pengirim"] ?></td>
                                            <td><?= $dpp["updated_at"] ?></td>
                                            <td><span class="badge text-bg-info"><?= $dpp["jabatan_penerima"] ?></span></td>
                                            <td><?= $dpp["penerima"] ?></td>
                                            <td><span class="badge text-bg-warning">Disposisi</span></td>
                                            <td><span class="badge text-bg-secondary">Surat Masuk</span></td>
                                            <td><span class="badge text-bg-secondary">Biasa</span></td>
                                            <td><?= $dpp["nomor_surat"] ?></td>
                                        </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <?php  
    
    $surat_masuk_januari   = 0;
    $surat_masuk_febuary   = 0;
    $surat_masuk_maret     = 0;
    $surat_masuk_april     = 0;
    $surat_masuk_mei       = 0;
    $surat_masuk_juni      = 0;
    $surat_masuk_juli      = 0;
    $surat_masuk_agustus   = 0;
    $surat_masuk_september = 0;
    $surat_masuk_oktober   = 0;
    $surat_masuk_november  = 0;
    $surat_masuk_desember  = 0;

    // suratkeluar
    $surat_keluar_januari   = 0;
    $surat_keluar_febuary   = 0;
    $surat_keluar_maret     = 0;
    $surat_keluar_april     = 0;
    $surat_keluar_mei       = 0;
    $surat_keluar_juni      = 0;
    $surat_keluar_juli      = 0;
    $surat_keluar_agustus   = 0;
    $surat_keluar_september = 0;
    $surat_keluar_oktober   = 0;
    $surat_keluar_november  = 0;
    $surat_keluar_desember  = 0;

    foreach($count_surat as $cs){

        $bulan = substr($cs["updated_at"], 5, 2);

        if($cs["jenis"] == "surat masuk"){
            if($bulan == "01"){
                $surat_masuk_januari++;
            } elseif($bulan == "02"){
                $surat_masuk_febuary++;
            } elseif($bulan == "03"){
                $surat_masuk_maret++;
            } elseif($bulan == "04"){
                $surat_masuk_april++;
            } elseif($bulan == "05"){
                $surat_masuk_mei++;
            } elseif($bulan == "06"){
                $surat_masuk_juni++;
            } elseif($bulan == "07"){
                $surat_masuk_juli++;
            } elseif($bulan == "08"){
                $surat_masuk_agustus++;
            } elseif($bulan == "09"){
                $surat_masuk_september++;
            } elseif($bulan == "10"){
                $surat_masuk_oktober++;
            } elseif($bulan == "11"){
                $surat_masuk_november++;
            } elseif($bulan == "12"){
                $surat_masuk_desember++;
            }
        } elseif($cs["jenis"] == "surat keluar"){
                        if($bulan == "01"){
                $surat_keluar_januari++;
            } elseif($bulan == "02"){
                $surat_keluar_febuary++;
            } elseif($bulan == "03"){
                $surat_keluar_maret++;
            } elseif($bulan == "04"){
                $surat_keluar_april++;
            } elseif($bulan == "05"){
                $surat_keluar_mei++;
            } elseif($bulan == "06"){
                $surat_keluar_juni++;
            } elseif($bulan == "07"){
                $surat_keluar_juli++;
            } elseif($bulan == "08"){
                $surat_keluar_agustus++;
            } elseif($bulan == "09"){
                $surat_keluar_september++;
            } elseif($bulan == "10"){
                $surat_keluar_oktober++;
            } elseif($bulan == "11"){
                $surat_keluar_november++;
            } elseif($bulan == "12"){
                $surat_keluar_desember++;
            }
        }
    }


    $surat_masuk_senin  = 0;
    $surat_masuk_selasa = 0;
    $surat_masuk_rabu   = 0;
    $surat_masuk_kamis  = 0;
    $surat_masuk_jumat  = 0;
    $surat_masuk_sabtu  = 0;
    $surat_masuk_minggu = 0;

    $surat_keluar_senin  = 0;
    $surat_keluar_selasa = 0;
    $surat_keluar_rabu   = 0;
    $surat_keluar_kamis  = 0;
    $surat_keluar_jumat  = 0;
    $surat_keluar_sabtu  = 0;
    $surat_keluar_minggu = 0;

    foreach($count_surat as $cs){

        $tanggal = substr($cs["updated_at"], 0, 10);

        $hari = date("l", strtotime($tanggal));

        if($cs["jenis"] == "surat masuk"){
            if($hari == "Sunday"){
                $surat_masuk_minggu++;
            } elseif($hari == "Monday"){
                $surat_masuk_senin++;
            } elseif($hari == "Tuesday"){
                $surat_masuk_selasa++;
            } elseif($hari == "Wednesday"){
                $surat_masuk_rabu++;
            } elseif($hari == "Thursday"){
                $surat_masuk_kamis++;
            } elseif($hari == "Friday"){
                $surat_masuk_jumat++;
            } elseif($hari == "Saturday"){
                $surat_masuk_sabtu++;
            } 
        } elseif($cs["jenis"] == "surat keluar"){
            if($hari == "Sunday"){
                $surat_keluar_minggu++;
            } elseif($hari == "Monday"){
                $surat_keluar_senin++;
            } elseif($hari == "Tuesday"){
                $surat_keluar_selasa++;
            } elseif($hari == "Wednesday"){
                $surat_keluar_rabu++;
            } elseif($hari == "Thursday"){
                $surat_keluar_kamis++;
            } elseif($hari == "Friday"){
                $surat_keluar_jumat++;
            } elseif($hari == "Saturday"){
                $surat_keluar_sabtu++;
            } 
        }
    }


    $surat_masuk_tahun_2023 = 0;
    $surat_masuk_tahun_2024 = 0;
    $surat_masuk_tahun_2025 = 0;
    $surat_masuk_tahun_2026 = 0;
    $surat_masuk_tahun_2027 = 0;

    $surat_keluar_tahun_2023 = 0;
    $surat_keluar_tahun_2024 = 0;
    $surat_keluar_tahun_2025 = 0;
    $surat_keluar_tahun_2026 = 0;
    $surat_keluar_tahun_2027 = 0;

    foreach($count_surat as $cs){

        $tahun = substr($cs["updated_at"], 0, 4);

        if($cs["jenis"] == "surat masuk"){
            if($tahun == "2023"){
                $surat_masuk_tahun_2023++;
            } elseif($tahun == "2024"){
                $surat_masuk_tahun_2024++;
            } elseif($tahun == "2025"){
                $surat_masuk_tahun_2025++;
            } elseif($tahun == "2026"){
                $surat_masuk_tahun_2026++;
            } elseif($tahun == "2027"){
                $surat_masuk_tahun_2027++;
            }

        } elseif($cs["jenis"] == "surat keluar"){
            if($tahun == "2023"){
                $surat_keluar_tahun_2023++;
            } elseif($tahun == "2024"){
                $surat_keluar_tahun_2024++;
            } elseif($tahun == "2025"){
                $surat_keluar_tahun_2025++;
            } elseif($tahun == "2026"){
                $surat_keluar_tahun_2026++;
            } elseif($tahun == "2027"){
                $surat_keluar_tahun_2027++;
            }
        }
    }

    ?>

    <div 
    surat_masuk_januari     ="<?= $surat_masuk_januari ?>"
    surat_masuk_febuary     ="<?= $surat_masuk_febuary ?>"
    surat_masuk_maret       ="<?= $surat_masuk_maret ?>"
    surat_masuk_april       ="<?= $surat_masuk_april ?>"
    surat_masuk_mei         ="<?= $surat_masuk_mei ?>"
    surat_masuk_juni        ="<?= $surat_masuk_juni ?>"
    surat_masuk_juli        ="<?= $surat_masuk_juli ?>"
    surat_masuk_agustus     ="<?= $surat_masuk_agustus ?>"
    surat_masuk_september   ="<?= $surat_masuk_september ?>"
    surat_masuk_oktober     ="<?= $surat_masuk_oktober ?>"
    surat_masuk_november    ="<?= $surat_masuk_november ?>"
    surat_masuk_desember    ="<?= $surat_masuk_desember ?>"

    surat_keluar_januari     ="<?= $surat_keluar_januari ?>"
    surat_keluar_febuary     ="<?= $surat_keluar_febuary ?>"
    surat_keluar_maret       ="<?= $surat_keluar_maret ?>"
    surat_keluar_april       ="<?= $surat_keluar_april ?>"
    surat_keluar_mei         ="<?= $surat_keluar_mei ?>"
    surat_keluar_juni        ="<?= $surat_keluar_juni ?>"
    surat_keluar_juli        ="<?= $surat_keluar_juli ?>"
    surat_keluar_agustus     ="<?= $surat_keluar_agustus ?>"
    surat_keluar_september   ="<?= $surat_keluar_september ?>"
    surat_keluar_oktober     ="<?= $surat_keluar_oktober ?>"
    surat_keluar_november    ="<?= $surat_keluar_november ?>"
    surat_keluar_desember    ="<?= $surat_keluar_desember ?>"

    surat_masuk_senin   = "<?= $surat_masuk_senin ?>"
    surat_masuk_selasa  = "<?= $surat_masuk_selasa ?>"
    surat_masuk_rabu    = "<?= $surat_masuk_rabu ?>"
    surat_masuk_kamis   = "<?= $surat_masuk_kamis ?>"
    surat_masuk_jumat   = "<?= $surat_masuk_jumat ?>"
    surat_masuk_sabtu   = "<?= $surat_masuk_sabtu ?>"
    surat_masuk_minggu  = "<?= $surat_masuk_minggu ?>"

    surat_keluar_senin   = "<?= $surat_keluar_senin ?>"
    surat_keluar_selasa  = "<?= $surat_keluar_selasa ?>"
    surat_keluar_rabu    = "<?= $surat_keluar_rabu ?>"
    surat_keluar_kamis   = "<?= $surat_keluar_kamis ?>"
    surat_keluar_jumat   = "<?= $surat_keluar_jumat ?>"
    surat_keluar_sabtu   = "<?= $surat_keluar_sabtu ?>"
    surat_keluar_minggu  = "<?= $surat_keluar_minggu ?>"
    
    surat_masuk_tahun_2023 = "<?= $surat_masuk_tahun_2023 ?>";
    surat_masuk_tahun_2024 = "<?= $surat_masuk_tahun_2024 ?>";
    surat_masuk_tahun_2025 = "<?= $surat_masuk_tahun_2025 ?>";
    surat_masuk_tahun_2026 = "<?= $surat_masuk_tahun_2026 ?>";
    surat_masuk_tahun_2027 = "<?= $surat_masuk_tahun_2027 ?>";

    surat_keluar_tahun_2023 = "<?= $surat_keluar_tahun_2023 ?>";
    surat_keluar_tahun_2024 = "<?= $surat_keluar_tahun_2024 ?>";
    surat_keluar_tahun_2025 = "<?= $surat_keluar_tahun_2025 ?>";
    surat_keluar_tahun_2026 = "<?= $surat_keluar_tahun_2026 ?>";
    surat_keluar_tahun_2027 = "<?= $surat_keluar_tahun_2027 ?>";
    
    
    class="count">

    </div>

    <!-- Card Analisis -->
    <div class="row">
        <div class="col mb-5">
            <div class="card">
                <div class="header">
                    <div class="tabs">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="perbulan-tab" data-bs-toggle="tab" data-bs-target="#perbulan" type="button" role="tab" aria-controls="perbulan" aria-selected="true">Bulanan</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link " id="perhari-tab" data-bs-toggle="tab" data-bs-target="#perhari" type="button" role="tab" aria-controls="perhari" aria-selected="false">Perhari</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link " id="pertahun-tab" data-bs-toggle="tab" data-bs-target="#pertahun" type="button" role="tab" aria-controls="pertahun" aria-selected="false">Pertahun</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="body tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="perbulan" role="tabpanel" aria-labelledby="perbulan-tab" tabindex="0"><canvas id="perbulan-chart"></canvas></div>
                    <div class="tab-pane fade" id="perhari" role="tabpanel" aria-labelledby="perhari-tab" tabindex="0"><canvas id="perhari-chart"></canvas></div>
                    <div class="tab-pane fade" id="pertahun" role="tabpanel" aria-labelledby="pertahun-tab" tabindex="0"><canvas id="pertahun-chart"></canvas></div>
                </div>
            </div>
        </div>
    </div>

    
</div>
<?= $this->endSection(); ?>


<?= $this->section("js"); ?>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="<?= base_url() ?>assets/dropper/chart.js"></script>
    <script src="../../../public/assets/dataTables/datatables.min.js"></script>
    <script src="//cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript"></script>
<?= $this->endSection(); ?>
