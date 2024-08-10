<!-- Modal -->
<div class="modal fade" id="createfolder" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Create Folder</h1>
      </div>
      <div class="modal-body">
        <div class="box-alert">
        </div>
        <div class="form-inputan">
            <div class="mb-3 has-validation">
                <label for="foldername" class="form-label">Name Folder</label>
                <input user-id="<?= user()->id ?>" type="text" class="form-control" id="foldername" name="foldername" placeholder="" value="">
                <div class="invalid-feedback">
                </div>
            </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="window.location.reload()" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" id="createfolder_button" class="btn btn-primary">Buat</button>
      </div>
    </div>
  </div>
</div>




<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>/assets/dropper/create_folder.js"></script>
<?= $this->endSection(); ?>