<div class="modal fade" id="jenissurat" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Tambah Sifat Surat</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="content-jenissurat">
            <div class="form-inputan">
                <div class="mb-3 has-validation">
                    <label for="jenis_surat" class="form-label">Sifat Surat</label>
                    <input type="text" user-id="<?= user()->id ?>" class="form-control <?= errmsg("jenis_surat") ? 'is-invalid' : '' ?>" id="jenis_surat" name="jenis_surat" placeholder="Masukan Jenis Surat" value="<?= old("jenis_surat") == '' ? user()->jenis_surat : old("jenis_surat") ?>">
                    <div class="invalid-feedback">
                        <?= errmsg("jenis_surat") ?>
                    </div>
                </div>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-primary" id="tambah_jenissurat">Tambahkan</button>
      </div>
    </div>
  </div>
</div>


<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/jenis_surat.js"></script>
<?= $this->endSection(); ?>