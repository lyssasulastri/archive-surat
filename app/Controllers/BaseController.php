<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

// Ditambahkan
use App\Models\M_users;
use App\Models\M_jenis;
use App\Models\M_riwayat;
use App\Models\M_surat;
use App\Models\M_document;
use App\Models\M_notifikasi;
use App\Models\M_foldername;
use App\Models\M_count_surat;
use App\Models\M_disposisi;
use \Dompdf\Dompdf;


/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = ["auth", "user"];

    /**
     * Be sure to declare properties for any property fetch you initialized.
     * The creation of dynamic property is deprecated in PHP 8.2.
     */
    // protected $session;

    /**
     * Constructor.
     */

    protected $M_users;
    protected $M_jenis;
    protected $M_riwayat;
    protected $M_surat;
    protected $M_document;
    protected $M_notifikasi;
    protected $M_foldername;
    protected $M_count_surat;
    protected $M_disposisi;

    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.
        // E.g.: $this->session = \Config\Services::session();
        session();
        $this->M_users      = new M_users();
        $this->M_jenis      = new M_jenis();
        $this->M_riwayat    = new M_riwayat();
        $this->M_surat      = new M_surat();
        $this->M_document   = new M_document();
        $this->M_notifikasi = new M_notifikasi();
        $this->M_foldername = new M_foldername();
        $this->M_count_surat = new M_count_surat();
        $this->M_disposisi  = new M_disposisi();
    }
}
