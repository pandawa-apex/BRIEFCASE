prompt --application/pages/page_08891
begin
--   Manifest
--     PAGE: 08891
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1468196320002782
,p_default_application_id=>101
,p_default_id_offset=>11904843373585791
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>8891
,p_name=>'Reset New Password'
,p_alias=>'RESET-NEW-PASSWORD'
,p_step_title=>'Reset New Password'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* -------------------------------------------------------------------------------------------- */',
'',
'.t-Login-logo.fa-lock-password {',
'    /* background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important; */',
'    background: linear-gradient(45deg, #00dbde, #fc00ff);',
'    -webkit-background-clip: text !important;',
'    background-clip: text !important;',
'    -webkit-text-fill-color: transparent !important;',
'    color: transparent !important;',
'    font-size: 3rem !important;',
'    margin-bottom: 10px !important;',
'    transition: all 0.3s ease;',
'}',
'',
'.t-Login-logo.fa-lock-password:hover{',
'    transform: translateY(-10px);',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#t_Alert_Notification {',
'    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;',
'    color: #fff;',
'    backdrop-filter: blur(5px) !important;',
'    -webkit-backdrop-filter: blur(5px) !important;',
'    background-color: rgba(102, 126, 234, 0.9) !important;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.apex-item-icon {',
'        position: absolute;',
'        right: 15px;',
'        color: #00dbde;',
'        z-index: 2;',
'        padding-top: 17px;',
'        padding-bottom: 10px;',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'html, body {',
'    margin: 0 !important;',
'    padding: 0 !important;',
'    width: 100% !important;',
'    height: 100% !important;',
'    min-height: 100vh !important;',
'    overflow: auto !important;',
'    position: relative !important;',
'}',
'',
'#matrixCanvas {',
'    position: fixed !important;',
'    top: 0 !important;',
'    left: 0 !important;',
'    width: 100% !important;',
'    height: 100% !important;',
'    z-index: -1 !important;',
'    pointer-events: none !important;',
'}',
'',
'.t-Login-container {',
'    display: flex !important;',
'    flex-direction: column !important;',
'    justify-content: center !important;',
'    align-items: center !important;',
'    min-height: 100vh !important;',
'    padding: 20px !important;',
'    box-sizing: border-box !important;',
'    position: relative !important;',
'    z-index: 1 !important;',
'}',
'',
'.t-Login-bg {',
'    display: none !important;',
'}',
'',
'.t-Login-bgImg {',
'    display: none !important;',
'}',
'',
'.t-Button-label, .text_field::placeholder {',
'    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.5) !important;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'body, .t-PageBody, .t-PageBody--login {',
'    background: ',
'        radial-gradient(ellipse at 20% 50%, ',
'            rgba(0, 120, 200, 0.4) 0%,',
'            rgba(0, 100, 180, 0.3) 15%,',
'            rgba(0, 80, 160, 0.2) 30%,',
'            rgba(0, 60, 140, 0.1) 45%,',
'            transparent 60%),',
'        ',
'        radial-gradient(ellipse at 80% 50%, ',
'            rgba(120, 0, 200, 0.4) 0%,',
'            rgba(100, 0, 180, 0.3) 15%,',
'            rgba(80, 0, 160, 0.2) 30%,',
'            rgba(60, 0, 140, 0.1) 45%,',
'            transparent 60%),',
'        ',
'        radial-gradient(ellipse at 50% 50%, ',
'            rgba(255, 255, 255, 0.15) 0%,',
'            rgba(200, 100, 255, 0.1) 15%,',
'            rgba(100, 200, 255, 0.08) 25%,',
'            rgba(200, 150, 255, 0.06) 35%,',
'            rgba(150, 100, 255, 0.04) 45%,',
'            rgba(100, 100, 200, 0.02) 55%,',
'            transparent 65%),',
'        ',
'        linear-gradient(135deg, ',
'            #000008 0%, ',
'            #050520 20%, ',
'            #0a0a30 40%, ',
'            #0f0f40 60%, ',
'            #141450 80%, ',
'            #191960 100%) !important;',
'    ',
'    background-attachment: fixed !important;',
'    background-size: cover !important;',
'    background-repeat: no-repeat !important;',
'    min-height: 100vh !important;',
'    margin: 0 !important;',
'    padding: 0 !important;',
'}',
'',
'body::after {',
'    content: '''';',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    background: ',
'        radial-gradient(ellipse at 25% 50%, ',
'            rgba(0, 80, 160, 0.08) 0%,',
'            transparent 40%),',
'        ',
'        radial-gradient(ellipse at 75% 50%, ',
'            rgba(80, 0, 160, 0.08) 0%,',
'            transparent 40%),',
'        ',
'        radial-gradient(circle at 50% 50%, ',
'            rgba(255, 255, 255, 0.05) 0%,',
'            rgba(180, 100, 255, 0.03) 15%,',
'            rgba(100, 180, 255, 0.02) 30%,',
'            transparent 45%);',
'    ',
'    z-index: -1;',
'    pointer-events: none;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* #R4870464076623727 {',
'        position: relative;',
'        border-radius: 15px;',
'        background: rgb(0 0 0 / 22%);',
'        color: #fff;',
'        backdrop-filter: blur(10px);',
'        border: 1px solid rgba(0, 0, 0, 0.2);',
'        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'        overflow: hidden;',
'    } */',
'',
'/* #R4870464076623727_heading {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'} */',
'',
'.t-Login-region {',
'    position: relative;',
'    border-radius: 15px;',
'    background: rgb(0 0 0 / 22%);',
'    color: #fff;',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'.t-Login-title {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'}',
'',
'.t-Alert {',
'    position: relative;',
'    border-radius: 15px;',
'    background: rgb(0 0 0 / 22%);',
'    color: #fff;',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'.t-Alert-title {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'}',
'',
'@keyframes gradientWave {',
'    0% {',
'        background-position: 0% 50%;',
'    }',
'    50% {',
'        background-position: 100% 50%;',
'    }',
'    100% {',
'        background-position: 0% 50%;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#R4870574912623728 {',
'        position: relative;',
'        border-radius: 15px;',
'        background: rgb(0 0 0 / 22%);',
'        color: #fff;',
'        backdrop-filter: blur(10px);',
'        border: 1px solid rgba(0, 0, 0, 0.2);',
'        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'        overflow: hidden;',
'    }',
'',
'#R4870574912623728_heading {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'}',
'',
'@keyframes gradientWave {',
'    0% {',
'        background-position: 0% 50%;',
'    }',
'    50% {',
'        background-position: 100% 50%;',
'    }',
'    100% {',
'        background-position: 0% 50%;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#R4870604135623729{',
'    position: relative;',
'    border-radius: 15px;',
'    background: rgb(0 0 0 / 22%);',
'    color: #fff;',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'#R4870604135623729_heading {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'}',
'',
'@keyframes gradientWave {',
'    0% {',
'        background-position: 0% 50%;',
'    }',
'    50% {',
'        background-position: 100% 50%;',
'    }',
'    100% {',
'        background-position: 0% 50%;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#R4870732535623730{',
'    position: relative;',
'    border-radius: 15px;',
'    background: rgb(0 0 0 / 22%);',
'    color: #fff;',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(0, 0, 0, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'#R4870732535623730_heading {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    font-weight: 700;',
'    position: relative;',
'    display: inline-block;',
'    transition: transform 0.3s ease;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    background-size: 300% 300% !important;',
'    animation: gradientWave 5s ease-in-out infinite;',
'}',
'',
'@keyframes gradientWave {',
'    0% {',
'        background-position: 0% 50%;',
'    }',
'    50% {',
'        background-position: 100% 50%;',
'    }',
'    100% {',
'        background-position: 0% 50%;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.t-Login-title {',
'        font-size: 2rem;',
'        margin: 15px 0 0;',
'        background: linear-gradient(45deg, #00dbde, #fc00ff);',
'        -webkit-background-clip: text;',
'        -webkit-text-fill-color: transparent;',
'        font-weight: 700;',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.text_field, .password {',
'        width: 100%;',
'        padding: 15px 45px 15px 12%;',
'        /* border: none; */',
'        border-radius: 50px;',
'        background: rgba(255, 255, 255, 0.1);',
'        color: #fff;',
'        font-size: 16px;',
'        transition: all 0.3s ease;',
'        border: 1px solid rgba(255, 255, 255, 0.2);',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P8891_CONFIRM_PASSWORD_error{',
'    color: #fff;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.t-Form-itemText {',
'    margin-right: -6px;',
'}',
'',
'.field-icon {',
'    color: #00dbde !important;',
'    right : 30px;',
'    margin-left: -5px;',
'    margin-right: -5px;',
'    margin-top: 4px;',
'    position: relative;',
'    z-index: 2; ',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'/* Button Styling */',
'/* -------------------------------------------------------------------------------------------- */',
'',
'    #submit_button {',
'        width: 100%;',
'        padding: 15px;',
'        border: none;',
'        border-radius: 50px;',
'        background: linear-gradient(45deg, #00dbde, #fc00ff);',
'        color: white;',
'        font-size: 16px;',
'        font-weight: 600;',
'        cursor: pointer;',
'        transition: all 0.3s ease;',
'        box-shadow: 0 10px 20px rgba(0, 219, 222, 0.3);',
'        margin-top: 10px;',
'    }',
'',
'    #submit_button:hover {',
'        transform: translateY(-3px);',
'        box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'    }',
'',
'    #submit_button-label {',
'        color: white;',
'    }',
'',
'/* asdsadsadsa */',
'',
'#go_to_login_success{',
'    width: 100%;',
'    padding: 15px;',
'    border: none;',
'    border-radius: 50px;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff);',
'    color: white;',
'    font-size: 16px;',
'    font-weight: 600;',
'    cursor: pointer;',
'    transition: all 0.3s ease;',
'    box-shadow: 0 10px 20px rgba(0, 219, 222, 0.3);',
'    margin-top: 10px;',
'}',
'',
'#go_to_login_success:hover {',
'    transform: translateY(-3px);',
'    box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'}',
'',
'#go_to_login_success-label {',
'    color: white;',
'}',
'',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#go_to_login_not_found{',
'    width: 100%;',
'    padding: 15px;',
'    border: none;',
'    border-radius: 50px;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff);',
'    color: white;',
'    font-size: 16px;',
'    font-weight: 600;',
'    cursor: pointer;',
'    transition: all 0.3s ease;',
'    box-shadow: 0 10px 20px rgba(0, 219, 222, 0.3);',
'    margin-top: 10px;',
'}',
'',
'#go_to_login_not_found:hover {',
'    transform: translateY(-3px);',
'    box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'}',
'',
'#go_to_login_not_found-label {',
'    color: white;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#go_to_login_invalid{',
'    width: 100%;',
'    padding: 15px;',
'    border: none;',
'    border-radius: 50px;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff);',
'    color: white;',
'    font-size: 16px;',
'    font-weight: 600;',
'    cursor: pointer;',
'    transition: all 0.3s ease;',
'    box-shadow: 0 10px 20px rgba(0, 219, 222, 0.3);',
'    margin-top: 10px;',
'}',
'',
'#go_to_login_invalid:hover {',
'    transform: translateY(-3px);',
'    box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'}',
'',
'#go_to_login_invalid-label {',
'    color: white;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#login_button {',
'    font-size: 16px;',
'    font-weight: 600;',
'    color: #fff;',
'    cursor: pointer;',
'    transition: all 0.3s ease;',
'    width: auto !important;',
'    display: inline-block !important;',
'    padding: 8px 20px !important;',
'    margin: 0 auto !important;',
'}',
'',
'#login_button:hover {',
'    /* background: linear-gradient(45deg, #00dbde, #fc00ff) !important; */',
'    color: #00dbde;',
'    /* -webkit-background-clip: text !important;',
'    background-clip: text !important;',
'    -webkit-text-fill-color: transparent !important; */',
'    /* color: transparent !important; */',
'    transform: translateY(-2px);',
'}',
'',
'.lto43089750525996705_0 {',
'    /* width: auto !important; */',
'    width: fit-content !important;',
'    display: inline-block !important;',
'    border: none;',
'}',
'',
'.col.col-12.apex-col-auto.col-start.col-end {',
'    text-align: center !important;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.g-recaptcha {',
'    margin: 20px 0;',
'    display: flex;',
'    justify-content: center;',
'    transform: scale(0.9);',
'    transform-origin: center;',
'}',
'',
'.g-recaptcha > div > div {',
'    margin: 0 auto;',
'}',
'',
'#captcha_error {',
'    color: #ff6b6b;',
'    font-size: 14px;',
'    margin-top: 10px;',
'    text-align: center;',
'    display: none;',
'    background: rgba(255, 107, 107, 0.1);',
'    padding: 8px 12px;',
'    border-radius: 4px;',
'    border: 1px solid rgba(255, 107, 107, 0.3);',
'}',
'',
'.captcha-container {',
'    background: rgba(255, 255, 255, 0.05);',
'    padding: 15px;',
'    border-radius: 10px;',
'    border: 1px solid rgba(255, 255, 255, 0.1);',
'    margin: 15px 0;',
'}'))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16775307450209518)
,p_plug_name=>'Reset Password'
,p_icon_css_classes=>'fa-lock-password'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'SELECT 1 FROM APX_BF_PASSWORD_RESET WHERE RESET_TOKEN = :P8891_RESET_TOKEN AND STATUS = ''REQUESTED'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16775995820209525)
,p_plug_name=>'&P8891_USER_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME FROM APX_BF_USER',
'WHERE USERNAME = :P8891_USER_NAME'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P8891_USER_NAME'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P8891_USER_NAME IS NOT NULL'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(16776262789209528)
,p_region_id=>wwv_flow_imp.id(16775995820209525)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USERNAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'USERNAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16775418286209519)
,p_plug_name=>'Reset Password Success'
,p_title=>'Reset Password Success!'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>'The password has been successfully reset.'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'SELECT 1 FROM APX_BF_PASSWORD_RESET WHERE RESET_TOKEN = :P8891_RESET_TOKEN AND STATUS = ''SUCCESS'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16775447509209520)
,p_plug_name=>'Go to Login'
,p_icon_css_classes=>'fa-warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'u-textCenter'
,p_location=>null
,p_plug_source=>'Reset Password Token not found.'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P8891_RESET_TOKEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16775575909209521)
,p_plug_name=>'Token Invalid'
,p_icon_css_classes=>'fa-info-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>80
,p_plug_grid_column_css_classes=>'u-textCenter'
,p_location=>null
,p_plug_source=>'Your reset token has been invalid.'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'SELECT 1 FROM APX_BF_PASSWORD_RESET WHERE RESET_TOKEN = :P8891_RESET_TOKEN AND STATUS = ''INVALID'''
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16776827943209533)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submit_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Change Password'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16775800383209523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16775447509209520)
,p_button_name=>'GO_TO_LOGIN_NOT_FOUND'
,p_button_static_id=>'go_to_login_not_found'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Go To Login!'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16775877932209524)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16775418286209519)
,p_button_name=>'GO_TO_LOGIN'
,p_button_static_id=>'go_to_login_success'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Go to Login'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16775733336209522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16775575909209521)
,p_button_name=>'GO_TO_LOGIN_INVALID'
,p_button_static_id=>'go_to_login_invalid'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Go To Login!'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(16777456911209540)
,p_branch_name=>'Go to Login Page 9999'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776072321209526)
,p_name=>'P8891_DISP_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776174266209527)
,p_name=>'P8891_USER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776509446209530)
,p_name=>'P8891_RESET_TOKEN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776598624209531)
,p_name=>'P8891_NEW_PASSWORD'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_prompt=>'New Password'
,p_placeholder=>'Enter your new password '
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776664941209532)
,p_name=>'P8891_CONFIRM_PASSWORD'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16775307450209518)
,p_prompt=>'Confirm New Password'
,p_placeholder=>'Confirm your new password '
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16776959490209535)
,p_name=>'P8891_URL_APP'
,p_item_sequence=>30
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    APEX_UTIL.HOST_URL(NULL)',
'FROM DUAL'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16777054540209536)
,p_name=>'P8891_DATE_SUBMIT'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16777243255209537)
,p_validation_name=>'Validate: Password Match'
,p_validation_sequence=>10
,p_validation=>'RETURN :P8891_NEW_PASSWORD = :P8891_CONFIRM_PASSWORD;'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password dan konfirmasi password tidak cocok.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(16777288367209538)
,p_validation_name=>'Validate: Strong Password'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_error_message VARCHAR2(4000);',
'BEGIN',
'    l_error_message := NULL;',
'    ',
'    IF LENGTH(:P8891_NEW_PASSWORD) < 8 THEN',
'        l_error_message := ''? Password harus minimal 8 karakter<br/>'';',
'    END IF;',
'    ',
'    IF :P8891_NEW_PASSWORD != :P8891_CONFIRM_PASSWORD THEN',
'        l_error_message := l_error_message || ''- Password dan konfirmasi password tidak cocok<br/>'';',
'    END IF;',
'    ',
'    IF NOT REGEXP_LIKE(:P8891_NEW_PASSWORD, ''[A-Z]'') THEN',
'        l_error_message := l_error_message || ''- Minimal 1 huruf besar (A-Z)<br/>'';',
'    END IF;',
'    ',
'    IF NOT REGEXP_LIKE(:P8891_NEW_PASSWORD, ''[a-z]'') THEN',
'        l_error_message := l_error_message || ''- Minimal 1 huruf kecil (a-z)<br/>'';',
'    END IF;',
'    ',
'    IF NOT REGEXP_LIKE(:P8891_NEW_PASSWORD, ''[0-9]'') THEN',
'        l_error_message := l_error_message || ''- Minimal 1 angka (0-9)<br/>'';',
'    END IF;',
'    ',
'    IF NOT REGEXP_LIKE(:P8891_NEW_PASSWORD, ''[^A-Za-z0-9]'') THEN',
'        l_error_message := l_error_message || ''- Minimal 1 simbol (!@#$%^&*(), dll.)<br/>'';',
'    END IF;',
'    ',
'    IF l_error_message IS NOT NULL THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Password tidak memenuhi kriteria:<br/>'' || l_error_message,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            -- ,p_escape_placeholders => FALSE',
'        );',
'        RETURN FALSE;',
'    END IF;',
'    ',
'    RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password kurang kuat.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16777619114209541)
,p_name=>'Disable Inspect'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16807314653589292)
,p_event_id=>wwv_flow_imp.id(16777619114209541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function () {',
'    function showWhiteScreen() {',
'        $(''body'').append(''<div id="whiteScreenOverlay" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: white; z-index: 99999;"></div>'');',
'        setTimeout(function() {',
'            $(''#whiteScreenOverlay'').remove();',
'        }, 3000);',
'    }',
'',
'    $(document).keydown(function (event) {',
'        if (event.keyCode === 123) {',
'            return false;',
'        }',
'        if (event.ctrlKey && event.shiftKey && event.keyCode === 73) {',
'            return false;',
'        }',
'        if (event.keyCode === 44 || event.keyCode === 154) {',
'            showWhiteScreen();',
'            return false;',
'        }',
'        if (event.ctrlKey && event.keyCode === 85) {',
'            return false;',
'        }',
'    });',
'',
'    $(document).on("contextmenu", function (e) {',
'        e.preventDefault();',
'    });',
'',
'    $(window).keyup(function (e) {',
'        if (e.keyCode === 44) {',
'            showWhiteScreen();',
'        }',
'    });',
'});',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16776845767209534)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set date submit for email'
,p_process_sql_clob=>'SELECT TO_CHAR(SYSDATE, ''DD/MM/YYYY'') INTO :P8891_DATE_SUBMIT FROM DUAL;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4872002393623743
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16777430254209539)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Forgot Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_email          VARCHAR2(100);',
'    l_workspace_id   NUMBER;',
'    l_login_link     VARCHAR2(2000);',
'    v_placeholders   VARCHAR2(4000);',
'    ',
'BEGIN',
'    SELECT EMAIL ',
'    INTO l_email ',
'    FROM APX_BF_PASSWORD_RESET ',
'    WHERE RESET_TOKEN = :P8891_RESET_TOKEN ',
'      AND STATUS = ''REQUESTED'';',
'',
'    IF :P8891_NEW_PASSWORD != :P8891_CONFIRM_PASSWORD THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Password dan konfirmasi password tidak cocok.'',',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        RETURN;',
'    END IF;',
'',
'    APX_BF_USER_MGMT_PKG.forgot_password_user_job(',
'        p_username => :P8891_USER_NAME,',
'        p_new_password => :P8891_NEW_PASSWORD',
'    );',
'',
'    UPDATE APX_BF_PASSWORD_RESET',
'    SET STATUS = ''SUCCESS'',',
'        is_used = ''Y'',',
'        used_date = SYSDATE',
'    WHERE RESET_TOKEN = :P8891_RESET_TOKEN;',
'',
'    UPDATE APX_BF_PASSWORD_RESET',
'    SET STATUS = ''INVALID'',',
'        is_used = ''Y'',',
'        used_date = SYSDATE',
'    WHERE EMAIL = l_email ',
'      AND STATUS = ''REQUESTED''',
'      AND RESET_TOKEN != :P8891_RESET_TOKEN;',
'',
'    l_login_link := :P8891_URL_APP || apex_util.prepare_url(p_url => ''f?p=''',
'				|| :APP_ID',
'				|| '':9999:''',
'				|| :APP_SESSION',
'				|| ''::NO::P9999_USERNAME:''',
'                || l_email',
'				|| '''');',
'    ',
'    v_placeholders := ''{"USER_NAME": "'' || UPPER(:P8891_USER_NAME) || ''", ''',
'                    || ''"DATE_SUBMIT": "'' || TO_CHAR(SYSTIMESTAMP AT TIME ZONE ''Asia/Jakarta'', ''DD-MON-YYYY HH24:MI'') || ''", ''',
'                    || ''"LOGIN_LINK": "'' || l_login_link || ''"}'';',
'    ',
'    apex_mail.send(',
'        p_template_static_id => ''USER_RESET_PASSWORD_SUCCESS'',',
'        p_placeholders       => v_placeholders,',
'        p_to                 => l_email,',
'        p_bcc                => ''manuel.nicholas@limamail.net'',',
'        p_from               => ''noreply.briefcase@nusamail.net''',
'    );',
'',
'    COMMIT;',
'    APEX_MAIL.PUSH_QUEUE;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Terjadi kesalahan saat memproses permintaan Anda: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16776827943209533)
,p_process_success_message=>'Reset Password success!'
,p_internal_uid=>4872586880623748
);
wwv_flow_imp.component_end;
end;
/
