<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>
<?php if(user()->rules != "user" && user()->rules != ""): ?>
<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Pengaturan Berisi Informasi Archive</div>
        </div>
    </div>


    <div class="wrapper-archive">
        <div class="header">
            <div class="title">
                <i class='bx bx-archive'></i> Search
                <form method="post" action="/cari-surat">
                    <div class="box-search">
                        <input type="text" class="form-control input-searching-surat" name="carisurat">
                        <button type="submit" class="btn btn-primary">Cari</button>
                    </div>
                </form>
            </div>
            <div class="widget dropstart">
                <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#createfolder" href="#"><span class="badge rounded-pill text-bg-primary">Buat Folder</span></a></li>
                </ul>
            </div>
        </div>
        <div class="body">
            <div class="accordion" id="accordionExample">
                <?php foreach($resultsearching as $rscari): ?>
                <?php foreach($archive as $arc): ?>
                    <?php if($arc["id_user"] == user()->id): ?>
                        <?php if($rscari["archive"] == $arc["id_foldername"]): ?>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                            <button oncontextmenu="$('#foldersetting-<?= $arc['id_foldername'] ?>').modal('show');event.preventDefault()" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#archive-<?= $arc["id_foldername"] ?>" aria-expanded="false" aria-controls="archive-<?= $arc["id_foldername"] ?>">
                                <?= $arc["foldername"] ?>
                            </button>
                            </h2>
                            <div id="archive-<?= $arc["id_foldername"] ?>" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <table class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <th>no</th>
                                            <th>Name Document</th>
                                            <th>Waktu Upload</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach($resultsearching as $search): ?>
                                            <?php foreach($document as $doc): ?>
                                            <?php if($search["id_document"] == $doc["id_document"]): ?>
                                            <?php if($doc["archive"] == $arc["id_foldername"]): ?>
                                            <tr  id="documentke-<?= $doc["id_document"] ?>">
                                                <td class="no-urut-<?= $arc['id_foldername'] ?>"><?= $i++ ?></td>
                                                <td><?= $doc["name_document"] ?></td>
                                                <td><?= $doc["updated_at"] ?></td>
                                                <td>
                                                    <div class="widget dropstart">
                                                        <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                                                        <ul class="dropdown-menu">
                                                            <li><a class="dropdown-item modal-viewdocument" 
                                                            
                                                            content-viewpdf="content-viewpdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            content-modal-header="content-modal-header-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            length-pagepdf="length-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            inputlength-pagepdf="inputlength-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            total-pagepdf="total-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            printAllButton="printAllButton-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            content-modal-body="content-modal-body-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            content-pdf="content-pdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            viewcontentpdf="viewcontentpdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            iddocument="<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"
                                                            
                                                            href="#" data-bs-toggle="modal" data-bs-target="#view-document-archive-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"><span class="badge rounded-pill text-bg-primary">view</span></a></li>
                                                            <li><a class="delete-document-archive dropdown-item" folderid="<?= $arc['id_foldername'] ?>" trinfo="documentke-<?= $doc["id_document"] ?>" document-id="<?= $doc['id_document'] ?>" id="delete-document-archive-<?= $doc["id_document"] ?>" href="#"><span class="badge rounded-pill text-bg-danger">Delete</span></a></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                

                                            <!-- View Document -->
                                            <?= $this->section("modal"); ?>
                                                <!-- Modal -->
                                                <div  class="modal-view-document modal fade" id="view-document-archive-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h1 class="modal-title fs-5" id="staticBackdropLabel"><?= $doc["name_document"] ?></h1>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="content-viewpdf content-viewpdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
                                                                <div class="content-modal-header content-modal-header-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
                                                                    <div class="length-pagepdf length-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
                                                                        <input type="text" class="inputlength-pagepdf inputlength-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>" class="form-control" placeholder="" value="1">
                                                                        of 
                                                                        <span class="total-pagepdf total-pagepdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>"></span>
                                                                    </div>
                                                                    <div class="option-pagepdf">
                                                                        <button class="btn btn-primary" id="printAllButton-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>" type="submit">Print</button>
                                                                        <a href="<?php base_url() ?>/assets/document/<?= $doc["name_document"] ?>" download="<?= $doc["name_document"] ?>">
                                                                            <button class="btn btn-primary" type="submit">Download</button>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <div class="content-modal-body content-modal-body-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
                                                                    <div class="content-loading content-loading-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
                                                                        <div class="d-flex justify-content-center">
                                                                            <div class="spinner-border" role="status">
                                                                                <span class="visually-hidden">Loading...</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div scale="" document="<?php base_url() ?>/assets/document/<?= $doc["name_document"] ?>" id="content-pdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>" style="display: none;" class="viewcontentpdf viewcontentpdf-<?= $arc['id_foldername'] ?><?= $doc["id_document"] ?>">
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

                                            
                                            <?php endif; ?>
                                            <?php endif; ?>
                                            <?php endforeach; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>
                        <?= $this->section("modal"); ?>
                            <!-- Modal -->
                            <div class="modal fade" id="foldersetting-<?= $arc["id_foldername"] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Folder Setting</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert-foldersetting">

                                        </div>
                                        <div class="form-inputan">

                                            <div class="mb-3 has-validation">
                                                <label for="name_old_folder" class="form-label">Nama Folder</label>
                                                <input type="text" class="form-control" id="name_old_folder-<?= $arc["id_foldername"] ?>" name="name_old_folder"  value="<?= $arc["foldername"] ?>">
                                                <div class="invalid-feedback">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" onclick="location.reload()" data-bs-dismiss="modal">Close</button>
                                        <button type="button" folderid="<?= $arc["id_foldername"] ?>" class="renameoldfolder btn btn-primary">Rename</button>
                                        <button type="button" folderid="<?= $arc["id_foldername"] ?>" class="deleteoldfolder btn btn-primary">Delete</button>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        <?= $this->endSection(); ?>
                        <?php endif; ?>
                    <?php endif; ?>
                <?php endforeach; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>

</div>

<?php endif; ?>
<?= $this->endSection(); ?>



<?= $this->section("modal"); ?>
    <?= $this->include("/sub-content/create_folder.php"); ?>
<?= $this->endSection(); ?>


<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/delete_document_archive.js"></script>
    <script src="<?= base_url() ?>assets/dropper/foldersetting.js"></script>
<?= $this->endSection(); ?>