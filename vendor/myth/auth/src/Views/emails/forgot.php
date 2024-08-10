<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aktivasi Akun</title>
</head>
<body style="background-color: #f2f2f2; font-family: Arial, sans-serif;">
    <table style="width: 100%; max-width: 600px; margin: 0 auto; background-color: #ffffff;">
        <tr>
            <td style="padding: 20px; text-align: center; background-color: #4285f4; color: #ffffff;">
                <img src="[Insert Your Logo URL]" alt="" style="height: 50px;">
            </td>
        </tr>
        <tr>
            <td style="padding: 20px;">
                <p style="font-size: 18px; line-height: 1.5; margin-bottom: 20px;">Halo Client Archive Surat,</p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Seseorang meminta pengaturan ulang kata sandi di alamat email ini untuk <?= site_url() ?></p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Untuk mengatur ulang kata sandi, gunakan kode atau URL ini dan ikuti petunjuknya.</p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Your Code: <b><?= $hash ?></b></p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Visit the <a href="<?= url_to('reset-password') . '?token=' . $hash ?>">Reset Form</a>.</p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Jika Anda tidak meminta pengaturan ulang kata sandi, Anda dapat mengabaikan email ini dengan aman.</p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Terima kasih,</p>
                <p style="font-size: 16px; line-height: 1.5;">Archive Surat</p>
            </td>
        </tr>
        <tr>
            <td style="padding: 20px; text-align: center; background-color: #f2f2f2; color: #555555;">
                <p style="font-size: 12px; line-height: 1.5;">Email ini dikirimkan secara otomatis Oleh Situs <?= site_url() ?>. Mohon tidak mengirimkan balasan ke email ini.</p>
            </td>
        </tr>
    </table>
</body>
</html>
