prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466964046809863
,p_default_application_id=>101
,p_default_id_offset=>18923207992089920
,p_default_owner=>'XTD'
);
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Login Page'
,p_alias=>'LOGIN-PAGE'
,p_step_title=>'Login Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="page-9999 app-BRIEFCASE-EXTENSION" lang="en" style="--js-sticky-top: 0px;">',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge">',
'  <meta charset="utf-8">',
'  <title>BRIEFCASE EXTENSION - Log In</title>',
'  <base href="/ords/">',
'  <link rel="stylesheet" href="/i/app_ui/css/Core.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/app_ui/css/Theme-Standard.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/libraries/font-apex/2.4/css/font-apex.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/themes/theme_42/23.2/css/Core.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/libraries/oracle-fonts/oraclesans-apex.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/themes/theme_42/23.2/css/Redwood.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="/i/themes/theme_42/23.2/css/Redwood-Theme.min.css?v=24.2.0" type="text/css">',
'  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">',
'  ',
'  <style nonce="FEkJQV21Lg7CKdZL593SLg">',
'    * {',
'        margin: 0;',
'        padding: 0;',
'        box-sizing: border-box;',
'    }',
'',
'    body, html {',
'        /* display: flex; */',
'        text-align: center;',
'        justify-content: center;',
'        align-items: center;',
'        /* height: 100vh; */',
'        margin: 0;',
'        font-family: ''Segoe UI'', Tahoma, Geneva, Verdana, sans-serif;',
'        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);',
'        color: #fff;',
'        overflow: hidden;',
'        perspective: 1000px;',
'    }',
'',
'    /* 3D Background Elements */',
'    .floating-elements {',
'        position: fixed;',
'        top: 0;',
'        left: 0;',
'        width: 100%;',
'        height: 100%;',
'        overflow: hidden;',
'        z-index: -1;',
'    }',
'',
'    .floating-element {',
'        position: absolute;',
'        border-radius: 50%;',
'        background: rgba(255, 255, 255, 0.05);',
'        animation: float 15s infinite linear;',
'    }',
'',
'    .floating-element:nth-child(1) {',
'        width: 80px;',
'        height: 80px;',
'        top: 10%;',
'        left: 10%;',
'        animation-delay: 0s;',
'    }',
'',
'    .floating-element:nth-child(2) {',
'        width: 120px;',
'        height: 120px;',
'        top: 70%;',
'        left: 80%;',
'        animation-delay: -5s;',
'    }',
'',
'    .floating-element:nth-child(3) {',
'        width: 60px;',
'        height: 60px;',
'        top: 60%;',
'        left: 15%;',
'        animation-delay: -10s;',
'    }',
'',
'    .floating-element:nth-child(4) {',
'        width: 100px;',
'        height: 100px;',
'        top: 20%;',
'        left: 75%;',
'        animation-delay: -7s;',
'    }',
'',
'    @keyframes float {',
'        0% { transform: translate(0, 0) rotate(0deg); }',
'        25% { transform: translate(20px, 40px) rotate(90deg); }',
'        50% { transform: translate(0, 80px) rotate(180deg); }',
'        75% { transform: translate(-20px, 40px) rotate(270deg); }',
'        100% { transform: translate(0, 0) rotate(360deg); }',
'    }',
'',
'    /* 3D Cube */',
'    .cube-container {',
'        position: absolute;',
'        top: 20%;',
'        right: 10%;',
'        width: 150px;',
'        height: 150px;',
'        perspective: 1000px;',
'        z-index: 1;',
'    }',
'',
'    .cube {',
'        position: relative;',
'        width: 100%;',
'        height: 100%;',
'        transform-style: preserve-3d;',
'        animation: rotate 20s infinite linear;',
'    }',
'',
'    .face {',
'        position: absolute;',
'        width: 100%;',
'        height: 100%;',
'        background: rgba(255, 255, 255, 0.1);',
'        border: 2px solid rgba(255, 255, 255, 0.2);',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'        font-size: 24px;',
'        color: #00dbde;',
'        backdrop-filter: blur(5px);',
'    }',
'',
'    .front { transform: translateZ(75px); }',
'    .back { transform: rotateY(180deg) translateZ(75px); }',
'    .right { transform: rotateY(90deg) translateZ(75px); }',
'    .left { transform: rotateY(-90deg) translateZ(75px); }',
'    .top { transform: rotateX(90deg) translateZ(75px); }',
'    .bottom { transform: rotateX(-90deg) translateZ(75px); }',
'',
'    @keyframes rotate {',
'        0% { transform: rotateX(0) rotateY(0); }',
'        100% { transform: rotateX(360deg) rotateY(360deg); }',
'    }',
'',
'    /* Login Container Styling */',
'    .t-Login-container {',
'        position: relative;',
'        z-index: 2;',
'        width: 100%;',
'        max-width: 450px;',
'        margin: 0 auto;',
'    }',
'',
'    #R762873439855989178 {',
'        position: relative;',
'        border-radius: 15px;',
'        background: rgba(255, 255, 255, 0.1);',
'        color: #fff;',
'        backdrop-filter: blur(10px);',
'        border: 1px solid rgba(255, 255, 255, 0.2);',
'        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'        overflow: hidden;',
'    }',
'',
'    /* .t-Login-header {',
'        padding: 30px 20px 20px;',
'        background: rgba(0, 0, 0, 0.2);',
'    } */',
'',
'    .t-Login-title {',
'        font-size: 2rem;',
'        margin: 15px 0 0;',
'        background: linear-gradient(45deg, #00dbde, #fc00ff);',
'        -webkit-background-clip: text;',
'        -webkit-text-fill-color: transparent;',
'        font-weight: 700;',
'    }',
'',
'    .t-Login-logo {',
'        width: 80px;',
'        height: 80px;',
'        border-radius: 50%;',
'        background: rgba(255, 255, 255, 0.1);',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        margin: 0 auto;',
'        font-size: 40px;',
'        color: #00dbde;',
'    }',
'',
'    .t-Login-body {',
'        padding: 20px 30px 30px;',
'    }',
'',
'    /* Typewriter Effect */',
'    .typewriter-container {',
'        display: flex;',
'        justify-content: center;',
'        align-items: center;',
'        margin-bottom: 20px;',
'    }',
'',
'    .typewriter-text {',
'        font-size: 1.8em;',
'        font-weight: bold;',
'        color: #6ec2c8;',
'        white-space: nowrap;',
'        overflow: hidden;',
'        clip-path: inset(0 100% 0 0);',
'        animation: typing 4s steps(30, end) forwards, blink-caret 0.5s step-end infinite;',
'    }',
'',
'    @keyframes typing {',
'        from { ',
'            clip-path: inset(0 100% 0 0);',
'        }',
'        to { ',
'            clip-path: inset(0 0% 0 0);',
'        }',
'    }',
'',
'    @keyframes blink-caret {',
'        from, to { ',
'            border-color: transparent; ',
'        }',
'        50% { ',
'            border-color: #333; ',
'        }',
'    }',
'',
'    /* Form Styling */',
'    .t-Form-fieldContainer {',
'        margin-bottom: 20px;',
'    }',
'',
'    .text_field, .password {',
'        width: 100%;',
'        padding: 15px 45px 15px 15px;',
'        border: none;',
'        border-radius: 50px;',
'        background: rgba(255, 255, 255, 0.1);',
'        color: #fff;',
'        font-size: 16px;',
'        transition: all 0.3s ease;',
'        border: 1px solid rgba(255, 255, 255, 0.2);',
'    }',
'',
'    .text_field:focus, .password:focus {',
'        outline: none;',
'        background: rgba(255, 255, 255, 0.15);',
'        box-shadow: 0 0 10px rgba(0, 219, 222, 0.5);',
'    }',
'',
'    .text_field::placeholder, .password::placeholder {',
'        color: rgba(255, 255, 255, 0.7);',
'    }',
'',
'    .apex-item-icon {',
'        position: absolute;',
'        right: 15px;',
'        top: 50%;',
'        transform: translateY(-50%);',
'        color: #00dbde;',
'        z-index: 2;',
'    }',
'',
'    .t-Form-itemWrapper {',
'        position: relative;',
'    }',
'',
'    .field-icon {',
'        position: absolute;',
'        display: contents;',
'        right: 3vh;',
'        top: 50%;',
'        transform: translateY(-50%);',
'        cursor: pointer;',
'        color: #00dbde !important;',
'        z-index: 3;',
'    }',
'',
'    /* Checkbox Styling */',
'    .u-checkbox {',
'        color: rgba(255, 255, 255, 0.8);',
'        display: flex;',
'        align-items: center;',
'        cursor: pointer;',
'    }',
'',
'    .u-checkbox:before {',
'        content: '''';',
'        display: inline-block;',
'        width: 20px;',
'        height: 20px;',
'        border: 2px solid rgba(255, 255, 255, 0.3);',
'        border-radius: 4px;',
'        margin-right: 10px;',
'        background: rgba(255, 255, 255, 0.1);',
'        transition: all 0.3s ease;',
'    }',
'',
'    input[type="checkbox"]:checked + .u-checkbox:before {',
'        background: #00dbde;',
'        border-color: #00dbde;',
'        content: ''?'';',
'        display: flex;',
'        align-items: center;',
'        justify-content: center;',
'        color: white;',
'        font-weight: bold;',
'    }',
'',
'    input[type="checkbox"] {',
'        display: none;',
'    }',
'',
'    /* Button Styling */',
'    .t-Button {',
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
'    .t-Button:hover {',
'        transform: translateY(-3px);',
'        box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'    }',
'',
'    .t-Button-label {',
'        color: white;',
'    }',
'',
'    /* Welcome Region */',
'    #welcome_region {',
'        background-color: transparent;',
'        border: none;',
'        margin-bottom: 20px;',
'    }',
'',
'    /* Responsive Design */',
'    @media (max-width: 768px) {',
'        .cube-container {',
'            display: none;',
'        }',
'        ',
'        /* .t-Login-container {',
'            max-width: 90%;',
'        } */',
'        ',
'        .t-Login-body {',
'            padding: 20px 15px 25px;',
'        }',
'    }',
'  </style>',
'',
'  <link rel="apple-touch-icon" href="r/ntiapex/101/files/static/v6/icons/app-icon-192.png">',
'  <link rel="icon" href="r/ntiapex/101/files/static/v6/icons/app-icon-32.png">',
'  ',
'  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
'  <meta http-equiv="Pragma" content="no-cache">',
'  <meta http-equiv="Expires" content="-1">',
'  <meta http-equiv="Cache-Control" content="no-cache">',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'</head>',
'',
'<body class="t-PageBody--login t-PageTemplate--login apex-side-nav apex-icons-fontapex apex-theme-redwood-light js-ready">',
'  <!-- 3D Background Elements -->',
'  <div class="floating-elements">',
'      <div class="floating-element"></div>',
'      <div class="floating-element"></div>',
'      <div class="floating-element"></div>',
'      <div class="floating-element"></div>',
'  </div>',
'',
'  <!-- 3D Cube -->',
'  <div class="cube-container">',
'      <div class="cube">',
'          <div class="face front"><i class="fas fa-cube"></i></div>',
'          <div class="face back"><i class="fas fa-code"></i></div>',
'          <div class="face right"><i class="fas fa-magic"></i></div>',
'          <div class="face left"><i class="fas fa-rocket"></i></div>',
'          <div class="face top"><i class="fas fa-star"></i></div>',
'          <div class="face bottom"><i class="fas fa-heart"></i></div>',
'      </div>',
'  </div>',
'',
'  <form role="none" action="wwv_flow.accept?p_context=briefcase-extension/login/10142195848308" method="post" name="wwv_flow" id="wwvFlowForm" data-oj-binding-provider="none" novalidate="" autocomplete="off">',
'    <input type="hidden" name="p_flow_id" value="101" id="pFlowId">',
'    <input type="hidden" name="p_flow_step_id" value="9999" id="pFlowStepId">',
'    <input type="hidden" name="p_instance" value="10142195848308" id="pInstance">',
'    <input type="hidden" name="p_page_submission_id" value="MTM0NzMyMDA0OTIxMDI0ODA1OTA3Mjg2NTM5ODgyNTEwNDI4MTAy/styeSe8gsqSWO7UEVwkjWv_wqY_QR4KwoWJNbnR2mtBTa9_o6IxPjA_OvrdQ1HxtRZV2XFExkl8Yo4ntqxdxgw" id="pPageSubmissionId">',
'    <input type="hidden" name="p_request" value="" id="pRequest">',
'    <input type="hidden" name="p_reload_on_submit" value="S" id="pReloadOnSubmit">',
'    <input type="hidden" value="briefcase-extension/login/10142195848308" id="pContext">',
'    <input type="hidden" value="134732004921024805907286539882510428102" id="pSalt">',
'    ',
'    <div class="t-Login-container">',
'      <header class="t-Login-containerHeader"></header>',
'      <main class="t-Login-containerBody" id="main">',
'        <span id="APEX_SUCCESS_MESSAGE" data-template-id="762599452515988057_S" class="apex-page-success u-hidden"></span>',
'        <span id="APEX_ERROR_MESSAGE" data-template-id="762599452515988057_E" class="apex-page-error u-hidden"></span>',
'        ',
'        <div class="container">',
'          <div class="row ">',
'            <div class="col col-12 apex-col-auto col-start col-end">',
'              <div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove lto762873439855989178_0" id="R762873439855989178" role="region" aria-labelledby="R762873439855989178_heading">',
'                <div class="t-Login-header">',
'                  <span class="t-Login-logo" aria-hidden="true"><i class="fas fa-briefcase"></i></span>',
'                  <h2 class="t-Login-title" id="R762873439855989178_heading" data-apex-heading="">BRIEFCASE EXTENSION</h2>',
'                </div>',
'                ',
'                <div class="t-Login-body">',
'                  <div class="t-Region t-Region--hideHeader t-Region--noBorder t-Region--hiddenOverflow lto19086986872259221_0" id="welcome_region" role="region" aria-label="Welcome">',
'                    <div class="t-Region-body">',
'                      <div class="typewriter-container">',
'                        <div class="typewriter-text">Welcome!</div>',
'                      </div>',
'                    </div>',
'                  </div>',
'                  ',
'                  <div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col lto762873826865989207_0 apex-item-wrapper apex-item-wrapper--has-placeholder apex-item-wrapper--has-initial-value apex-item-wrapper--text-field apex-item-w'
||'rapper--has-icon" id="P9999_USERNAME_CONTAINER">',
'                    <div class="t-Form-inputContainer col col-null">',
'                      <div class="t-Form-itemWrapper">',
'                        <input type="text" id="P9999_USERNAME" name="P9999_USERNAME" placeholder="Username" class="text_field apex-item-text apex-item-has-icon" autocomplete="username" value="manuel" size="40" maxlength="100" data-trim-spaces="NONE" '
||'data-enter-submit="false" data-is-page-item-type="true">',
'                        <span class="apex-item-icon fa fa-user" aria-hidden="true"></span>',
'                      </div>',
'                      <span id="P9999_USERNAME_error_placeholder" class="a-Form-error" data-template-id="762753424971988214_ET"></span>',
'                    </div>',
'                  </div>',
'                  ',
'                  <div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col lto762874297058989213_0 apex-item-wrapper apex-item-wrapper--has-placeholder apex-item-wrapper--password apex-item-wrapper--has-icon" id="P9999_PASSWORD_CO'
||'NTAINER">',
'                    <div class="t-Form-inputContainer col col-null">',
'                      <div class="t-Form-itemWrapper">',
'                        <input type="password" name="P9999_PASSWORD" size="40" maxlength="100" value="" id="P9999_PASSWORD" placeholder="Password" class="password apex-item-text apex-item-password apex-item-has-icon" autocomplete="current-password" d'
||'ata-enter-submit="true">',
'                        <span class="apex-item-icon fa fa-key" aria-hidden="true"></span>',
'                        <span class="t-Form-itemText t-Form-itemText--post">',
'                          <i id="pass-status" class="fa fa-eye-slash field-icon" aria-hidden="true" onclick="viewPassword()"></i>',
'                        </span>',
'                      </div>',
'                      <span id="P9999_PASSWORD_error_placeholder" class="a-Form-error" data-template-id="762753424971988214_ET"></span>',
'                    </div>',
'                  </div>',
'                  ',
'                  <div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col lto762874610064989218_0 apex-item-wrapper apex-item-wrapper--has-initial-value apex-item-wrapper--single-checkbox" id="P9999_REMEMBER_CONTAINER">',
'                    <div class="t-Form-inputContainer col col-null">',
'                      <div class="t-Form-itemWrapper">',
'                        <div class="apex-item-single-checkbox">',
'                          <input type="hidden" name="P9999_REMEMBER" id="P9999_REMEMBER_HIDDENVALUE" value="Y">',
'                          <input type="checkbox" id="P9999_REMEMBER" aria-label="Remember username" checked="" data-unchecked-value="N" value="Y">',
'                          <label for="P9999_REMEMBER" id="P9999_REMEMBER_LABEL" class="u-checkbox" aria-hidden="true">Remember username</label>',
'                        </div>',
'                      </div>',
'                      <span id="P9999_REMEMBER_error_placeholder" class="a-Form-error" data-template-id="762753424971988214_ET"></span>',
'                    </div>',
'                  </div>',
'                </div>',
'                ',
'                <div class="t-Login-buttons">',
'                  <button onclick="apex.submit({request:''LOGIN'',validate:true});" class="t-Button t-Button--hot lto762875036878989223_0" type="button" id="B762875036878989223">',
'                    <span class="t-Button-label">Sign In</span>',
'                  </button>',
'                </div>',
'                ',
'                <div class="t-Login-links"></div>',
'                <div class="t-Login-subRegions"></div>',
'              </div>',
'            </div>',
'          </div>',
'        </div>',
'      </main>',
'      <footer class="t-Login-containerFooter"></footer>',
'    </div>',
'    ',
'    <input type="hidden" id="pPageFormRegionChecksums" value="[]">',
'    <input type="hidden" id="pPageItemsRowVersion" value="">',
'    <input type="hidden" id="pPageItemsProtected" value="/Wr0hyhPqkRFa6v_JoJ-8x78F11HLnFe400MvZvqKEM-LPPaxbAUgC6B1hNg38AckMrpj6e6r-AJGGqa356RnXw">',
'  </form>',
'',
'  <!-- JavaScript untuk efek 3D dan interaksi -->',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg">',
'    // Mouse move parallax effect',
'    document.addEventListener(''mousemove'', (e) => {',
'        const cube = document.querySelector(''.cube'');',
'        const floatingElements = document.querySelectorAll(''.floating-element'');',
'        const loginContainer = document.querySelector(''#R762873439855989178'');',
'        ',
'        const x = (window.innerWidth - e.pageX) / 50;',
'        const y = (window.innerHeight - e.pageY) / 50;',
'        ',
'        if (cube) {',
'            cube.style.transform = `rotateY(${x}deg) rotateX(${y}deg)`;',
'        }',
'        ',
'        floatingElements.forEach((element, index) => {',
'            const speed = (index + 1) * 0.5;',
'            const xMove = (window.innerWidth - e.pageX * speed) / 100;',
'            const yMove = (window.innerHeight - e.pageY * speed) / 100;',
'            ',
'            element.style.transform = `translate(${xMove}px, ${yMove}px)`;',
'        });',
'        ',
'        // Efek parallax ringan pada container login',
'        if (loginContainer) {',
'            const loginX = (window.innerWidth - e.pageX) / 100;',
'            const loginY = (window.innerHeight - e.pageY) / 100;',
'            loginContainer.style.transform = `translate(${loginX/5}px, ${loginY/5}px)`;',
'        }',
'    });',
'',
'    // Fungsi untuk toggle password visibility',
'    function viewPassword() {',
'        var passwordInput = document.getElementById(''P9999_PASSWORD'');',
'        var passStatus = document.getElementById(''pass-status'');',
'',
'        if (passwordInput.type == ''password'') {',
'            passwordInput.type = ''text'';',
'            passStatus.className = ''fa fa-eye field-icon'';',
'        } else {',
'            passwordInput.type = ''password'';',
'            passStatus.className = ''fa fa-eye-slash field-icon'';',
'        }',
'    }',
'',
'    // Efek hover pada input fields',
'    document.addEventListener(''DOMContentLoaded'', function() {',
'        const inputs = document.querySelectorAll(''.text_field, .password'');',
'        ',
'        inputs.forEach(input => {',
'            input.addEventListener(''focus'', function() {',
'                this.parentElement.style.transform = ''scale(1.02)'';',
'            });',
'            ',
'            input.addEventListener(''blur'', function() {',
'                this.parentElement.style.transform = ''scale(1)'';',
'            });',
'        });',
'    });',
'  </script>',
'',
'  <!-- Script APEX yang sudah ada -->',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg">',
'    var apex_img_dir = "\u002Fi\u002F";',
'    var apex = {env: {APP_USER: "nobody",APP_ID: "101",APP_PAGE_ID: "9999",APP_SESSION: "10142195848308",APP_FILES: "r\u002Fntiapex\u002F101\u002Ffiles\u002Fstatic\u002Fv6\u002F",WORKSPACE_FILES: "r\u002Fntiapex\u002Ffiles\u002Fstatic\u002Fv1\u002F",'
||'APEX_VERSION: "24.2.0",APEX_BASE_VERSION: "24.2",COMPATIBILITY_MODE: 21.2,NONCE: "FEkJQV21Lg7CKdZL593SLg"},',
'    libVersions:{cropperJs:"1.6.2",domPurify:"3.1.6",fontapex:"2.4",fullcalendar:"6.1.15",hammer:"2.0.8",jquery:"3.6.4",jqueryUi:"1.13.2",maplibre:"4.6.0",mapboxGlRtlText:"0.3.0",markedJs:"14.1.2",prismJs:"1.29.0",oraclejet:"17.0.2",turndown:"7.2.0",'
||'monacoEditor:"0.51.0",lessJs:"4.2.0"}};',
'  </script>',
'  ',
'  <!-- Script APEX lainnya tetap sama -->',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="/i/libraries/apex/minified/desktop_all.min.js?v=24.2.0"></script>',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="wwv_flow.js_messages?p_app_id=101&amp;p_lang=en&amp;p_version=24.2.0-6202132264360&amp;p_nls_settings=eyJudW1lcmljQ2hhcmFjdGVycyI6Ii4sIiwiY3VycmVuY3kiOiIkIiwiaXNvQ3VycmVuY3kiOiJBTUVSSUNBIiwiZHVhbEN1cnJlbm'
||'N5IjoiJCJ9&amp;p_builder=Y"></script>',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="wwv_flow.js_dialogs?p_app_id=101&amp;p_version=24.2.0-6202132264360"></script>',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="/i/libraries/apex/minified/widget.stickyWidget.min.js?v=24.2.0"></script>',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="/i/themes/theme_42/23.2/js/theme42.min.js?v=24.2.0"></script>',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg" src="/i/apex_ui/js/minified/devToolbar.min.js?v=24.2.0"></script>',
'',
'  <!-- Script APEX initialization -->',
'  <script nonce="FEkJQV21Lg7CKdZL593SLg">',
'    apex.jQuery( function() {',
'      apex.page.init( this, function() {',
'        try {',
'          (function(){',
'            var lTimeoutField = document.getElementById("apex_login_throttle_sec"),',
'                lTimeout      = lTimeoutField ? +lTimeoutField.innerHTML : 0;',
'            if (lTimeout) {',
'                var lTimer = window.setInterval (',
'                    function() {',
'                        if (lTimeout > 0) {',
'                            lTimeoutField.innerHTML = lTimeout;',
'                            lTimeout--;',
'                        } else {',
'                            window.clearInterval(lTimer);',
'                            var lDiv = document.getElementById("apex_login_throttle_div");',
'                            if (lDiv) {',
'                                lDiv.parentNode.removeChild(lDiv);',
'                                return true;',
'                            }',
'                        }',
'                    },',
'                    1000 );',
'            }',
'          })();',
'        } catch(e) {apex.debug.error(e)};',
'        ',
'        apex.initDevToolbar([{"pageId":"9999","typeId":"5110","id":"762873439855989178","domId":"R762873439855989178","supportsLiveOptions":true},{"pageId":"9999","typeId":"5110","id":"19086986872259221","domId":"welcome_region","supportsLiveOptions"'
||':true},{"pageId":"9999","typeId":"5120","id":"762873826865989207","domId":"P9999_USERNAME","supportsLiveOptions":true},{"pageId":"9999","typeId":"5120","id":"762874297058989213","domId":"P9999_PASSWORD","supportsLiveOptions":true},{"pageId":"9999","t'
||'ypeId":"5120","id":"762874610064989218","domId":"P9999_REMEMBER","supportsLiveOptions":true},{"pageId":"9999","typeId":"5130","id":"762875036878989223","domId":"B762875036878989223","supportsLiveOptions":true}],"FOCUS",{"viewSessionLabel":"View Sessi'
||'on State","viewSessionUrl":"r\u002Fapex\u002Fapp-builder\u002Fsession-state?f4000_flow_session=10142195848308\u0026f4000_p34_flow=101\u0026f4000_p34_page=9999\u0026fb_flow_id=101\u0026request=PAGE\u0026clear=34\u0026session=836125822559","sessionOver'
||'ridesLabel":"Session Overrides","sessionOverridesTitle":"Overrides Off","viewDebugLabel":"View Debug","viewDebugUrl":"r\u002Fapex\u002Fapp-builder\u002Fdebug-message-data?ir_application_id=101\u0026ir_page_id=9999\u0026f4000_flow_session=101421958483'
||'08\u0026fb_flow_id=101\u0026f4000_p34_page=9999\u0026clear=RIR,19\u0026session=836125822559","enableDebugLabel":"Enable Debug","debugLevelTitle":"level Off","debugLevelNo":"Off","debugLevel4":"Info (default)","debugLevel6":"App Trace","debugLevel9":"'
||'Full Trace","debugLevelNoUrl":"r\u002Fntiapex\u002Fbriefcase-extension\u002Flogin?session=10142195848308","debugLevel4Url":"r\u002Fntiapex\u002Fbriefcase-extension\u002Flogin?debug=YES\u0026session=10142195848308","debugLevel6Url":"r\u002Fntiapex\u00'
||'2Fbriefcase-extension\u002Flogin?debug=LEVEL6\u0026session=10142195848308","debugLevel9Url":"r\u002Fntiapex\u002Fbriefcase-extension\u002Flogin?debug=LEVEL9\u0026session=10142195848308","autoHide":"Auto Hide","iconsOnly":"Show Icons Only","noBuilderM'
||'essage":"This functionality requires the Oracle APEX App Builder window to be open. Do you want to open the Builder in this window?","showPerf":"Show Page Timing","perfTitle":"Page Performance Timing","clear":"Clear","copy":"Copy","gridDebugOn":"Show'
||' Layout Columns","gridDebugOff":"Hide Layout Columns","landmarkDebugOn":"Hide Landmarks","landmarkDebugOff":"Show Landmarks","headingDebugOn":"Hide Headings","headingDebugOff":"Show Headings","logoEditor":"Edit Logo","themeRoller":"Theme Roller","dis'
||'play":"Display Position","displayTop":"Top","displayLeft":"Left","displayBottom":"Bottom","displayRight":"Right"},42);',
'        ',
'        apex.item.waitForDelayLoadItems().done(function() {',
'          try {',
'            apex.theme42.initializePage.appLogin();',
'            apex.item( ''P9999_USERNAME'' ).setFocus();',
'          } finally {',
'            apex.event.trigger(apex.gPageContext$,''apexreadyend'');',
'          };',
'        });',
'      });',
'    });',
'    ',
'    apex.pwa.init( { serviceWorkerPath:''\u002Fords\u002Fr\u002Fntiapex\u002Fbriefcase-extension\u002Fsw.js?v=24.2.0-6202132264360\u0026lang=en'' } );',
'  </script>',
'</body>',
'</html>'))
,p_step_template=>wwv_flow_imp.id(762599452515988057)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(782650597410138830)
,p_plug_name=>'BRIEFCASE EXTENSION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762677810149988135)
,p_plug_display_sequence=>20
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38864144426408873)
,p_plug_name=>'Welcome'
,p_region_name=>'welcome_region'
,p_parent_plug_id=>wwv_flow_imp.id(782650597410138830)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Text Animation</title>',
'    <link rel="stylesheet" href="styles.css">',
'</head>',
'<body>',
'    <div class="typewriter-text">',
'        Welcome!',
'    </div>',
'</body>',
'</html>',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19777683545149774)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(782650597410138830)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(762756295583988238)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(782651923994138985)
,p_name=>'P13_USERNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(782650597410138830)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(762753424971988214)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(782652394187138991)
,p_name=>'P13_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(782650597410138830)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye-slash field-icon" style="color: black" aria-hidden="true" onClick="viewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(762753424971988214)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(782652707193138996)
,p_name=>'P13_REMEMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(782650597410138830)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(762753424971988214)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19781380837149868)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19781380837149868
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19781829242149869)
,p_page_process_id=>wwv_flow_imp.id(19781380837149868)
,p_page_id=>13
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P13_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19782360994149869)
,p_page_process_id=>wwv_flow_imp.id(19781380837149868)
,p_page_id=>13
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P13_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19779565646149821)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19779565646149821
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19780067276149865)
,p_page_process_id=>wwv_flow_imp.id(19779565646149821)
,p_page_id=>13
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P13_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19780459114149867)
,p_page_process_id=>wwv_flow_imp.id(19779565646149821)
,p_page_id=>13
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P13_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(19780905625149868)
,p_page_process_id=>wwv_flow_imp.id(19779565646149821)
,p_page_id=>13
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19783139602149870)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>19783139602149870
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19782752026149869)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P13_USERNAME := apex_authentication.get_login_username_cookie;',
':P13_REMEMBER := case when :P13_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19782752026149869
);
wwv_flow_imp.component_end;
end;
/
