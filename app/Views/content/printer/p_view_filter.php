
<html>
<head>
    <title>Hasil Filter Range Tanggal Disposisi</title>
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
    </style>
</head>
<body>
    <h2>Laporan Hasil Filter Tanggal</h2>
    <?php if (!empty($disposisi)): ?>
        <table>
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
                </tr>
            </thead>
            <tbody>
            <?php $i = 1; ?>
                <?php foreach ($disposisi as $dpp) : ?>
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
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    <?php else: ?>
        <p>Tidak ada data yang sesuai dengan range tanggal yang dipilih.</p>
    <?php endif; ?>
</body>
</html>