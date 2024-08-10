<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Archive Demo: Forgot</title>

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
                                        <h1 class="h4 text-gray-900 mb-2"><?= lang('Auth.forgotPassword') ?></h1>
                                        <?= view('Myth\Auth\Views\_message_block') ?>
                                        <p class="mb-4"><?= lang('Auth.enterEmailForInstructions') ?></p>
                                    </div>
                                    <form action="<?= url_to('forgot') ?>" method="post" class="user">
                                        <?= csrf_field() ?>
                                        <div class="form-group">
                                            <input type="email" name="email" class="form-control <?php if (session('errors.email')) : ?>is-invalid<?php endif ?> form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="<?= lang('Auth.email') ?>">
                                            <div class="invalid-feedback">
                                                <?= session('errors.email') ?>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-dark btn-user btn-block">
                                            <?= lang('Auth.sendInstructions') ?>
                                        </button>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="/register">Buat Akun!</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="/login">Apakah Sudah Ada Akun? Login Disini!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= base_url() ?>vendor/sb-admin/vendor/jquery/jquery.min.js"></script>
    <script src="<?= base_url() ?>vendor/sb-admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= base_url() ?>vendor/sb-admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= base_url() ?>vendor/sb-admin/js/sb-admin-2.min.js"></script>
</body>

</html>