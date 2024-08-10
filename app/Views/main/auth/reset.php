<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Archive Demo: Register</title>

    <!-- Custom fonts for this template-->
    <link href="<?= base_url() ?>vendor/sb-admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= base_url() ?>vendor/sb-admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">
    <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card o-hidden border-0 shadow-lg my-5" style="z-index: 1000;box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4"><?=lang('Auth.resetYourPassword')?></h1>
                                    </div>
                                    <?= view('Myth\Auth\Views\_message_block') ?>

                                    <p><?=lang('Auth.enterCodeEmailPassword')?></p>
                                    <form action="<?= url_to('reset-password') ?>" method="post">
                                        <?= csrf_field() ?>

                                        <div class="form-group">
                                            <label for="token"><?=lang('Auth.token')?></label>
                                            <input type="text" class="form-control <?php if (session('errors.token')) : ?>is-invalid<?php endif ?>"
                                                name="token" placeholder="<?=lang('Auth.token')?>" value="<?= old('token', $token ?? '') ?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.token') ?>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="email"><?=lang('Auth.email')?></label>
                                            <input type="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>"
                                                name="email" aria-describedby="emailHelp" placeholder="<?=lang('Auth.email')?>" value="<?= old('email') ?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.email') ?>
                                            </div>
                                        </div>

                                        <br>

                                        <div class="form-group">
                                            <label for="password"><?=lang('Auth.newPassword')?></label>
                                            <input type="password" class="form-control <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>"
                                                name="password">
                                            <div class="invalid-feedback">
                                                <?= session('errors.password') ?>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="pass_confirm"><?=lang('Auth.newPasswordRepeat')?></label>
                                            <input type="password" class="form-control <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>"
                                                name="pass_confirm">
                                            <div class="invalid-feedback">
                                                <?= session('errors.pass_confirm') ?>
                                            </div>
                                        </div>

                                        <br>

                                        <button type="submit" class="btn btn-primary btn-block"><?=lang('Auth.resetPassword')?></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="<?= base_url() ?>vendor/sb-admin/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url() ?>vendor/sb-admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url() ?>vendor/sb-admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url() ?>vendor/sb-admin/js/sb-admin-2.min.js"></script>

</body>

</html>