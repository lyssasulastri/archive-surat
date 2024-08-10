<?= $this->extend("/segment/dashboard/pages/pages.php"); ?>
<?= $this->section("main"); ?>
 <div class="wrapper">
    <!-- navbar -->
    <?= $this->include("/segment/dashboard/navbar/navbar.php"); ?>
    <!-- end navbar -->
    
    <!-- sidebar -->
    <?= $this->include("/segment/dashboard/sidebar/sidebar.php"); ?>
    <!-- end sidebar -->
    
    <!-- contents -->
    <div id="contents" class="contents">
        <!-- header -->
        <?= $this->include("/segment/dashboard/header/header"); ?>
        <!-- end header -->

        <!-- render content -->
        <?= $this->renderSection("contents"); ?>
        <!-- render content -->
    </div>
    <!-- end content -->

    <!-- footer -->
    <?= $this->include("/segment/dashboard/footer/footer"); ?>
    
</div>

<?= $this->endSection(); ?>

<?= $this->section("css"); ?>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="<?= base_url() ?>assets/themes/main.css" type="text/css">
    
<?= $this->endSection(); ?>

<?= $this->section("js"); ?>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
    <script src="<?= base_url() ?>assets/dropper/custom-popper.js"></script>
    <script src="<?= base_url() ?>assets/dropper/sidebar-toggle.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
<?= $this->endSection(); ?>