prompt --application/shared_components/email/templates/user_reset_password
begin
--   Manifest
--     EMAIL TEMPLATE: USER RESET PASSWORD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1643206756007669
,p_default_application_id=>104
,p_default_id_offset=>17112880843997265
,p_default_owner=>'EXT'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(52864415612367383)
,p_name=>'USER RESET PASSWORD'
,p_static_id=>'USER_RESET_PASSWORD'
,p_version_number=>2
,p_subject=>'BRIEFCASE User Reset Password - #USER_NAME#'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'    <meta charset="UTF-8">',
'    <title>Permintaan Reset Password</title>',
'</head>',
'<body style="margin: 0; padding: 0; font-family: Arial, sans-serif; background-color: #f4f6f9;">',
'  <table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color: #f4f6f9; padding: 20px;">',
'    <tr>',
'      <td>',
'        <table width="600" cellpadding="0" cellspacing="0" border="0" align="center" style="background-color: #ffffff; border-radius: 5px; overflow: hidden; box-shadow: 0 2px 10px rgba(0,0,0,0.1);">',
'          <!-- Header -->',
'          <tr>',
'            <td style="background-color: #346464; padding: 25px; text-align: center; color: #ffffff;">',
'              <h2 style="margin: 0; font-size: 24px; font-weight: bold;">Permintaan Reset Password</h2>',
'            </td>',
'          </tr>',
'          <!-- Body Content -->',
'          <tr>',
'            <td style="padding: 40px 30px 20px 30px; color: #333333;">',
'              <p>Yth. Bapak/Ibu <strong style="color: #346464;">#USER_NAME#</strong>,</p>',
'',
'              <p>Kami telah menerima permintaan reset password untuk akun <strong>"#USER_NAME#"</strong> pada <strong>#DATE_SUBMIT#</strong> <strong> WIB</strong>.</p>',
'',
'              <p>Silakan klik tombol di bawah ini untuk melanjutkan:</p>',
'',
'              <!--Button -->',
'              <div style="text-align: center; margin: 30px 0;">',
'                <table cellpadding="0" cellspacing="0" border="0" align="center">',
'                  <tr>',
'                    <td align="center" width="200" height="50" bgcolor="#346464" style="background-color: #346464; border-radius: 5px;">',
'                      <a href="#RESET_LINK#" style="font-size: 16px; font-weight: bold; font-family: Arial, sans-serif; color: #ffffff; text-decoration: none; display: inline-block; padding: 15px 35px; line-height: 20px;">',
'                        Reset Password',
'                      </a>',
'                    </td>',
'                  </tr>',
'                </table>',
'              </div>',
'',
'              <p style="text-align: center; color: #666666; font-size: 13px; margin: 15px 0;">',
'                Link alternatif: <span style="word-break: break-all; color: #346464;">#RESET_LINK#</span>',
'              </p>',
'',
'              <div style="background-color: #fff9e6; padding: 15px; border-radius: 5px; margin: 20px 0; border-left: 4px solid #ffc107;">',
'                <p style="margin: 0; color: #856404; font-size: 14px;">',
'                  <strong>Perhatian:</strong> Link ini akan kadaluarsa dalam 24 jam. Jika Anda tidak merasa melakukan permintaan ini, abaikan email ini.',
'                </p>',
'              </div>',
'',
'              <p style="margin-top: 25px;">Hormat kami,<br><strong style="color: #346464;">Tim Support BRIEFCASE</strong></p> ',
'            </td>',
'          </tr>',
'          <tr>',
'            <td style="padding: 0 30px 30px 30px; color: #333333;">',
'              <small style="font-style: italic; color: #888888;">* Pastikan koneksi internet terhubung dengan jaringan kantor atau VPN GlobalProtect.</small>',
'            </td>',
'          </tr>',
'          <!-- Footer --> ',
'          <tr>',
'            <td style="background-color: #f8f9fa; padding: 20px; text-align: center; font-size: 12px; color: #6c757d; border-top: 1px solid #dee2e6;">',
'              <p style="margin: 0;">Email otomatis - Mohon tidak membalas email ini</p>',
'            </td>',
'          </tr>',
'        </table>',
'      </td>',
'    </tr>',
'  </table>',
'</body>',
'</html>'))
,p_version_scn=>39509985559593
);
wwv_flow_imp.component_end;
end;
/
