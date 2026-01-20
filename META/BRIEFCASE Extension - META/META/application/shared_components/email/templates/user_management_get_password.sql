prompt --application/shared_components/email/templates/user_management_get_password
begin
--   Manifest
--     REPORT LAYOUT: USER MANAGEMENT GET PASSWORD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(1378587738860029921)
,p_name=>'USER MANAGEMENT GET PASSWORD'
,p_static_id=>'USER_MANAGEMENT_GET_PASSWORD'
,p_version_number=>2
,p_subject=>'[Mendapatkan Password] Informasi Akun di Sistem #APP_NAME# - META'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'  <meta charset="UTF-8">',
'  <title>Account Password Request</title>',
'</head>',
'<body style="margin:0; padding:0; background-color:#f4f6f9;">',
'  <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#f4f6f9" style="padding:20px 0;">',
'    <tr>',
'      <td align="center">',
'        <!-- Outer container -->',
'        <table width="600" cellpadding="0" cellspacing="0" border="0" style="background-color:#ffffff; border-collapse:collapse;">',
'          ',
'          <!-- Header -->',
'          <tr>',
'            <td align="center" bgcolor="#005caa" style="padding:20px; color:#ffffff; font-family:Arial, sans-serif;">',
'              <h2 style="margin:0; font-size:22px; line-height:1.4;">Selamat Datang di <strong>#APP_NAME#</strong></h2>',
'              <p style="margin:5px 0 0 0; font-size:14px;">Akun Anda telah dibuat</p>',
'            </td>',
'          </tr>',
'',
'          <!-- Body Content -->',
'          <tr>',
'            <td style="padding:25px; font-family:Arial, sans-serif; font-size:15px; color:#333333;">',
'              <p style="margin:0 0 15px 0;">Salam Bapak/Ibu <strong>#USERNAME#</strong>,</p>',
'              <p style="margin:0 0 15px 0;">',
'                Berikut adalah informasi akun Anda untuk login ke sistem <strong>#APP_NAME#</strong>:',
'              </p>',
'',
'              <!-- Info Box -->',
'              <table cellpadding="5" cellspacing="0" border="0" width="100%" style="border-collapse:collapse; border:1px solid #b3d8ff; background-color:#e9f4ff;">',
'                <tr>',
'                  <td width="150" style="font-weight:bold; font-family:Arial, sans-serif;">Username</td>',
'                  <td style="font-family:Arial, sans-serif;">:</td>',
'                  <td style="font-family:Arial, sans-serif;">#USERNAME#</td>',
'                </tr>',
'                <tr>',
'                  <td style="font-weight:bold; font-family:Arial, sans-serif;">Email</td>',
'                  <td style="font-family:Arial, sans-serif;">:</td>',
'                  <td style="font-family:Arial, sans-serif;">#EMAIL#</td>',
'                </tr>',
'                <tr>',
'                  <td style="font-weight:bold; font-family:Arial, sans-serif;">Role</td>',
'                  <td style="font-family:Arial, sans-serif;">:</td>',
'                  <td style="font-family:Arial, sans-serif;">#ROLE#</td>',
'                </tr>',
'                <tr>',
'                  <td style="font-weight:bold; font-family:Arial, sans-serif;">Status</td>',
'                  <td style="font-family:Arial, sans-serif;">:</td>',
'                  <td style="font-family:Arial, sans-serif;">#STATUS#</td>',
'                </tr>',
'                <tr>',
'                  <td style="font-weight:bold; font-family:Arial, sans-serif;">Password</td>',
'                  <td style="font-family:Arial, sans-serif;">:</td>',
'                  <td style="font-family:Arial, sans-serif;">#PASSWORD#</td>',
'                </tr>',
'              </table>',
'',
'              <p style="margin:20px 0;">Silakan login menggunakan informasi di atas. Demi keamanan, harap segera mengganti password Anda setelah login pertama.</p>',
'',
'              <!-- Login Button -->',
'              <table cellpadding="0" cellspacing="0" border="0" align="center">',
'                <tr>',
'                  <td align="center" bgcolor="#005caa" style="border-radius:5px;">',
'                    <a href="#LOGIN_LINK#" target="_blank"',
'                      style="display:inline-block; padding:12px 24px; font-size:16px; font-family:Arial, sans-serif; ',
'                      color:#ffffff; text-decoration:none; background-color:#005caa; border-radius:5px;">',
'                      Login ke Sistem',
'                    </a>',
'                  </td>',
'                </tr>',
'              </table>',
'',
'            </td>',
'          </tr>',
'',
'          <!-- Footer -->',
'          <tr>',
'            <td bgcolor="#f1f1f1" align="center" style="padding:15px; font-size:12px; font-family:Arial, sans-serif; color:#888888;">',
'              Email ini dikirim otomatis oleh sistem. Jika Anda merasa tidak mengenali email ini, segera hubungi administrator.',
'            </td>',
'          </tr>',
'',
'        </table>',
'        <!-- End container -->',
'      </td>',
'    </tr>',
'  </table>',
'</body>',
'</html>',
''))
,p_version_scn=>39509335954867
);
wwv_flow_imp.component_end;
end;
/
