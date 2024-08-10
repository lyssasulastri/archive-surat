<?php  

if(method_exists($this, "user")){
    if(user()->rules != "opd"){
        header("Location: /admin/");
        exit;
    } else {
        header("Location: /opd/");
        exit;  
    }
} 

?>

<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head><base href="../">
		<title>Arsip Surat Digital</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

        <!--begin::Global Stylesheets Bundle(used by all pages)-->
		<link href="<?= base_url() ?>/vendor/start_template/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="<?= base_url() ?>/vendor/start_template/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<link href="<?= base_url() ?>/assets/themes/auth.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="bg-white dumai-berkhidmat-body">
		<!--begin::Main-->
		<div class="d-flex flex-column flex-root">
			<!--begin::Login-->
			<div class="d-flex flex-column flex-lg-row flex-column-fluid" id="kt_login">
				<!--begin::Aside-->
				<div class="d-flex flex-column flex-lg-row-auto bg-dumai_berkhidmat w-lg-600px pt-15 pt-lg-0">
					<!--begin::Aside Top-->
					<div class="d-flex flex-row-fluid flex-center flex-column-auto flex-column text-center mb-5">
						<!--begin::Aside Subtitle-->
						<h3 class="fw-bolder fs-2x text-white lh-lg">KECAMATAN
						<br />SUNGAI SEMBILAN</h3>
						<!--end::Aside Subtitle-->
					</div>
					<!--end::Aside Top-->
					<!--begin::Illustration-->
					<div class="img-ilustration-dumai-berkhidmat d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px" style="background-image: url(<?= base_url() ?>/assets/canvases/vector/auth.png"></div>
					<!--end::Illustration-->
				</div>
				<!--begin::Aside-->
				<!--begin::Content-->
				<div class="login-content flex-lg-row-fluid d-flex flex-column justify-content-center position-relative overflow-hidden py-10 py-lg-20 px-10 p-lg-7 mx-auto mw-450px w-100">
					<!--begin::Wrapper-->
					<div class="d-flex flex-column-fluid flex-center py-10">
                    
                    <?= $this->renderSection("content-auth"); ?>

                    </div>
					<!--end::Wrapper-->
				</div>
				<!--end::Content-->
			</div>
			<!--end::Login-->
		</div>
		<!--end::Main-->
		<script>var hostUrl = "<?= base_url() ?>/vendor/start_template/";</script>
		<!--begin::Javascript-->
		<!--begin::Global Javascript Bundle(used by all pages)-->
		<script src="<?= base_url() ?>/vendor/start_template/plugins/global/plugins.bundle.js"></script>
		<script src="<?= base_url() ?>/vendor/start_template/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Page Custom Javascript(used by this page)-->
		<!-- <script src="<?= base_url() ?>/vendor/start_template/js/custom/general/login.js"></script> -->
		<!--end::Page Custom Javascript-->
		<!--end::Javascript-->
	</body>
	<!--end::Body-->

</html>