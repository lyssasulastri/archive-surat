<?php 
$pdf = false;
if(strpos(current_url(), "printpdf")) {
   $pdf = true;
}
if($pdf = false) {
?>
   <a class="nav-link active" aria-current="page" onclick="window.open('<?php echo site_url('C_Dashboard/printpdf') ?>', 'blank')" href="#"><b>Print</b></a>
<?php } ?>

<style>
   body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table tr th {
         background: #ddd;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
        }

   @page {
      margin: 10px 0;
   }

  
</style>

<h2 style="margin-left: 30px;">Laporan</h2>
<div class="body">
<?php if (!empty($disposisi)): ?>
   <table class="table">
      <thead>
            <tr>
               <th scope="col">No</th>
               <th scope="col">Jabatan Pengirim</th>
               <th scope="col">Pengirim</th>
               <th scope="col">Waktu</th>
               <th scope="col">Jabatan Penerima</th>
               <th scope="col">Penerima</th>
               <th scope="col">Status</th>
               <th scope="col">Jenis Surat</th>
               <th scope="col">Sifat Surat</th>
               <th scope="col">No. Surat</th>
               <!-- <th scope="col">Keterangan</th> -->
               <!-- <th scope="col">Aksi</th> -->
            </tr>
      </thead>
      <tbody>
            <?php $i = 1; ?>
            <?php foreach($disposisi as $dpp): ?>
               
               
                  <tr>
                        <td scope="row"><?= $i++ ?></td>
                        <td><span class="badge text-bg-primary"><?= $dpp["jabatan_pengirim"] ?></span></td>
                        <td><?= $dpp["pengirim"] ?></td>
                        <td><?= $dpp["updated_at"] ?></td>
                        <td><span class="badge text-bg-info"><?= $dpp["jabatan_penerima"] ?></span></td>
                        <td><?= $dpp["penerima"] ?></td>
                        <td><span class="badge text-bg-warning">Disposisi</span></td>
                        <td><span class="badge text-bg-primary">Surat Masuk</span></td>
                        <td><span class="badge text-bg-secondary">Biasa</span></td>                        
                        <td><span class="badge text-bg-secondary"><?= $dpp["nomor_surat"] ?></span></td>
                        <!-- <td><span class="badge text-bg-info">. . .</span></td>   -->
                  </tr>
               
            <?php endforeach; ?>
      </tbody>
   </table>
   <?php else: ?>
        <p>Tidak ada data yang sesuai dengan range tanggal yang dipilih.</p>
    <?php endif; ?>
</div>