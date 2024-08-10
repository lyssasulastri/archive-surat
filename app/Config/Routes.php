<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);
// $routes->setAutoRoute(false);

// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.


/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'C_Dashboard::dashboard');
$routes->get('/suratmasuk', 'C_Dashboard::surat_masuk');
$routes->get('/suratkeluar', 'C_Dashboard::surat_keluar');
$routes->get('/profile', 'C_Dashboard::profile');
$routes->get('/petugas', 'C_Dashboard::petugas');
$routes->get('/jenis', 'C_Dashboard::jenis');
$routes->get('/archive', 'C_Dashboard::archive');
$routes->get('/terkirim', 'C_Dashboard::terkirim');

// Post
$routes->post('/update-profile', 'C_Post::update_profile');
$routes->post('/update-account', 'C_Post::account_detail');
$routes->post('/update-user', 'C_Post::hak_akses');
$routes->post('/update-jenis', 'C_Post::jenis_surat');
$routes->post("/create-folder", "C_Post::create_folder");
$routes->post("/archive-upload-document", "C_Post::archive_upload_document");
$routes->post("/cari-surat", "C_Post::cari_surat");

$routes->post('/', 'C_Dashboard::dashboard');
$routes->post('/suratmasuk', 'C_Dashboard::surat_masuk');
$routes->post('/suratkeluar', 'C_Dashboard::surat_keluar');
$routes->post('/profile', 'C_Dashboard::profile');
$routes->post('/petugas', 'C_Dashboard::petugas');
$routes->post('/jenis', 'C_Dashboard::jenis');
$routes->post('/archive', 'C_Dashboard::archive');
$routes->post('/terkirim', 'C_Dashboard::terkirim');
$routes->post('/', 'C_Dashboard::filter');

// upload surat
$routes->post('/data-surat-masuk', 'C_Post::data_surat_masuk');
$routes->post('/upload-document', 'C_Post::upload_document');
$routes->post('/upload-data-document', 'C_Post::data_document');
$routes->post('/update-read', 'C_Post::update_read');
$routes->post('/update-read-notifikasi', 'C_Post::update_read_notifikasi');


// update
$routes->post('/update-read-all', 'C_Post::update_read_all');
$routes->post('/rename-folder', 'C_Post::rename_folder');
$routes->post('/update-surat-siap', 'C_Post::update_surat_siap');
$routes->post('/edit-sifat-surat', 'C_Post::edit_sifat_surat');


// Remove
$routes->post('/del-categori', 'C_remove::del_categori');
$routes->post('/bersihkan-notifikasi', 'C_remove::delete_notifikasi');
$routes->post('/delete-document-archive', 'C_remove::delete_document_archive');
$routes->post('/delete-foldername', 'C_remove::delete_foldername');
$routes->post('/delete-surat-surat', 'C_remove::delete_surat_surat');
$routes->post('/delete-riwayat-surat', 'C_remove::delete_riwayat_surat');
$routes->post('/block-user', 'C_remove::block_user');
$routes->post('/delete-disposisi', 'C_remove::delete_disposisi');

// match
$routes->match(['get', 'post'], 'C_dashboard/search', 'C_dashboard::search');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}