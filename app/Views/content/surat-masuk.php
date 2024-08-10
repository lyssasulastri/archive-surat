<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>

<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Informasi Surat Masuk</span></div>
            <div class="description">Halaman Persuratan Berisi Informasi Surat Masuk</div>
        </div>
    </div>

    <div class="card">
        <div class="header">
            <div class="title">
                <i class='bx bx-time-five'></i>Surat Masuk
            </div>
            <ul class="nav nav-tabs" style="display: flex; flex-direction: row; justify-content: space-between;">
                <li class="nav-item col-30" style="display: flex;" >
                    <i class='bx bx-archive'></i> Search
                    <form method="post" action="">
                        <div class="box-search" style="display: flex; flex-direction: row;">
                            <input type="text" class="form-control" name="keyword"  />
                            <button type="submit" class="btn btn-primary" >Cari</button>
                        </div>
                    </form>
                </li>
            </ul>
            <div id="widget" class="widget">
                <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#forminputansurat" href="#">Tambah</a></li>
                    <li><a class="dropdown-item" id="hapusrowtable" href="#">Hapus</a></li>
                    <li><a class="dropdown-item" aria-current="page" onclick="window.open('<?php echo site_url('C_Dashboard/printpdf_sm') ?>', 'blank')" href="#"><b>Print</b></a></li>
                </ul>
            </div>
        </div>
        <div class="body-custom">
            <table >
                <thead>
                    <tr>
                        <th><input id="checboxall" class="form-check-input" type="checkbox" value=""></th>
                        <th>Disposisi</th>
                        <th>Nomor Surat</th>
                        <th>Asal Surat</th>
                        <th>Informasi Surat</th>
                        <th>Sifat Surat</th>
                        <th>Tanggal Surat</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($surat as $sr): ?>
                        <?php if($sr["jenis"] == "surat masuk"): ?>
                            <?php if($sr["penerima"] == user()->id): ?>
                                <?php if($sr["is_ready"] == "siap"): ?>
                                <tr  id="suratmasuk" class="suratmasuk <?= $sr["is_read"] == "no" ? "no_read" : "" ?>" suratid="<?= $sr["id_surat"] ?>"  >
                                    <td>
                                        <div class="input">
                                            <input id="" suratid="" class="checkbox form-check-input" type="checkbox" value="<?= $sr["id_surat"] ?>">
                                        </div>
                                    </td>
                                    <td class="infoprofile">
                                        <div class="profile">
                                            <?php if(!empty(user_field($sr["user_id"]))): ?>
                                                <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/<?= user_field($sr["user_id"])["profile"] == "" ? "profile.png" : user_field($sr["user_id"])["profile"] ?>" alt="">
                                                <div class="name"><?= user_field($sr["user_id"])["username"] ?></div>
                                            <?php else: ?>
                                                <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/profile.png" alt="">
                                                <div class="name">Pengguna Diblockir</div>   
                                            <?php endif; ?>
                                        </div>
                                    </td>
                                    <td><?= $sr["no_surat"] ?></td>
                                    <td><?= $sr["asal_surat"] ?></td>
                                    <td class="message"  data-bs-toggle="modal" data-bs-target="#viewsuratmasuk-<?= $sr["id_surat"];  ?>">
                                        <div class="title" ><b><?=  substr($sr["judul"], 0, 75) . "" ?></b></div>
                                        <div class="message" oncontextmenu="$('#formbalasan-'+ <?= $sr['id_surat'] ?>).modal('show');event.preventDefault(); proses_formbalasan(<?= $sr['id_surat'];  ?>)"><?=  substr($sr["message"], 0, 75) . "" ?></div>
                                        <div class="document" >
                                            <?php foreach($document as $doc): ?>
                                                <?php if($doc["id_surat"] == $sr["id_surat"]): ?>
                                                    <span id="modal-viewdocument" name-document="<?= $doc["name_document"] ?>" surat-id="<?= $doc["id_surat"] ?>" oncontextmenu="$('#upload-archive-<?= $doc['id_document'] ?>').modal('show');event.preventDefault()" class="modal-viewdocument badge" 
                                                    data-bs-toggle="modal" 
                                                    data-bs-target="#viewdocument-<?= $doc["id_document"] ?>"


                                                    content-viewpdf="content-viewpdf-<?= $doc["id_document"] ?>"
                                                    content-modal-header="content-modal-header-<?= $doc["id_document"] ?>"
                                                    length-pagepdf="length-pagepdf-<?= $doc["id_document"] ?>"
                                                    inputlength-pagepdf="inputlength-pagepdf-<?= $doc["id_document"] ?>"
                                                    total-pagepdf="total-pagepdf-<?= $doc["id_document"] ?>"
                                                    printAllButton="printAllButton-<?= $doc["id_document"] ?>"
                                                    content-modal-body="content-modal-body-<?= $doc["id_document"] ?>"
                                                    content-pdf="content-pdf-<?= $doc["id_document"] ?>"
                                                    viewcontentpdf="viewcontentpdf-<?= $doc["id_document"] ?>"
                                                    iddocument="<?= $doc["id_document"] ?>"

                                                    ><i class='bx bxs-file-doc'></i> <?= $doc["name_document"] ?></span>



                                                    <!-- View Document -->
                                                    <?= $this->section("modal"); ?>
                                                        <!-- Modal -->
                                                        <div  class="modal-view-document modal fade" id="viewdocument-<?= $doc["id_document"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel"><?= $doc["name_document"] ?></h1>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="content-viewpdf content-viewpdf-<?= $doc["id_document"] ?>">
                                                                        <div class="content-modal-header content-modal-header-<?= $doc["id_document"] ?>">
                                                                            <div class="length-pagepdf length-pagepdf-<?= $doc["id_document"] ?>">
                                                                                <input type="text" class="inputlength-pagepdf inputlength-pagepdf-<?= $doc["id_document"] ?>" class="form-control" placeholder="" value="1">
                                                                                of 
                                                                                <span class="total-pagepdf total-pagepdf-<?= $doc["id_document"] ?>"></span>
                                                                            </div>
                                                                            <div class="option-pagepdf">
                                                                                <button class="btn btn-primary" id="printAllButton-<?= $doc["id_document"] ?>" type="submit">Print</button>
                                                                                <a href="<?php base_url() ?>/assets/document/<?= $doc["name_document"] ?>" download="<?= $doc["name_document"] ?>">
                                                                                    <button class="btn btn-primary" type="submit">Download</button>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="content-modal-body content-modal-body-<?= $doc["id_document"] ?>">
                                                                            <div class="content-loading content-loading-<?= $doc["id_document"] ?>">
                                                                                <div class="d-flex justify-content-center">
                                                                                    <div class="spinner-border" role="status">
                                                                                        <span class="visually-hidden">Loading...</span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div scale="" document="<?php base_url() ?>/assets/document/<?= $doc["name_document"] ?>" id="content-pdf-<?= $doc["id_document"] ?>" style="display: none;" class="viewcontentpdf viewcontentpdf-<?= $doc["id_document"] ?>">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" onclick="window.location.reload()" data-bs-dismiss="modal">Close</button>
                                                                </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <?= $this->endSection(); ?>

                                                    <!-- Memasukan Ke arsip -->
                                                    <?= $this->section("modal"); ?>
                                                        <div class="modal fade" id="upload-archive-<?= $doc["id_document"] ?>" tabindex="-1" aria-labelledby="upload-archive" aria-hidden="true">
                                                            <div class="modal-dialog">
                                                                <div class="modal-content">

                                                                    <div class="modal-header">
                                                                        <h1 class="modal-title fs-5" id="upload-archive">Upload Document Ke Archive</h1>
                                                                    </div>
                                                                    <div class="modal-body ">
                                                                        <div class="archive-body-<?= $doc["id_document"] ?>">
                                                                            
                                                                        </div>
                                                                        <div class="form-inputan">
                                                                            <div class="mb-3 has-validation">
                                                                                <label for="name_foldername" class="form-label">Name Folder</label>
                                                                                <select class="form-select" id="name_foldername-<?= $doc["id_document"] ?>" name="name_foldername" aria-describedby="validationServer04Feedback" required>
                                                                                    <?php foreach($archive as $arc): ?>
                                                                                        <?php if($arc["id_user"] == user()->id): ?>
                                                                                        <option value="<?= $arc["id_foldername"] ?>"><?= $arc["foldername"] ?></option>
                                                                                        <?php endif; ?>
                                                                                    <?php endforeach; ?>
                                                                                </select>
                                                                                <div class="invalid-feedback">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                              
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                                            <button type="button" document-id="<?= $doc["id_document"] ?>" archive-body="archive-body-<?= $doc["id_document"] ?>" inputnameid="name_foldername-<?= $doc["id_document"] ?>" id="simpanarchive" class="simpanarchive btn btn-primary">Simpan</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    <?= $this->endSection(); ?>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </td>
                                    <td class="type"><?= !empty($sr["type"]) ? $sr["type"] : "-" ?></td>
                                    <td class="date"><?= $sr["date"] ?></td>
                                </tr>
                                
                                <!-- Balasan Surat -->
                                <?= $this->section("modal"); ?>
                                <?php if(!empty(user_field($sr["user_id"]))): ?>
                                    <div class="modal fade" id="formbalasan-<?= $sr['id_surat'] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Surat Keluar</h1>
                                            </div>
                                            <div class="modal-body">
                                                <div id="pesan-modal-<?= $sr['id_surat'] ?>" class="alert alert-danger alert-dismissible fade show" style="display: none;" role="alert">
                                                    <strong>Warning!!</strong> Tidak Boleh Ada Yang Kosong!
                                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                </div>
                                                <div class="content-jenissurat">
                                                    <div class="box-alert-balasan-<?= $sr['id_surat'] ?>"></div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="mb-3 has-validation">
                                                                <label for="no_surat" class="form-label">No Surat</label>
                                                                <input type="text" class="form-control" id="no_surat-<?= $sr['id_surat'] ?>" name="no_surat" placeholder="" value="">
                                                                <div class="invalid-feedback">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="mb-3 has-validation">
                                                                <label for="perihal" class="form-label">Perihal</label>
                                                                <input type="text" class="form-control" id="perihal-<?= $sr['id_surat'] ?>" name="perihal" placeholder="" value="">
                                                                <div class="invalid-feedback">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <input type="hidden" info-surat="surat keluar" user-id="<?= user()->id ?>" class="form-control" id="judul-<?= $sr['id_surat'] ?>" name="judul" placeholder="" value="a">
                                                        <div class="col">
                                                            <div class="mb-3 has-validation">
                                                                <label for="asal-surat" class="form-label">Asal Surat</label>
                                                                <input type="text" class="form-control" id="asal-surat-<?= $sr['id_surat'] ?>" name="asal-surat" placeholder="" value="">
                                                                <div class="invalid-feedback">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="form-inputan">
                                                                <div class="mb-3 has-validation">
                                                                    <label for="tujuan" class="form-label">Disposisi</label>
                                                                    <input type="text" class="form-control" id="" name="" placeholder="" value="<?= user_field($sr["user_id"])["username"] ?>" readonly>
                                                                    <input type="hidden" class="form-control" id="tujuan-<?= $sr['id_surat'] ?>" name="tujuan" placeholder="" value="<?= $sr["user_id"] ?>" readonly>
                                                                    <div class="invalid-feedback">
                                                                        <?= errmsg("jenis_surat") ?>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <div class="form-inputan">
                                                                <div class="mb-3 has-validation">
                                                                    <label for="jenis_surat" class="form-label">Sifat Surat</label>
                                                                    <select class="form-select" id="jenis_surat-<?= $sr['id_surat'] ?>" name="jenis_surat" aria-describedby="validationServer04Feedback" required>
                                                                        <option selected disabled value=""></option>
                                                                        <?php foreach($jenis_surat as $jsur): ?>
                                                                        <?php if($jsur["user_id"] == user()->id): ?>
                                                                            <option value="<?= $jsur["jenis_surat"] ?>"><?= $jsur["jenis_surat"] ?></option>
                                                                        <?php endif; ?>    
                                                                        <?php endforeach; ?>
                                                                    </select>
                                                                    <div class="invalid-feedback">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="row">
                                                        <div class="col">
                                                            <div class="mb-3 has-validation">
                                                                <label for="date-surat" class="form-label">Tanggal Surat</label>
                                                                <input type="date" class="form-control" id="date-surat-<?= $sr['id_surat'] ?>" name="date-surat" placeholder="" value="">
                                                                <div class="invalid-feedback">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="form-inputan">
                                                        <div class="mb-3 has-validation">
                                                            <label for="message" class="form-label">Catatan</label>
                                                            <textarea class="form-control" id="message-<?= $sr['id_surat'] ?>" name="message" placeholder="" required></textarea>
                                                            <div class="invalid-feedback">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div id="pengiriman-contentfile-<?= $sr['id_surat'] ?>" class="pengiriman-contentfile pengiriman-contentfile-<?= $sr['id_surat'] ?>" style="display:none;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" onclick="window.location.reload()" data-bs-dismiss="modal">Close</button>
                                                <button type="button" onclick="document.getElementById('document-balasan-'+<?= $sr['id_surat'] ?>).click()" class="btn btn-primary" id="sisipkanfile">Sisipkan File</button>
                                                <input type="file" accept=".pdf" name="info_file" id="document-balasan-<?= $sr['id_surat'] ?>" style="display:none;" multiple>
                                                <button type="button" class="btn btn-primary" id="tambah-suratbalasan-<?= $sr['id_surat'] ?>">Tambahkan</button>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <div class="modal fade" id="formbalasan" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Pengguna Diblockir</h1>
                                            </div>
                                            <div class="modal-body">
                                                Pengguna Sudah Diblockir, Anda Tidak Bisa Membalas Pesan Ini
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" onclick="window.location.reload()" data-bs-dismiss="modal">Close</button>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endif; ?>

                                <?= $this->endSection(); ?>

                                <?= $this->section("modal"); ?>
                                    <!-- Modal -->
                                    <div class="modal fade" id="viewsuratmasuk-<?= $sr["id_surat"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="staticBackdropLabel"><?= $sr["judul"] ?></h1>
                                            </div>
                                            <div class="modal-body">
                                                <?= $sr["message"] ?>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" onclick="window.location.reload()" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                <?= $this->endSection(); ?>
                                <?php endif; ?>
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>

<?= $this->section("modal"); ?>
    <?= $this->include("/sub-content/pengiriman.php"); ?>
<?= $this->endSection(); ?>

<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/read_suratmasuk.js"></script>
    <script src="<?= base_url() ?>assets/dropper/view_pdf.js"></script>
    <script src="<?= base_url() ?>vendor/build/pdf.js"></script>
    <script src="<?= base_url() ?>assets/dropper/pengirimanbalasan.js"></script>
    <script src="<?= base_url() ?>assets/dropper/simpanarchive.js"></script>
    
<?= $this->endSection(); ?>