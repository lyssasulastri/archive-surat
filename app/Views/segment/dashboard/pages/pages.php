<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Arsip Surat Digital</title>
    <link href="<?= base_url() ?>vendor/bootstrap-5.3.0-alpha1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <meta http-equiv="Cache-control" content="max-age=3600">
    <?= $this->renderSection('themes'); ?>
    <?= $this->renderSection('css'); ?>

  </head>
  <body>
    <?= $this->renderSection('main'); ?>

    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <script src="<?= base_url() ?>/vendor/build/pdf.js" data-worker-src="<?= base_url() ?>/vendor/build/pdf.worker.js"></script>
    <script src="<?= base_url() ?>assets/dropper/selectall.js"></script>
    <script src="<?= base_url() ?>assets/dropper/pdfjsLib.js"></script>
    <script src="<?= base_url() ?>assets/dropper/delete_disposisi.js"></script>
    <script src="<?= base_url() ?>vendor/bootstrap-5.3.0-alpha1/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <?= $this->renderSection('js'); ?>

  </body>
</html>