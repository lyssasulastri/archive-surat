<?= $this->extend("/main/dashboard/dashboard.php"); ?>
<?= $this->section("contents"); ?>
<div class="container">
    <div class="row mb-3">
        <div class="welcome-message">
            <div class="title"><i class='bx bx-chart'></i><span>Sistem Surat Dan Archive</span></div>
            <div class="description">Halaman Pengaturan Berisi Informasi Profile</div>
        </div>
    </div>

    <div class="wrapper-profile mb-5">
        <div class="profile">
            <div class="header">
                <div class="title">
                    <i class='bx bx-user'></i>
                    <span>Data Diri</span>
                </div>
            </div>
            <div class="body">
                <div class="logo">
                    <img id="preview" class="rounded-circle" src="<?= base_url() ?>assets/canvases/profile/<?= user()->profile == "" ? "profile.png" : user()->profile ?>" alt="" class="logo">
                </div>
                <div class="description">JPG Dan PNG</div>
                <div class="button-filemanager"><button  onclick="document.getElementById('profile').click()" class="btn btn-outline-primary">Cari File</button></div>
                <input type="file" id="profile" old-name="<?= user()->profile ?>" user-id="<?= user()->id ?>" name="profile" style="display:none;">
            </div>
        </div>
        <div class="data">
            <div class="header">
                <div class="title">
                    <i class='bx bx-user-pin' ></i>
                    <span>Detail Data Diri</span>
                </div>
            </div>
            <form method="post" action="/update-account">
            <div class="body">
                <div class="box-alert">
                    <?php if (session()->getFlashdata('alert') == "Update-Success") : ?>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Profile Anda</strong> Berhasil Diupdate.
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    <?php endif; ?>
                </div>
                <input type="hidden" name="user_id" value="<?= user()->id ?>">
                <div class="form-inputan">
                    <div class="mb-3 has-validation">
                        <label for="username" class="form-label">Nama Users</label>
                        <input type="text" class="form-control <?= errmsg("username") ? 'is-invalid' : '' ?>" id="username" name="username" placeholder="username" value="<?= old("username") == '' ? user()->username : old("username") ?>" required>
                        <div class="invalid-feedback">
                            <?= errmsg("username") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <div class="mb-3">
                        <label for="fullname" class="form-label">Nama Lengkap</label>
                        <input type="text" class="form-control <?= errmsg("fullname") ? 'is-invalid' : '' ?>" id="fullname" name="fullname" placeholder="fullname" value="<?= old("fullname") == '' ? user()->fullname : old("fullname") ?>" required>
                        <div class="invalid-feedback">
                            <?= errmsg("fullname") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <div class="mb-3">
                        <label for="email" class="form-label">Alamat Surat</label>
                        <input type="email" class="form-control <?= errmsg("email") ? 'is-invalid' : '' ?>" id="email" name="email" placeholder="email" value="<?= old("email") == '' ? user()->email : old("email") ?>" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                        <div class="invalid-feedback">
                            <?= errmsg("email") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <div class="mb-3">
                        <label for="nohp" class="form-label">Nomor HP</label>
                        <input type="text" class="form-control <?= errmsg("nohp") ? 'is-invalid' : '' ?>" id="nohp" name="nohp" placeholder="No Hp" value="<?= old("nohp") == '' ? user()->nohp : old("nohp") ?>" pattern="^((\+62)|0)[2-9][0-9]{7,10}$" required>
                        <div class="invalid-feedback">
                            <?= errmsg("nohp") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <div class="mb-3">
                        <label for="location" class="form-label">Lokasi</label>
                        <input type="text" class="form-control <?= errmsg("location") ? 'is-invalid' : '' ?>" id="location" name="location" placeholder="Lokasi" value="<?= old("location") == '' ? user()->location : old("location") ?>"  required>
                        <div class="invalid-feedback">
                            <?= errmsg("location") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <div class="mb-3">
                        <label for="jabatan" class="form-label">Jabatan</label>
                        <input type="text" class="form-control <?= errmsg("jabatan") ? 'is-invalid' : '' ?>" id="jabatan" name="jabatan" placeholder="jabatan" value="<?= old("jabatan") == '' ? user()->jabatan : old("jabatan") ?>" required> 
                        <div class="invalid-feedback">
                            <?= errmsg("jabatan") ?>
                        </div>
                    </div>
                </div>
                <div class="form-inputan">
                    <button type="submit" class="submit-btn btn btn-outline-primary">Rubah</button>
                </div>
            </div>
            </form>
        </div>
    </div>

</div>
<?= $this->endSection(); ?>


<!-- disimpan kedalam segment/footer -->
<?= $this->section("modal"); ?>
    <?= $this->include("/sub-content/preview_image.php"); ?>
<?= $this->endSection(); ?>