<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>
<?php if(user()->rules != "petugas" && user()->rules != "user" && user()->rules != ""): ?>
<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Pengaturan Berisi Informasi Petugas</div>
        </div>
    </div>

    <div class="wrapper-card">
        <div class="header">
            <div class="title-header">
                <i class='bx bx-user-pin' ></i> Petugas
            </div>
            <div class="dropstart">
                <!-- <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Tambah</a></li>
                </ul> -->
            </div>
        </div>
        <div class="body">
            <table class="petugas">
                <thead>
                    <tr>
                        <th style="min-width: 70px;"><i class='bx bx-sort-a-z'></i>No</th>
                        <th style="min-width: 150px;"><i class='bx bx-user'></i>Data Users</th>
                        <th style="min-width: 150px;"><i class='bx bx-rocket' ></i>Hak Akses</th>
                        <th style="min-width: 150px;"><i class='bx bx-edit'></i>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach($user as $us): ?>
                    <tr>
                        <td><?= $i++; ?></td>
                        <td>
                            <div class="profile">
                                <img class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/<?= $us["profile"] == "" ? "profile.png" : $us["profile"] ?>" alt="">
                                <div class="name"><?= strtolower($us["username"]) ?></div>
                            </div>
                        </td>
                        <td class="rules-content-<?= $us["id"] ?>">
                            <?php if($us["rules"] == "petugas"): ?>
                                petugas
                            <?php elseif($us["rules"] == "user"): ?>
                                user
                            <?php elseif($us["rules"] == "admin"): ?>
                                admin
                            <?php else: ?>
                                user
                            <?php endif; ?>
                        </td>
                        <td>
                            <div class="widget dropstart">
                                <i class='bx bx-dots-vertical' data-bs-toggle="dropdown" aria-expanded="false"></i>
                                <ul class="dropdown-menu">
                                    <li><a user-id="<?= $us["id"] ?>" value="user"    class="dropdown-item dropdown-petugas" href="#">User</a></li>
                                    <li><a user-id="<?= $us["id"] ?>" value="admin"   class="dropdown-item dropdown-petugas" href="#">Admin</a></li>
                                    <li><a user-id="<?= $us["id"] ?>" value="petugas" class="dropdown-item dropdown-petugas" href="#">Petugas</a></li>
                                    <li><a user-id="<?= $us["id"] ?>" class="dropdown-item dropdown-item-block" href="#">block</a></li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<?php endif; ?>
<?= $this->endSection(); ?>

<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/petugas.js"></script>
<?= $this->endSection(); ?>