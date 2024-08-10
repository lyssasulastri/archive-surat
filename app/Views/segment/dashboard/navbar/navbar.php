<nav class="navbar">
    <div class="brand">
        <div class="humburger-menu">
            <div class="box-1"></div>
            <div class="box-2"></div>
            <div class="box-3"></div>
        </div>
    </div>
    <div class="menu">
        <!-- Notification Menu -->
        <div class="notifikasi" id="notifikasi">
            <i class='bx bx-bell' ></i>
            <?php $i = 1; ?>
            <?php foreach($notifikasi as $ntf): ?>
                <?php if($ntf["penerima"] == user()->id): ?>
                    <?php if($ntf["is_read"] == "no"): ?>
                        <?php if($ntf["is_ready"] == "siap"): ?>
                        <?php $no_notifikasi = $i++; ?>
                        <?php endif; ?>
                    <?php endif; ?>
                <?php endif; ?>
            <?php endforeach; ?>
            <span class="notification-count rounded-circle" style="display: <?= empty($no_notifikasi) ? "none" : "flex" ?>"><?= empty($no_notifikasi) ? "" : $no_notifikasi ?></span>
        </div>
        <div id="notifikasi-content" class="notifikasi-content" role="notifikasi-content">
            <div id="arrow-notifikasi" class="arrow-notifikasi" data-popper-arrow></div>
            <div class="card-header">
                <div class="title">Notifikasi</div>
                <div class="option"><a user-id="<?= user()->id ?>" id="bacasemuabutton" class="bacasemua" href="#">Baca Semua</a></div>
            </div>
            <div class="card-body">
                <?php foreach($notifikasi as $ntf): ?>
                <?php if($ntf["penerima"] == user()->id): ?>
                    <?php if($ntf["jenis"] == "surat masuk"): ?>
                        <?php if($ntf["is_ready"] == "siap"):  ?>
                    <!-- Bagian Card Notifikasi nya -->
                        <div base-url="<?= base_url() ?>suratmasuk" notifikasi-id="<?= $ntf["id_notifikasi"] ?>" style="cursor:pointer;" class="notifikasi-card <?= $ntf["is_read"] == "no" ? "noread" : "" ?>">
                            <div class="wrapper-info">
                                <?php if(!empty(user_field($ntf["pengirim"]))): ?>
                                <div class="profile"><img src="<?= base_url() ?>assets/canvases/profile/<?= user_field($ntf["pengirim"])["profile"] == "" ? "profile.png" : user_field($ntf["pengirim"])["profile"] ?>" alt=""></div>
                                <div class="info">
                                    <div class="title">Bot Arsip Surat Masuk</div>
                                    <div class="message mb-3"><i class='bx bx-envelope'></i>Surat Masuk From: <?= user_field($ntf["pengirim"])["username"] ?> </div>
                                    <div class="time"><i class='bx bxs-time-five' ></i> <?= $ntf["updated_at"] ?></div>
                                </div>
                                <?php else: ?>
                                <div class="profile"><img src="<?= base_url() ?>assets/canvases/profile/profile.png" alt=""></div>
                                <div class="info">
                                    <div class="title">Bot Arsip Surat Masuk</div>
                                    <div class="message mb-3"><i class='bx bx-envelope'></i>Surat Masuk From: Users Diblockir</div>
                                    <div class="time"><i class='bx bxs-time-five' ></i> Kadarluarsa</div>
                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="option">
                                <button><i class='bx bx-envelope' ></i></button>
                            </div>
                        </div>
                        <?php endif; ?>
                    <!-- End -->
                    <?php elseif($ntf["jenis"] == "surat keluar"): ?>
                    <!-- Bagian Card Notifikasi nya -->
                        <?php if($ntf["is_ready"] == "siap"):  ?>
                        <div base-url="<?= base_url() ?>suratkeluar" notifikasi-id="<?= $ntf["id_notifikasi"] ?>" class="notifikasi-card <?= $ntf["is_read"] == "no" ? "noread" : "" ?>">
                            <div class="wrapper-info">
                                <?php if(!empty(user_field($ntf["pengirim"]))): ?>
                                <div class="profile"><img src="<?= base_url() ?>assets/canvases/profile/<?= user_field($ntf["pengirim"])["profile"] == "" ? "profile.png" : user_field($ntf["pengirim"])["profile"] ?>" alt=""></div>
                                <div class="info">
                                    <div class="title">Bot Arsip Surat Keluar</div>
                                    <div class="message mb-3"><i class='bx bx-export'></i>Surat Keluar From: <?= user_field($ntf["pengirim"])["username"] ?> </div>
                                    <div class="time"><i class='bx bxs-time-five' ></i> <?= $ntf["updated_at"] ?></div>
                                </div>
                                <?php else: ?>
                                <div class="profile"><img src="<?= base_url() ?>assets/canvases/profile/profile.png" alt=""></div>
                                <div class="info">
                                    <div class="title">Bot Arsip Surat Keluar</div>
                                    <div class="message mb-3"><i class='bx bx-export'></i>Surat Keluar From: Users Diblock </div>
                                    <div class="time"><i class='bx bxs-time-five' ></i> Kadarluarsa</div>
                                </div>
                                <?php endif; ?>
                            </div>
                            <div class="option">
                                <button><i class='bx bx-folder-open' ></i></button>
                            </div>
                        </div>
                        <?php endif; ?>
                    <!-- End -->
                    <?php endif; ?>
                <?php endif; ?>
                <?php endforeach; ?>


            </div>
            <div class="card-footer">
                <div class="text"><a user-id="<?= user()->id ?>" class="bersihkansemua" href="#">Bersihkan</a></div>
            </div>
        </div>
        <!-- End Notification Menu -->

        <div class="profile">
            <div class="profile-text"><?= user()->username; ?></div>
            <img src="<?= base_url() ?>assets/canvases/profile/<?= user()->profile == "" ? "profile.png" : user()->profile ?>" width="30" alt="" class="profile-img rounded-circle">
        </div>
    </div>
</nav>


<?= $this->section("js"); ?>
    <script src="<?= base_url() ?>assets/dropper/read_notifikasi.js"></script>
<?= $this->endSection(); ?>