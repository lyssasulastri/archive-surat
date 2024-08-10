<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>

<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Persuratan Berisi Informasi Terkirim</div>
        </div>
    </div>

    <div class="card">
        <div class="header">
            <div class="title">
                <i class='bx bx-time-five'></i>Terkirim
            </div>
            <div id="widget" class="widget">
                <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#surat_masuk" href="#">Tambah</a></li>
                    <li><a class="dropdown-item" id="hapusriwayat" href="#">Hapus</a></li>
                </ul>
            </div>
        </div>
        <div class="body-custom">
            <table >
                <thead>
                    <tr>
                        <th><input id="checboxall" class="form-check-input" type="checkbox" value=""></th>
                        <th>Disposisi</th>
                        <th>Informasi Surat</th>
                        <th>Sifat Surat</th>
                        <th>Tanggal Surat</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach($riwayat as $rwi): ?>
                    <?php if($rwi["user_id"] == user()->id): ?>
                    <tr >
                        <td>
                            <div class="input">
                                <input id="" class="checkbox form-check-input" type="checkbox" value="<?= $rwi["id_riwayat"] ?>">
                            </div>
                        </td>
                        <td class="infoprofile">
                            <div class="profile">
                                <?php if(!empty(user_field($rwi["penerima"]))): ?>
                                <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/<?= user_field($rwi["penerima"])["profile"] == "" ? "profile.png" : user_field($rwi["penerima"])["profile"] ?>" alt="">
                                <div class="name"><?= user_field($rwi["penerima"])["username"] ?></div>
                                <?php else: ?>
                                <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/profile.png" alt="">
                                <div class="name">Pengguna Diblockir</div>   
                                <?php endif; ?>
                            </div>

                        </td>
                        <td data-bs-toggle="modal" data-bs-target="#viewsuratmasuk-<?= $rwi["id_riwayat"];  ?>" class="message">
                            <div class="title"><b><?=  substr($rwi["judul"], 0, 75) . ".." ?></b></div>
                            <div class="document" >
                                <?php foreach($document as $doc): ?>
                                    <?php if($rwi["id_surat"] == $doc["id_surat"]): ?>
                                        <span class="modal-viewdocument badge" oncontextmenu="$('#upload-archive-<?= $doc['id_document'] ?>').modal('show');event.preventDefault()" data-bs-toggle="modal" data-bs-target="#viewdocument-<?= $doc["id_document"] ?>"
                                        
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
                        <td class="type"><?= !empty($rwi["type"]) ? $rwi["type"] : "-" ?></td>
                        <td class="date"><?= $rwi["updated_at"] ?></td>
                    </tr>
                    

                    <?= $this->section("modal"); ?>
                        <!-- Modal -->
                        <div class="modal fade" id="viewsuratmasuk-<?= $rwi["id_riwayat"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel"><?= $rwi["judul"] ?></h1>
                                </div>
                                <div class="modal-body">
                                    <?= $rwi["message"] ?>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" onclick="window.location.reload()" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                                </div>
                            </div>
                        </div>
                    <?= $this->endSection(); ?>
                    
                    <?php endif; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>


<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/simpanarchive.js"></script>
<?= $this->endSection(); ?>