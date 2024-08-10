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
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Terima kasih telah mendaftar di Archive Surat. Untuk mengaktifkan akun Anda, silakan klik tombol di bawah:</p>
                <p style="text-align: center;"><a href="<?= url_to('activate-account') . '?token=' . $hash ?>" style="display: inline-block; background-color: #4285f4; color: #ffffff; padding: 10px 20px; border-radius: 5px; text-decoration: none; font-size: 16px;">Activate account</a></p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Segera Aktifkan Account Anda. Jangan berikan Link ini kepada siapapun.</p>
                <p style="font-size: 16px; line-height: 1.5; margin-bottom: 20px;">Jika Anda tidak meminta aktivasi akun ini, Anda dapat mengabaikan email ini.</p>
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
