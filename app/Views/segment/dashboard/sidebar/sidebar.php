<div class="sidebar">
    <i class='bx bx-x'></i>
    <div class="top-menu">
        <img width="100" src="<?= base_url() ?>/assets/canvases/logo-rounded.png" alt="" class="logo">
        <div class="title">KANTOR CAMAT<br>SUNGAI SEMBILAN</div class="title">
        <div class="description">Arsip v1.0</div>
    </div>
    <div class="bottom-menu">
        <ul class="wrapper">
            <li class="menu">
                <a class="<?= ($active_menu == 'dashboard') ? 'active' : ''; ?>" href="/">
                    <i class='bx bx-home'><span>Dashboard</span></i>
                </a>
                <ul class="content"></ul>
            </li>
            <li class="submenu">
                <a class="button" href="#">
                    <i class='bx bx-envelope'><span>Persuratan</span></i>
                    <i class='arrow bx bxs-chevron-right'></i>
                </a>
                <ul class="content <?= ($active_menu == 'persuratan') ? 'show' : ''; ?>">
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'suratmasuk') ? 'active' : ''; ?>" href="/suratmasuk">
                            <i class='bx bx-import'><span>Surat Masuk</span></i>
                            <span class="arrow notif"><span class="surat-masuk rounded-circle">
                                <?php $no_suratmasuk = 1; ?>
                                <?php foreach($surat as $sr): ?>
                                    <?php if($sr["jenis"] == "surat masuk"): ?>
                                        <?php if($sr["penerima"] == user()->id): ?>
                                            <?php if($sr["is_read"] == "no"): ?>
                                                <?php if($sr["is_ready"] == "siap"): ?>
                                                    <?php $nosuratmasuk = $no_suratmasuk++; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                                <?php  
                                    if(!empty($nosuratmasuk)){
                                        echo $nosuratmasuk;
                                    }
                                ?>
                            </span></span>
                        </a>
                    </li>
                    <!-- ~ -->
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'suratkeluar') ? 'active' : ''; ?>" href="/suratkeluar">
                            <i class='bx bx-export' ><span>Surat Keluar</span></i>
                            <span class="arrow notif"><span class="surat-keluar rounded-circle">
                                <?php $no_suratkeluar = 1; ?>
                                <?php foreach($surat as $sr): ?>
                                    <?php if($sr["jenis"] == "surat keluar"): ?>
                                        <?php if($sr["penerima"] == user()->id): ?>
                                            <?php if($sr["is_read"] == "no"): ?>
                                                <?php if($sr["is_ready"] == "siap"): ?>
                                                    <?php $nosuratkeluar = $no_suratkeluar++; ?>
                                                <?php endif; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                                <?php  
                                    if(!empty($nosuratkeluar)){
                                        echo $nosuratkeluar;
                                    }
                                ?>
                            </span></span>
                        </a>
                    </li>
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'terkirim') ? 'active' : ''; ?>" href="/terkirim">
                            <i class='bx bx-check-square'><span>Terkirim</span></i>    
                            <span class="arrow notif"><span class="surat-keluar rounded-circle">
                                <?php $no_riwayat = 1; ?>
                                <?php foreach($riwayat as $rw): ?>
                                    <?php if($rw["user_id"] == user()->id): ?>
                                        <?php if($rw["is_read"] == "no"): ?>
                                            <?php if($rw["is_ready"] == "siap"): ?>
                                                <?php $noriwayat = $no_riwayat++; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                                
                                <?php  
                                    if(!empty($noriwayat)){
                                        echo $noriwayat;
                                    }
                                ?>
                            </span></span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="submenu">
                <a class="button" href="#">
                    <i class='bx bx-cog'><span>Pengaturan</span></i>
                    <i class='arrow bx bxs-chevron-right'></i>
                </a>
                <ul class="content <?= ($active_menu == 'pengaturan') ? 'show' : ''; ?>">
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'myprofile') ? 'active' : ''; ?>" href="profile">
                            <i class='bx bx-user' ><span>Data Diri</span></i>
                        </a>
                    </li>
                    <?php if(user()->rules != "user" && user()->rules != "" && user()->rules != "petugas"): ?>
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'petugas') ? 'active' : ''; ?>" href="petugas">
                            <i class='bx bxs-shield-plus'><span>Petugas</span></i>
                        </a>
                    </li>
                    <?php endif; ?>
                    <!-- ~ -->
                    <li class="menu">
                        <a class="<?= ($active_submenu == 'jenis_surat') ? 'active' : ''; ?>" href="jenis">
                            <i class='bx bx-file'><span>Sifat Surat</span></i>
                        </a>
                    </li>
                </ul>
            </li>

            <?php if(user()->rules != "user" && user()->rules != "" ): ?>
            <li class="menu">
                <a class="<?= ($active_menu == 'archive') ? 'active' : ''; ?>" href="archive">
                    <i class='bx bx-archive'><span>Arsip Surat</span></i>
                </a>
                <ul class="content"></ul>
            </li>
            <?php endif; ?>
            <li class="menu">
                <a class="" href="/logout">
                    <i class='bx bx-log-out' ><span>Keluar</span></i>
                </a>
                <ul class="content"></ul>
            </li>
        </ul>
    </div>
</div>
