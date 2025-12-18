prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'BRIEFCASE EXTENSION'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="loaderOverlay" class="loader-overlay hidden">',
'    <div class="loader"></div>',
'    <div class="loader-text" id="loaderPercentage">0%</div>',
'    <div class="loader-progress">',
'        <div class="loader-progress-bar" id="loaderProgressBar"></div>',
'    </div>',
'</div>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function showLoader() {',
'    const loader = document.getElementById(''loaderOverlay'');',
'    if (loader) {',
'        loader.classList.remove(''hidden'');',
'        ',
'        updateProgress(0);',
'        ',
'        let progress = 0;',
'        const interval = setInterval(() => {',
'            // progress += Math.random() * 15;',
'            progress += Math.random() * 10 + 5;',
'',
'            if (progress > 100) {',
'                progress = 100;',
'                clearInterval(interval);',
'            }',
'            ',
'            updateProgress(Math.round(progress));',
'        }, 300);',
'        ',
'        setTimeout(() => {',
'            hideLoader();',
'            clearInterval(interval);',
'            apex.server.process(''HIDE_LOADER'');',
'        }, 3000);',
'    }',
'}',
'',
'function hideLoader() {',
'    const loader = document.getElementById(''loaderOverlay'');',
'    if (loader) {',
'        loader.classList.add(''hidden'');',
'    }',
'}',
'',
'function updateProgress(percentage) {',
'    const percentageElement = document.getElementById(''loaderPercentage'');',
'    const progressBar = document.getElementById(''loaderProgressBar'');',
'    ',
'    if (percentageElement && progressBar) {',
'        percentageElement.textContent = percentage + ''%'';',
'        progressBar.style.width = percentage + ''%'';',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initLoadingProgress();',
'if (apex.item(''P1_SHOW_LOADER'').getValue() === ''Y'') {',
'    showLoader();',
'}',
'',
'apex.item(''P1_SHOW_LOADER'').setValue(''N'');',
'',
'// ------------------------------------------------------------------------',
'',
'const loaderHTML = `',
'<div id="loaderOverlay" class="loader-overlay">',
'    <div class="loader"></div>',
'    <div class="loader-text" id="loaderPercentage">0%</div>',
'    <div class="loader-progress">',
'        <div class="loader-progress-bar" id="loaderProgressBar"></div>',
'    </div>',
'</div>',
'`;',
'',
'document.body.insertAdjacentHTML(''afterbegin'', loaderHTML);',
'',
'function updateProgress(percentage, text = "") {',
'    const percentageElement = document.getElementById(''loaderPercentage'');',
'    const progressBar = document.getElementById(''loaderProgressBar'');',
'    ',
'    if (percentageElement && progressBar) {',
'        const displayText = text ? `${text} ${percentage}%` : `${percentage}%`;',
'        percentageElement.textContent = displayText;',
'        progressBar.style.width = percentage + ''%'';',
'    }',
'}',
'',
'let progress = 0;',
'const maxProgress = 90;',
'',
'updateProgress(10, "Memulai...");',
'',
'document.addEventListener(''DOMContentLoaded'', function() {',
'    updateProgress(40, "Konten dimuat...");',
'});',
'',
'window.addEventListener(''load'', function() {',
'    // updateProgress(80, "Resource dimuat...");',
'    updateProgress(80, "Tunggu sebentar yaa...");',
'    ',
'    setTimeout(() => {',
'        updateProgress(100, "Selesai!");',
'        ',
'        setTimeout(() => {',
'            const loader = document.getElementById(''loaderOverlay'');',
'            if (loader) {',
'                loader.style.opacity = ''0'';',
'                loader.style.transition = ''opacity 0.5s ease'';',
'                ',
'                setTimeout(() => {',
'                    loader.remove();',
'                }, 500);',
'            }',
'        }, 300);',
'    }, 300);',
'});',
'',
'setTimeout(() => {',
'    const loader = document.getElementById(''loaderOverlay'');',
'    if (loader && loader.parentNode) {',
'        updateProgress(100, "Selesai!");',
'        ',
'        setTimeout(() => {',
'            loader.style.opacity = ''0'';',
'            loader.style.transition = ''opacity 0.5s ease'';',
'            ',
'            setTimeout(() => {',
'                loader.remove();',
'            }, 500);',
'        }, 300);',
'    }',
'}, 4000);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.loader-overlay {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 100%;',
'    /* background: rgba(255, 255, 255, 0.9); */',
'    /* background: rgba(49, 49, 49, 0.781); */',
'    background: rgba(24, 24, 24, 0.781);',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    z-index: 9999;',
'    transition: opacity 0.5s ease;',
'',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255, 255, 255, 0.2);',
'    /* border-radius: 15px; */',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'.loader {',
'    transform: rotateZ(45deg);',
'    perspective: 1000px;',
'    border-radius: 50%;',
'    /* width: 48px; */',
'    /* height: 48px; */',
'    width: 72px;',
'    height: 72px;',
'    /* color: #007bff; */',
'    color: #915EFF;',
'    z-index: 9999;',
'}',
'.loader:before,',
'.loader:after {',
'    content: '''';',
'    display: block;',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    width: inherit;',
'    height: inherit;',
'    border-radius: 50%;',
'    transform: rotateX(70deg);',
'    animation: 1s spin linear infinite;',
'}',
'.loader:after {',
'    /* color: #FF3D00; */',
'    color: #00dbde;',
'    transform: rotateY(70deg);',
'    animation-delay: .4s;',
'}',
'',
'.loader-text {',
'    font-family: Arial, sans-serif;',
'    font-size: 16px;',
'    font-weight: bold;',
'    background: linear-gradient(90deg, #915EFF, #00dbde);',
'    -webkit-background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    background-clip: text;',
'    text-align: center;',
'}',
'',
'.loader-progress {',
'    width: 200px;',
'    height: 4px;',
'    background: rgba(255, 255, 255, 0.1);',
'    border-radius: 2px;',
'    margin-top: 10px;',
'    overflow: hidden;',
'}',
'',
'.loader-progress-bar {',
'    height: 100%;',
'    background: linear-gradient(90deg, #915EFF, #00dbde);',
'    border-radius: 2px;',
'    width: 0%;',
'    transition: width 0.3s ease;',
'}',
'',
'@keyframes spin {',
'    0%,',
'    100% {',
'        box-shadow: .2em 0px 0 0px currentcolor;',
'    }',
'    12% {',
'        box-shadow: .2em .2em 0 0 currentcolor;',
'    }',
'    25% {',
'        box-shadow: 0 .2em 0 0px currentcolor;',
'    }',
'    37% {',
'        box-shadow: -.2em .2em 0 0 currentcolor;',
'    }',
'    50% {',
'        box-shadow: -.2em 0 0 0 currentcolor;',
'    }',
'    62% {',
'        box-shadow: -.2em -.2em 0 0 currentcolor;',
'    }',
'    75% {',
'        box-shadow: 0px -.2em 0 0 currentcolor;',
'    }',
'    87% {',
'        box-shadow: .2em -.2em 0 0 currentcolor;',
'    }',
'}',
'',
'.hidden {',
'    display: none !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28016748071777534)
,p_plug_name=>'Page Navigation'
,p_region_name=>'page_navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--cols:t-Cards--hideBody:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(762616480935988101)
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(28105322670104825)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(762732048083988194)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(762880202844989282)
,p_plug_name=>'BRIEFCASE EXTENSION'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(762649770980988120)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19087719953259229)
,p_name=>'P1_SHOW_LOADER'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19087888130259230)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HIDE_LOADER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    apex_util.set_session_state(''P9999_SHOW_LOADER'', ''N'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>19087888130259230
);
wwv_flow_imp.component_end;
end;
/
