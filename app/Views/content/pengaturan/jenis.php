<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>
<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Pengaturan Berisi Informasi Jenis Surat</div>
        </div>
    </div>

    <div class="wrapper-jenis">
        <div class="header">
            <div class="title">
                <i class='bx bx-envelope'></i> Sifat Surat
            </div>
            <div class="widget dropstart">
                <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#jenissurat">Tambah</a></li>
                </ul>
            </div>
        </div>
        <div class="body">
            <table class="table">
                <thead>
                    <tr>
                        <th style="min-width: 70px;"><span class="content"><i class='bx bx-hash' ></i>No</span></th>
                        <th style="min-width: 150px;"><span class="content"><i class='bx bx-envelope'></i> Sifat Surat</span></th>
                        <th style="min-width: 150px;"><span class="content"><i class='bx bx-calendar' ></i>Tanggal Dibuat</span></th>
                        <th style="min-width: 150px;"><span class="content"><i class='bx bx-bolt-circle'></i>Aksi</span></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach($jenis_surat as $jenis): ?>
                    <?php if($jenis["user_id"] == user()->id): ?>
                        <tr class="jenis-<?= $jenis["id_jenissurat"] ?>">
                            <td class="no-urut"><?= $i++; ?></td>
                            <td><span class="badge rounded-pill text-bg-primary"><?= $jenis["jenis_surat"] ?></span></td>
                            <td><span class="badge rounded-pill text-bg-secondary"><?= $jenis["updated_at"] ?></span></td>
                            <td>
                                <button type="button" id="delete-jenissurat" id-jenissurat="<?= $jenis["id_jenissurat"] ?>" class="delete-jenissurat btn btn-outline-primary">Hapus</button>
                                <button type="button" data-bs-toggle="modal" data-bs-target="#edit-jenis-surat-<?= $jenis["id_jenissurat"] ?>" class="btn btn-outline-primary">Edit</button>
                            </td>
                        </tr>

                        <?= $this->section("modal"); ?>
                            <div class="modal fade" id="edit-jenis-surat-<?= $jenis["id_jenissurat"] ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit Sifat Surat</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form class="form-edit-sifat-surat" action="post">
                                    <input type="hidden" name="sifatsuratid" value="<?= $jenis["id_jenissurat"] ?>">
                                    <div class="modal-body">
                                        <div class="content-jenissurat">
                                            <div class="form-inputan">
                                                <div class="mb-3 has-validation">
                                                    <label for="editsurat" class="form-label">Sifat Surat</label>
                                                    <input type="text" class="form-control" name="edit-surat" placeholder="Edit Sifat Surat" value="<?= $jenis["jenis_surat"] ?>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                        <button type="submit" class="btn btn-primary btn-submit-edit-sifat-surat" >Edit</button>
                                    </div>
                                    </form>
                                    </div>
                                </div>
                            </div>
                        <?= $this->endSection(); ?>
                    <?php endif; ?>
                    <?php endforeach; ?>
                    <div class="total" total="<?= $i ?>"></div>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>


<?= $this->section("modal"); ?>
    <?= $this->include("/sub-content/jenis_surat.php"); ?>
<?= $this->endSection(); ?>



<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>/assets/dropper/editsifatsurat.js"></script>
<?= $this->endSection(); ?>