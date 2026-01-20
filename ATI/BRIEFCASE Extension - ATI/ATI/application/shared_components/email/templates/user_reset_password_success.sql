prompt --application/shared_components/email/templates/user_reset_password_success
begin
--   Manifest
--     EMAIL TEMPLATE: User Reset Password Berhasil
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(16805884041630825)
,p_name=>'User Reset Password Berhasil'
,p_static_id=>'USER_RESET_PASSWORD_SUCCESS'
,p_version_number=>2
,p_subject=>'BRIEFCASE: Reset Password Berhasil! #USER_NAME#'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',
'<html xmlns="http://www.w3.org/1999/xhtml">',
'<head>',
'    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'    <title>Reset Password Berhasil</title>',
'</head>',
'<body style="margin: 0; padding: 20px; font-family: Arial, sans-serif; background-color: #f4f6f9; color: #333333;">',
'    <center>',
'        <table cellpadding="0" cellspacing="0" border="0" width="100%" style="max-width: 600px;">',
'            <!-- Header -->',
'            <tr>',
'                <td bgcolor="#346464" style="padding: 20px; text-align: center; color: #ffffff; font-family: Arial, sans-serif;">',
'                    <h2 style="margin: 0; font-size: 24px; font-weight: bold;">Reset Password Berhasil!</h2>',
'                </td>',
'            </tr>',
'            ',
'            <!-- Body Content -->',
'            <tr>',
'                <td bgcolor="#ffffff" style="padding: 30px; font-family: Arial, sans-serif;">',
'                    <p style="margin: 0 0 15px 0;">Yth. Bapak/Ibu <strong style="color: #346464;">#USER_NAME#</strong>,</p>',
'',
'                    <p style="margin: 0 0 15px 0;">Reset Password atas akun "<strong>#USER_NAME#</strong>" telah berhasil dilakukan pada tanggal <strong>#DATE_SUBMIT# WIB</strong>.</p>',
'',
'                    <p style="margin: 0 0 20px 0;">Silakan klik tombol di bawah ini untuk melanjutkan login ke aplikasi dengan password baru Anda:</p>',
'',
'                    <!-- Button -->',
'                    <table cellpadding="0" cellspacing="0" border="0" width="100%" style="margin: 25px 0;">',
'                        <tr>',
'                            <td align="center">',
'                                <table cellpadding="0" cellspacing="0" border="0">',
'                                    <tr>',
'                                        <td align="center" bgcolor="#346464" style="border-radius: 5px;">',
'                                            <a href="#LOGIN_LINK#" style="display: inline-block; padding: 12px 30px; background-color: #346464; color: #ffffff; text-decoration: none; border-radius: 5px; font-weight: bold; font-size: 16px; font-family'
||': Arial, sans-serif;">',
'                                                Login di sini',
'                                            </a>',
'                                        </td>',
'                                    </tr>',
'                                </table>',
'                            </td>',
'                        </tr>',
'                    </table>',
'',
'                    <!-- Alternative Link -->',
'                    <p style="margin: 15px 0; font-size: 14px; color: #666666;">',
'                        Atau copy dan paste link berikut di browser Anda:<br/>',
'                        <span style="word-break: break-all; color: #346464;">#LOGIN_LINK#</span>',
'                    </p>',
'',
'                    <p style="margin: 0 0 15px 0;">Apabila butuh bantuan, silakan hubungi Tim Support kami dengan segera. Terima kasih.</p>',
'',
'                    <p style="margin: 20px 0 0 0;">Hormat kami,<br/> ',
'                    <strong style="color: #346464;">Admin BRIEFCASE</strong></p> ',
'                </td>',
'            </tr>',
'            ',
'            <!-- Note Section -->',
'            <tr>',
'                <td bgcolor="#ffffff" style="padding: 0 30px 30px 30px; font-family: Arial, sans-serif;">',
'                    <p style="margin: 0; font-style: italic; color: #888888; font-size: 12px;">',
'                        * Tolong pastikan koneksi internet Anda terhubung dengan jaringan kantor. Jika tidak, pastikan Anda terhubung dengan VPN GlobalProtect.',
'                    </p>',
'                </td>',
'            </tr>',
'            ',
'            <!-- Footer -->',
'            <tr>',
'                <td bgcolor="#f9f9f9" style="padding: 20px; text-align: center; font-size: 12px; color: #888888; border-top: 1px solid #eeeeee; font-family: Arial, sans-serif;">',
'                    <p style="margin: 0;">Ini adalah pesan otomatis. Mohon untuk tidak membalas ke email ini.</p>',
'                </td>',
'            </tr>',
'        </table>',
'    </center>',
'</body>',
'</html>'))
,p_version_scn=>39509838843579
);
wwv_flow_imp.component_end;
end;
/
