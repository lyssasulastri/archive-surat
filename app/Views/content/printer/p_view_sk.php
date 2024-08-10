<?php 
$pdf = false;
if(strpos(current_url(), "printpdf")) {
   $pdf = true;
}
if($pdf = false) {
?>
   <a class="dropdown-item" aria-current="page" onclick="window.open('<?php echo site_url('C_Dashboard/printpdf_sk') ?>', 'blank')" href="#"><b>Print</b></a>
<?php } ?>

<style>
   body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table tr th {
         background: #ddd;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
        }

  
</style>

<h2 style="margin-left: 30px;">Laporan Surat Keluar</h2>
<div class="body-custom">
<?php if (!empty($surat)): ?>
            <table >
                <thead>
                    <tr>
                        <!-- <th><input id="checboxall" class="form-check-input" type="checkbox" value=""></th> -->
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
                        <?php if($sr["jenis"] == "surat keluar"): ?>
                            <?php if($sr["penerima"] == user()->id): ?>
                                <?php if($sr["is_ready"] == "siap"): ?>
                                <tr id="suratkeluar" class="suratkeluar <?= $sr["is_read"] == "no" ? "no_read" : "" ?>" suratid="<?= $sr["id_surat"] ?>" >
                                    
                                    <td class="infoprofile">
                                        <div class="profile">
                                            <?php if(!empty(user_field($sr["user_id"]))): ?>
                                                <!-- <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/<?= user_field($sr["user_id"])["profile"] == "" ? "profile.png" : user_field($sr["user_id"])["profile"] ?>" alt=""> -->
                                                <div class="name"><?= user_field($sr["user_id"])["username"] ?></div>
                                            <?php else: ?>
                                                <!-- <img width="40" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/profile.png" alt=""> -->
                                                <div class="name">Pengguna Diblockir</div>   
                                            <?php endif; ?>
                                        </div>
                                    </td>
                                    <td><?= $sr["no_surat"] ?></td>
                                    <td><?= $sr["asal_surat"] ?></td>
                                    <td  data-bs-toggle="modal" data-bs-target="#viewsuratkeluar-<?= $sr["id_surat"];  ?>" class="message">
                                        <div class="title"><b><?=  substr($sr["judul"], 0, 75) . ".." ?></b></div>
                                        <div class="document" >
                                            <?php foreach($document as $doc): ?>
                                                <?php if($doc["id_surat"] == $sr["id_surat"]): ?>
                                                    <span id="modal-dockeluar" name-document="<?= $doc["name_document"] ?>" surat-id="<?= $doc["id_surat"] ?>" class="modal-viewdocument modal-dockeluar badge" oncontextmenu="$('#upload-archive-<?= $doc['id_document'] ?>').modal('show');event.preventDefault()" data-bs-toggle="modal" data-bs-target="#viewdocument-<?= $doc["id_document"] ?>" 
                                                    
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
                                                    <!-- <?= $this->section("modal"); ?> -->
                                                    <!-- Modal -->
                                                    <!-- <div  class="modal-view-document modal fade" id="viewdocument-<?= $doc["id_document"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                                    <?= $this->endSection(); ?> -->
                                                    
                                                    <!-- Memasukan Ke arsip -->
                                                    <!-- <?= $this->section("modal"); ?>
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
                                                    <?= $this->endSection(); ?> -->
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </div>
                                    </td>
                                    <td class="type"><?= !empty($sr["type"]) ? $sr["type"] : "-" ?></td>
                                    <td class="date"><?= $sr["date"] ?></td>
                                </tr>

                                <!-- <?= $this->section("modal"); ?> -->
                                    <!-- Modal -->
                                    <!-- <div class="modal fade" id="viewsuratkeluar-<?= $sr["id_surat"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                    </div> -->
                                <!-- <?= $this->endSection(); ?> -->
                                <?php endif; ?>
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        <?php else: ?>
            <p>Tidak ada data yang sesuai dengan range tanggal yang dipilih.</p>
        <?php endif; ?>
        </div>