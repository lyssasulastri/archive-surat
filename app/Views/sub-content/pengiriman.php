

<div class="modal fade" id="forminputansurat" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Surat Keluar</h1>
      </div>
      <div class="modal-body">
        <div id="pesan-modal" class="alert alert-danger alert-dismissible fade show" style="display: none;" role="alert">
            <strong>Warning!!</strong> Tidak Boleh Ada Yang Kosong!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <div class="content-jenissurat">
            <div class="box-alert">
            </div>
            <div class="form-inputan">
                <div class="row mb-3">
                    <div class="col">
                        <div class="has-validation">
                            <label for="nomorsurat" class="form-label">Nomor Surat</label>
                            <input type="text" class="form-control" id="nomor_surat" name="nomorsurat" placeholder="" value="" required>
                            <div class="invalid-feedback">
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="has-validation">
                            <label for="perihal" class="form-label">Perihal</label>
                            <input type="text" class="form-control" id="perihal" name="perihal" placeholder="" value="" required>
                            <div class="invalid-feedback">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="form-inputan">
                <div class="row mb-3">
                    <input type="hidden" info-surat="surat masuk" user-id="<?= user()->id ?>" class="form-control" id="judul" name="judul" placeholder="" value="a">
                    <div class="col">
                        <div class="has-validation">
                            <label for="asal_surat" class="form-label">Asal Surat</label>
                            <input type="text" class="form-control" id="asal_surat" name="asal_surat" placeholder="" value="">
                            <div class="invalid-feedback">
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col">
                    <div class="form-inputan">
                        <div class="mb-3 has-validation">
                            <label for="tujuan" class="form-label">Disposisi</label>
                            <select class="form-select" name="tujuan" id="tujuan" aria-describedby="validationServer04Feedback" required>
                                <option selected disabled value=""></option>
                                <?php foreach($user as $us): ?>
                                    <?php if($us["username"] != user()->username): ?>
                                    <option value="<?= $us["id"] ?>"><?= $us["username"] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
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
                            <select class="form-select" id="jenis_surat" name="jenis_surat" aria-describedby="validationServer04Feedback" required>
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
                <div class="mb-3 has-validation">
                    <label for="date-suratmasuk" class="form-label">Tanggal Surat Masuk</label>
                    <input type="date" class="form-control" id="date-suratmasuk" name="date-suratmasuk" placeholder="" value="">
                    <div class="invalid-feedback">
                    </div>
                </div>
            </div>
            <div class="form-inputan">
                <div class="mb-3 has-validation">
                    <label for="message" class="form-label">Catatan</label>
                    <textarea class="form-control" id="message" name="message" placeholder="" required></textarea>
                    <div class="invalid-feedback">
                    </div>
                </div>
            </div>
            <div id="pengiriman-contentfile" class="pengiriman-contentfile" style="display:none;">
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onclick="window.location.reload()" data-bs-dismiss="modal">Close</button>
        <button type="button" onclick="document.getElementById('document').click()" class="btn btn-primary" id="sisipkanfile">Sisipkan File</button>
        <input type="file" accept=".pdf" name="info_file" id="document" style="display:none;" multiple>
        <button type="button" class="btn btn-primary" id="tambah">Tambahkan</button>
      </div>
    </div>
  </div>
</div>


<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/pengiriman.js"></script>
<?= $this->endSection(); ?>