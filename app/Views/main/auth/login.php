<?= $this->extend("/segment/auth/pages.php"); ?>

<?= $this->section("content-auth"); ?>

<!--begin::Signin Form-->
<form action="<?= url_to('login') ?>" method="post" class="form w-100" novalidate="novalidate"
   id="kt_login_signin_form">
   <!--begin::Title-->
   <?= csrf_field() ?>
   <div class="pb-5 pb-lg-15">
      <h3 class="fw-bolder text-dark display-6">Login Administrator</h3>
      <div class="text-muted fw-bold fs-3">Jika Ingin Daftar?
         <a href="<?= base_url() ?>/register" class="text-dumai-berkhidmat fw-bolder"
            id="kt_login_signin_form_singup_button">Buat Akun</a>
      </div>
   </div>
   <!-- begin::Title -->

   <!--begin::message-->
   <?= view('Myth\Auth\Views\_message_block') ?>
   <!--end::message-->

   <!--begin::Form group-->
   <div class="fv-row mb-10">
      <label class="form-label fs-6 fw-bolder text-dark">Nama User & Email</label>
      <input name="login" type="text" name="email"
         class="form-control form-control-lg form-control-solid shadow-dumai-berkhidmat <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
         autocomplete="off" />
      <div class="invalid-feedback">
         <?= session('errors.login') ?>
      </div>
   </div>
   <!--end::Form group-->
   <!--begin::Form group-->
   <div class="fv-row mb-10">
      <div class="d-flex justify-content-between mt-n5">
         <label class="form-label fs-6 fw-bolder text-dark pt-5">Kata Sandi</label>
         <a href="<?= base_url() ?>/forgot" class="text-dumai-berkhidmat fs-6 fw-bolder pt-5"
            id="kt_login_signin_form_password_reset_button">Lupa Sandi ?</a>
      </div>
      <input
         class="form-control form-control-lg form-control-solid shadow-dumai-berkhidmat <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>"
         type="password" name="password" autocomplete="off" />
      <div class="invalid-feedback">
         <?= session('errors.password') ?>
      </div>
   </div>
   <!--end::Form group-->

   <!--begin::Form group-->
   <div class="fv-row mb-10">
      <div class="form-check form-check-inline form-check-custom form-check-solid mb-5">
         <input class="form-check-input text-dumai-berkhidmat" type="checkbox" name="remember" id="remember-me"
            <?php if (old('remember')) : ?> checked <?php endif ?> />
         <label class="form-check-label fw-bold text-gray-600" for="remember-me">Ingatkan Saya
      </div>
   </div>
   <!--end::Form group-->

   <!--begin::Action-->
   <div class="pb-lg-0 pb-5">
      <button type="submit" id="kt_login_signin_form_submit_button"
         class="btn btn-dumai_berkhidmat fw-bolder fs-6 px-8 py-4 my-3 me-3">Login</button>
      <!-- <button type="button" class="btn btn-light-primary fw-bolder px-8 py-4 my-3 fs-6"> -->
      <!-- <img src="/vendor/start_template/media/svg/brand-logos/google-icon.svg" class="w-20px h-20px me-3" alt="" />Sign in with Google</button> -->
   </div>
   <!--end::Action-->
</form>
<!--end::Signin Form-->

<?= $this->endSection(); ?>