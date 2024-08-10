<div class="modal fade" id="modal-preview" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">Preview Image</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        <!-- Perhatikan Bagian Ini -->
        <div class="modal-body">
            <div class="modal-wrapper">
                <div class="wrapper-preview">
                    <img src="" id="img-preview" class="img-preview"></img>
                </div>
                <div class="progress" role="progressbar" aria-label="Example with label" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar" style="width: 0%">0%</div>
                </div>
            </div>
        </div>
        <!-- end-->
        
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" id="crop" class="btn btn-primary">Crop</button>
        </div>
        </div>
    </div>
</div>

<?= $this->section("css"); ?>
    <link rel="stylesheet" href="https://fengyuanchen.github.io/cropperjs/css/cropper.css">
    <script src="https://fengyuanchen.github.io/cropperjs/js/cropper.js"></script>
<?= $this->endSection(); ?>

<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/profile.js"></script>
<?= $this->endSection(); ?>