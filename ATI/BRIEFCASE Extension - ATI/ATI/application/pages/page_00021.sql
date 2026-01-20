prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Upload Hak Akses'
,p_alias=>'UPLOAD-HAK-AKSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Hak Akses'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#hak_akses_user_title,',
'#hak_akses_dept_title {',
'    position: relative;',
'    color: #1a1a1a;',
'    font-weight: 700;',
'    font-size: 2em;',
'    letter-spacing: -0.02em;',
'    margin: 0 0 16px 0;',
'    padding: 20px 24px;',
'    background: rgba(255, 255, 255, 0.85);',
'    backdrop-filter: blur(30px) saturate(180%);',
'    border-radius: 20px;',
'    border: 1px solid rgba(255, 255, 255, 0.9);',
'    box-shadow: ',
'        0 8px 32px rgba(0, 0, 0, 0.06),',
'        0 2px 8px rgba(0, 0, 0, 0.03),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.95);',
'    text-align: center;',
'    overflow: hidden;',
'    transition: all 0.5s cubic-bezier(0.25, 0.46, 0.45, 0.94);',
'    transform: translateY(0);',
'}',
'',
'/* Liquid Glass Overlay Effect */',
'#hak_akses_user_title::before,',
'#hak_akses_dept_title::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background: ',
'        radial-gradient(circle at 20% 30%, rgba(145, 94, 255, 0.08) 0%, transparent 50%),',
'        radial-gradient(circle at 80% 70%, rgba(0, 219, 222, 0.08) 0%, transparent 50%);',
'    pointer-events: none;',
'    border-radius: 20px;',
'    z-index: 1;',
'    opacity: 0.6;',
'    animation: liquidTitleFloat 8s ease-in-out infinite;',
'}',
'',
'@keyframes liquidTitleFloat {',
'    0%, 100% {',
'        transform: translate(0, 0) scale(1);',
'    }',
'    33% {',
'        transform: translate(-2px, 1px) scale(1.01);',
'    }',
'    66% {',
'        transform: translate(1px, -0.5px) scale(0.99);',
'    }',
'}',
'',
'/* Subtle Hover Effects - More Gentle */',
'#hak_akses_user_title:hover,',
'#hak_akses_dept_title:hover {',
'    transform: translateY(-2px);',
'    background: rgba(255, 255, 255, 0.92);',
'    box-shadow: ',
'        0 12px 36px rgba(0, 0, 0, 0.08),',
'        0 3px 10px rgba(0, 0, 0, 0.04),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.98);',
'}',
'',
'/* Crystal Balloon Effect on Hover */',
'#hak_akses_user_title:hover::before,',
'#hak_akses_dept_title:hover::before {',
'    opacity: 0.8;',
'    animation-duration: 4s;',
'}',
'',
'/* Text Styling - Very Subtle Changes */',
'#hak_akses_user_title span,',
'#hak_akses_dept_title span {',
'    position: relative;',
'    z-index: 2;',
'    color: #1a1a1a;',
'    text-shadow: 0 1px 2px rgba(255, 255, 255, 0.8);',
'    display: inline-block;',
'    transition: all 0.4s ease;',
'}',
'',
'/* Very Subtle Text Color Change on Hover */',
'#hak_akses_user_title:hover span,',
'#hak_akses_dept_title:hover span {',
'    color: #2d3748;',
'    transform: scale(1.02);',
'}',
'',
'/* Specific Accent Colors */',
'#hak_akses_user_title {',
'    border-left: 3px solid rgba(145, 94, 255, 0.4);',
'}',
'',
'#hak_akses_dept_title {',
'    border-left: 3px solid rgba(0, 219, 222, 0.4);',
'}',
'',
'/* ===== MODAL DIALOG STYLING ===== */',
'.ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'    border-radius: 24px !important;',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    backdrop-filter: blur(30px) saturate(200%) !important;',
'    border: 1px solid rgba(255, 255, 255, 0.8) !important;',
'    box-shadow: ',
'        0 25px 50px rgba(0, 0, 0, 0.15),',
'        0 8px 32px rgba(0, 0, 0, 0.08) !important;',
'    overflow: hidden;',
'    animation: modalAppear 0.4s ease-out forwards;',
'}',
'',
'@keyframes modalAppear {',
'    0% {',
'        opacity: 0;',
'        transform: scale(0.98) translateY(10px);',
'    }',
'    100% {',
'        opacity: 1;',
'        transform: scale(1) translateY(0);',
'    }',
'}',
'',
'.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle {',
'    background: linear-gradient(135deg, ',
'        rgba(255, 255, 255, 0.95) 0%,',
'        rgba(248, 250, 252, 0.9) 100%) !important;',
'    backdrop-filter: blur(20px) !important;',
'    border: none !important;',
'    border-bottom: 1px solid rgba(255, 255, 255, 0.6) !important;',
'    border-radius: 24px 24px 0 0 !important;',
'    padding: 20px 24px !important;',
'}',
'',
'.ui-dialog-title {',
'    color: #1a1a1a !important;',
'    font-weight: 700 !important;',
'    font-size: 1.4em !important;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    background: rgba(255, 255, 255, 0.8) !important;',
'    backdrop-filter: blur(10px) !important;',
'    border: 1px solid rgba(255, 255, 255, 0.6) !important;',
'    border-radius: 12px !important;',
'    transition: all 0.3s ease !important;',
'}',
'',
'.ui-dialog-titlebar-close:hover {',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    transform: scale(1.05);',
'}',
'',
'.ui-dialog-content.ui-widget-content {',
'    background: transparent !important;',
'    border: none !important;',
'    border-radius: 0 0 24px 24px !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background: rgba(0, 0, 0, 0.4) !important;',
'    backdrop-filter: blur(8px) !important;',
'}',
'',
'/* ===== FILE UPLOAD STYLING ===== */',
'.a-FileDrop.a-FileDrop--dropzone {',
'    background: rgba(255, 255, 255, 0.8) !important;',
'    backdrop-filter: blur(20px) !important;',
'    border: 2px dashed rgba(145, 94, 255, 0.3) !important;',
'    border-radius: 20px !important;',
'    transition: all 0.3s ease;',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone:hover {',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    border-color: rgba(145, 94, 255, 0.6) !important;',
'    transform: translateY(-1px);',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde) !important;',
'    border: none !important;',
'    border-radius: 16px !important;',
'    color: white !important;',
'    font-weight: 600 !important;',
'    transition: all 0.3s ease !important;',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot:hover {',
'    transform: translateY(-1px);',
'    box-shadow: 0 6px 20px rgba(145, 94, 255, 0.3);',
'}',
'',
'/* ===== BUTTON STYLING ===== */',
'.t-Button.t-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde) !important;',
'    border: none !important;',
'    border-radius: 16px !important;',
'    color: white !important;',
'    font-weight: 600 !important;',
'    transition: all 0.3s ease !important;',
'}',
'',
'.t-Button.t-Button--hot:hover {',
'    transform: translateY(-2px);',
'    box-shadow: 0 8px 25px rgba(145, 94, 255, 0.3);',
'}',
'',
'/* ===== ANIMATIONS ===== */',
'@keyframes checkAnimation {',
'    0% {',
'        transform: scale(1);',
'    }',
'    30% {',
'        transform: scale(1.1) rotate(10deg);',
'    }',
'    60% {',
'        transform: scale(1) rotate(-5deg);',
'    }',
'    100% {',
'        transform: scale(1) rotate(0);',
'    }',
'}',
'',
'@keyframes moveDown {',
'    0%, 100% {',
'        transform: translateY(0);',
'    }',
'    50% {',
'        transform: translateY(2px);',
'    }',
'}',
'',
'@keyframes rotate {',
'    0% {',
'        transform: rotate(0deg);',
'    }',
'    100% {',
'        transform: rotate(-360deg);',
'    }',
'}',
'',
'/* Button Icon Animations */',
'#upload_button_user:hover .t-Icon,',
'#upload_button_dept:hover .t-Icon {',
'    animation: checkAnimation 0.5s ease-in-out;',
'}',
'',
'#download_template_button_user:hover .t-Icon,',
'#download_template_button_dept:hover .t-Icon {',
'    animation: moveDown 0.8s ease-in-out infinite;',
'}',
'',
'#reset_user_button:hover .t-Icon,',
'#reset_dept_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'',
'/* ===== RESPONSIVE DESIGN ===== */',
'@media (max-width: 768px) {',
'    #hak_akses_user_title,',
'    #hak_akses_dept_title {',
'        font-size: 1.6em;',
'        padding: 16px 20px;',
'        margin: 0 0 12px 0;',
'    }',
'    ',
'    .ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'        width: 95% !important;',
'        left: 2.5% !important;',
'        border-radius: 20px !important;',
'    }',
'}',
'',
'@media (prefers-reduced-motion: reduce) {',
'    #hak_akses_user_title,',
'    #hak_akses_dept_title,',
'    .ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'        animation: none;',
'    }',
'    ',
'    #hak_akses_user_title::before,',
'    #hak_akses_dept_title::before {',
'        animation: none;',
'    }',
'    ',
'    #hak_akses_user_title:hover,',
'    #hak_akses_dept_title:hover {',
'        transform: none;',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'    border-radius: 24px !important;',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    backdrop-filter: blur(30px) saturate(200%) !important;',
'    border: 1px solid rgba(255, 255, 255, 0.8) !important;',
'    box-shadow: ',
'        0 25px 50px rgba(0, 0, 0, 0.15),',
'        0 8px 32px rgba(0, 0, 0, 0.08),',
'        inset 0 1px 0 rgba(255, 255, 255, 0.9),',
'        inset 0 0 0 1px rgba(255, 255, 255, 0.7) !important;',
'    overflow: hidden;',
'    transform: scale(0.98);',
'    animation: modalAppear 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94) forwards;',
'}',
'',
'@keyframes modalAppear {',
'    0% {',
'        opacity: 0;',
'        transform: scale(0.95) translateY(20px);',
'    }',
'    100% {',
'        opacity: 1;',
'        transform: scale(1) translateY(0);',
'    }',
'}',
'',
'.ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background: ',
'        radial-gradient(circle at 10% 20%, rgba(145, 94, 255, 0.08) 0%, transparent 40%),',
'        radial-gradient(circle at 90% 80%, rgba(0, 219, 222, 0.08) 0%, transparent 40%),',
'        radial-gradient(circle at 50% 50%, rgba(255, 255, 255, 0.15) 0%, transparent 60%);',
'    pointer-events: none;',
'    border-radius: 24px;',
'    z-index: -1;',
'    animation: liquidFloat 6s ease-in-out infinite;',
'}',
'',
'@keyframes liquidFloat {',
'    0%, 100% {',
'        transform: translate(0, 0) scale(1);',
'    }',
'    33% {',
'        transform: translate(-5px, 5px) scale(1.02);',
'    }',
'    66% {',
'        transform: translate(5px, -3px) scale(0.98);',
'    }',
'}',
'',
'.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle {',
'    background: linear-gradient(135deg, ',
'        rgba(255, 255, 255, 0.95) 0%,',
'        rgba(248, 250, 252, 0.9) 100%) !important;',
'    backdrop-filter: blur(20px) !important;',
'    border: none !important;',
'    border-bottom: 1px solid rgba(255, 255, 255, 0.6) !important;',
'    border-radius: 24px 24px 0 0 !important;',
'    padding: 20px 24px !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.ui-dialog-titlebar::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    height: 3px;',
'    background: linear-gradient(90deg, ',
'        #915EFF 0%, ',
'        #00dbde 50%, ',
'        #915EFF 100%);',
'    background-size: 200% 100%;',
'    animation: shimmer 3s ease-in-out infinite;',
'}',
'',
'@keyframes shimmer {',
'    0%, 100% {',
'        background-position: -200% 0;',
'    }',
'    50% {',
'        background-position: 200% 0;',
'    }',
'}',
'',
'.ui-dialog-title {',
'    color: #1a1a1a !important;',
'    font-weight: 700 !important;',
'    font-size: 1.4em !important;',
'    letter-spacing: -0.01em;',
'    text-shadow: 0 1px 2px rgba(255, 255, 255, 0.8);',
'}',
'',
'.ui-dialog-titlebar-close {',
'    background: rgba(255, 255, 255, 0.8) !important;',
'    backdrop-filter: blur(10px) !important;',
'    border: 1px solid rgba(255, 255, 255, 0.6) !important;',
'    border-radius: 12px !important;',
'    width: 32px !important;',
'    height: 32px !important;',
'    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1) !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.ui-dialog-titlebar-close::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, ',
'        transparent, ',
'        rgba(255, 255, 255, 0.4), ',
'        transparent);',
'    transition: left 0.6s ease;',
'}',
'',
'.ui-dialog-titlebar-close:hover::before {',
'    left: 100%;',
'}',
'',
'.ui-dialog-titlebar-close:hover {',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    border-color: rgba(145, 94, 255, 0.4) !important;',
'    transform: scale(1.1) rotate(90deg);',
'    box-shadow: 0 8px 25px rgba(145, 94, 255, 0.2);',
'}',
'',
'.ui-dialog-titlebar-close .ui-icon-closethick {',
'    filter: invert(0.3) !important;',
'    transition: filter 0.3s ease;',
'}',
'',
'.ui-dialog-titlebar-close:hover .ui-icon-closethick {',
'    filter: invert(0.5) !important;',
'}',
'',
'.ui-dialog-content.ui-widget-content {',
'    background: transparent !important;',
'    border: none !important;',
'    border-radius: 0 0 24px 24px !important;',
'    padding: 0 !important;',
'}',
'',
'.ui-dialog-content.ui-widget-content iframe {',
'    border-radius: 0 0 24px 24px !important;',
'    border: none !important;',
'    background: transparent !important;',
'}',
'',
'.ui-widget-overlay.ui-front {',
'    background: rgba(0, 0, 0, 0.4) !important;',
'    backdrop-filter: blur(8px) !important;',
'    animation: overlayFadeIn 0.3s ease-out;',
'}',
'',
'@keyframes overlayFadeIn {',
'    from {',
'        opacity: 0;',
'    }',
'    to {',
'        opacity: 1;',
'    }',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone {',
'    background: rgba(255, 255, 255, 0.8) !important;',
'    backdrop-filter: blur(20px) !important;',
'    border: 2px dashed rgba(145, 94, 255, 0.3) !important;',
'    border-radius: 20px !important;',
'    transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    background: ',
'        radial-gradient(circle at 30% 30%, rgba(145, 94, 255, 0.1) 0%, transparent 50%),',
'        radial-gradient(circle at 70% 70%, rgba(0, 219, 222, 0.1) 0%, transparent 50%);',
'    opacity: 0;',
'    transition: opacity 0.3s ease;',
'    border-radius: 18px;',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone:hover::before {',
'    opacity: 1;',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone:hover {',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    border-color: rgba(145, 94, 255, 0.6) !important;',
'    transform: translateY(-2px);',
'    box-shadow: 0 12px 40px rgba(145, 94, 255, 0.15);',
'}',
'',
'.a-FileDrop-heading {',
'    color: #1a1a1a !important;',
'    font-weight: 600 !important;',
'    font-size: 1.2em !important;',
'}',
'',
'.a-FileDrop-description {',
'    color: #666 !important;',
'    font-size: 0.95em !important;',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde) !important;',
'    border: none !important;',
'    border-radius: 16px !important;',
'    color: white !important;',
'    font-weight: 600 !important;',
'    padding: 12px 24px !important;',
'    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1) !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, ',
'        transparent, ',
'        rgba(255, 255, 255, 0.3), ',
'        transparent);',
'    transition: left 0.6s ease;',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot:hover::before {',
'    left: 100%;',
'}',
'',
'.a-FileDrop-action-choose.a-Button.a-Button--hot:hover {',
'    transform: translateY(-2px) scale(1.05);',
'    box-shadow: ',
'        0 8px 25px rgba(145, 94, 255, 0.4),',
'        0 4px 15px rgba(0, 219, 222, 0.3);',
'    background: linear-gradient(135deg, #9d6eff, #00e6eb) !important;',
'}',
'',
'.a-FileDrop-progressbar {',
'    background: linear-gradient(90deg, #915EFF, #00dbde) !important;',
'    border-radius: 10px !important;',
'    height: 4px !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.a-FileDrop-progressbar::after {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, ',
'        transparent, ',
'        rgba(255, 255, 255, 0.6), ',
'        transparent);',
'    animation: progressShimmer 2s ease-in-out infinite;',
'}',
'',
'@keyframes progressShimmer {',
'    0% {',
'        left: -100%;',
'    }',
'    100% {',
'        left: 100%;',
'    }',
'}',
'',
'.t-Form-fieldContainer {',
'    background: rgba(255, 255, 255, 0.7) !important;',
'    backdrop-filter: blur(15px) !important;',
'    border: 1px solid rgba(255, 255, 255, 0.5) !important;',
'    border-radius: 16px !important;',
'    padding: 16px !important;',
'    margin-bottom: 16px !important;',
'    transition: all 0.3s ease;',
'}',
'',
'.t-Form-fieldContainer:hover {',
'    background: rgba(255, 255, 255, 0.9) !important;',
'    border-color: rgba(145, 94, 255, 0.3) !important;',
'    transform: translateY(-1px);',
'    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);',
'}',
'',
'.t-Form-fieldContainer input,',
'.t-Form-fieldContainer select,',
'.t-Form-fieldContainer textarea {',
'    background: transparent !important;',
'    border: 1px solid rgba(0, 0, 0, 0.1) !important;',
'    border-radius: 12px !important;',
'    padding: 12px 16px !important;',
'    transition: all 0.3s ease;',
'    font-size: 14px !important;',
'}',
'',
'.t-Form-fieldContainer input:focus,',
'.t-Form-fieldContainer select:focus,',
'.t-Form-fieldContainer textarea:focus {',
'    border-color: #915EFF !important;',
'    box-shadow: 0 0 0 3px rgba(145, 94, 255, 0.1) !important;',
'    outline: none !important;',
'    transform: scale(1.02);',
'}',
'',
'.t-Button.t-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde) !important;',
'    border: none !important;',
'    border-radius: 16px !important;',
'    color: white !important;',
'    font-weight: 600 !important;',
'    padding: 14px 28px !important;',
'    transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1) !important;',
'    position: relative;',
'    overflow: hidden;',
'}',
'',
'.t-Button.t-Button--hot::before {',
'    content: '''';',
'    position: absolute;',
'    top: 0;',
'    left: -100%;',
'    width: 100%;',
'    height: 100%;',
'    background: linear-gradient(90deg, ',
'        transparent, ',
'        rgba(255, 255, 255, 0.3), ',
'        transparent);',
'    transition: left 0.6s ease;',
'}',
'',
'.t-Button.t-Button--hot:hover::before {',
'    left: 100%;',
'}',
'',
'.t-Button.t-Button--hot:hover {',
'    transform: translateY(-3px) scale(1.05);',
'    box-shadow: ',
'        0 12px 30px rgba(145, 94, 255, 0.4),',
'        0 6px 20px rgba(0, 219, 222, 0.3);',
'    background: linear-gradient(135deg, #9d6eff, #00e6eb) !important;',
'}',
'',
'.t-Button.t-Button--danger {',
'    background: rgba(255, 255, 255, 0.8) !important;',
'    backdrop-filter: blur(10px) !important;',
'    border: 1px solid rgba(0, 0, 0, 0.1) !important;',
'    border-radius: 16px !important;',
'    color: #666 !important;',
'    font-weight: 500 !important;',
'    padding: 14px 28px !important;',
'    transition: all 0.3s ease;',
'}',
'',
'.t-Button.t-Button--danger:hover {',
'    background: rgba(255, 255, 255, 0.95) !important;',
'    border-color: rgba(0, 0, 0, 0.2) !important;',
'    color: #333 !important;',
'    transform: translateY(-1px);',
'    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);',
'}',
'',
'@media (max-width: 768px) {',
'    .ui-dialog.ui-corner-all.ui-widget.ui-widget-content.ui-front.ui-dialog--apex.t-Dialog-page--standard {',
'        width: 95% !important;',
'        left: 2.5% !important;',
'        margin: 0 !important;',
'        border-radius: 20px !important;',
'    }',
'    ',
'    .ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix.ui-draggable-handle {',
'        padding: 16px 20px !important;',
'    }',
'    ',
'    .a-FileDrop.a-FileDrop--dropzone {',
'        padding: 20px !important;',
'    }',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone.is-uploading {',
'    background: linear-gradient(135deg, ',
'        rgba(145, 94, 255, 0.05), ',
'        rgba(0, 219, 222, 0.05)) !important;',
'    animation: pulseGlow 2s ease-in-out infinite;',
'}',
'',
'@keyframes pulseGlow {',
'    0%, 100% {',
'        box-shadow: 0 0 0 0 rgba(145, 94, 255, 0.2);',
'    }',
'    50% {',
'        box-shadow: 0 0 0 10px rgba(145, 94, 255, 0);',
'    }',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone.is-success {',
'    border-color: #10b981 !important;',
'    background: rgba(16, 185, 129, 0.05) !important;',
'}',
'',
'.a-FileDrop.a-FileDrop--dropzone.is-error {',
'    border-color: #ef4444 !important;',
'    background: rgba(239, 68, 68, 0.05) !important;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#hak_akses_user .t-ButtonRegion, ',
'#hak_akses_dept .t-ButtonRegion {',
'    background: transparent;',
'    border: none;',
'    padding: 0;',
'    gap: 12px;',
'}',
'',
'#hak_akses_user .t-Button, ',
'#hak_akses_dept .t-Button {',
'    border-radius: 16px;',
'    border: 1px solid rgba(0, 0, 0, 0.08);',
'    background: rgba(255, 255, 255, 0.8);',
'    backdrop-filter: blur(10px);',
'    color: #1a1a1a;',
'    transition: all 0.3s ease;',
'    font-weight: 500;',
'    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.03);',
'    padding: 12px 20px;',
'}',
'',
'#hak_akses_user .t-Button:hover, ',
'#hak_akses_dept .t-Button:hover {',
'    background: rgba(255, 255, 255, 0.95);',
'    border-color: rgba(145, 94, 255, 0.3);',
'    transform: translateY(-1px);',
'    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.06);',
'}',
'',
'#hak_akses_user .t-Button--hot, ',
'#hak_akses_dept .t-Button--hot {',
'    background: linear-gradient(135deg, #915EFF, #00dbde);',
'    border: none;',
'    color: white;',
'    box-shadow: 0 4px 16px rgba(145, 94, 255, 0.25);',
'    font-weight: 600;',
'}',
'',
'#hak_akses_user .t-Button--hot:hover, ',
'#hak_akses_dept .t-Button--hot:hover {',
'    background: linear-gradient(135deg, #9d6eff, #00e6eb);',
'    box-shadow: 0 6px 20px rgba(145, 94, 255, 0.35);',
'    transform: translateY(-2px);',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#upload_button_user:hover .t-Icon {',
'    animation: checkAnimation 0.5s ease-in-out;',
'}',
'',
'@keyframes checkAnimation {',
'    0% {',
'        transform: scale(1);',
'    }',
'    30% {',
'        transform: scale(1.2) rotate(20deg);',
'    }',
'    60% {',
'        transform: scale(1) rotate(-10deg);',
'    }',
'    100% {',
'        transform: scale(1) rotate(0);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#upload_button_dept:hover .t-Icon {',
'    animation: checkAnimation 0.5s ease-in-out;',
'}',
'',
'@keyframes checkAnimation {',
'    0% {',
'        transform: scale(1);',
'    }',
'    30% {',
'        transform: scale(1.2) rotate(20deg);',
'    }',
'    60% {',
'        transform: scale(1) rotate(-10deg);',
'    }',
'    100% {',
'        transform: scale(1) rotate(0);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#cancel_button {',
'    background: rgba(255, 255, 255, 0.8);',
'    border: 1px solid rgba(0, 0, 0, 0.1);',
'    color: #6b7280;',
'}',
'',
'#cancel_button:hover {',
'    background: rgba(255, 255, 255, 0.95);',
'    border-color: rgba(0, 0, 0, 0.2);',
'    color: #374151;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#download_template_button_user {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#download_template_button_user .t-Icon {',
'    position: relative;',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#download_template_button_user:hover .t-Icon {',
'    animation: moveDown 0.8s ease-in-out infinite;',
'}',
'',
'@keyframes moveDown {',
'    0% {',
'        transform: translateY(3px);',
'    }',
'    50% {',
'        transform: translateY(-3px);',
'    }',
'    100% {',
'        transform: translateY(3px);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#download_template_button_dept {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#download_template_button_dept .t-Icon {',
'    position: relative;',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#download_template_button_dept:hover .t-Icon {',
'    animation: moveDown 0.8s ease-in-out infinite;',
'}',
'',
'@keyframes moveDown {',
'    0% {',
'        transform: translateY(3px);',
'    }',
'    50% {',
'        transform: translateY(-3px);',
'    }',
'    100% {',
'        transform: translateY(3px);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#reset_user_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background : aliceblue;',
'}',
'',
'#reset_user_button .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#reset_user_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'',
'@keyframes rotate {',
'    0% {',
'        transform: rotate(0deg);',
'    }',
'    100% {',
'        transform: rotate(-360deg);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#reset_dept_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background: aliceblue;',
'}',
'',
'#reset_dept_button .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'}',
'',
'#reset_dept_button:hover .t-Icon {',
'    animation: rotate 0.8s linear infinite;',
'}',
'',
'@keyframes rotate {',
'    0% {',
'        transform: rotate(0deg);',
'    }',
'    100% {',
'        transform: rotate(-360deg);',
'    }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15310659448417318)
,p_plug_name=>'Hak Akses User'
,p_region_name=>'hak_akses_user'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18236522770733909)
,p_plug_name=>'Buttons Container (User)'
,p_parent_plug_id=>wwv_flow_imp.id(15310659448417318)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15310772335417319)
,p_plug_name=>'Hak Akses Dept'
,p_region_name=>'hak_akses_dept'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18726720390644748)
,p_plug_name=>'Buttons Container (Dept)'
,p_parent_plug_id=>wwv_flow_imp.id(15310772335417319)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15312927187417340)
,p_plug_name=>'Hak Akses User Title'
,p_region_name=>'hak_akses_user_title'
,p_icon_css_classes=>'fa-user'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source=>'Hak Akses User'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15312958175417341)
,p_plug_name=>'Hak Akses Dept Title'
,p_region_name=>'hak_akses_dept_title'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>'Hak Akses Department'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18234767890753077)
,p_plug_name=>'Upload Hak Akses'
,p_region_name=>'upload_hak_akses_region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>90
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15311494531417326)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18236522770733909)
,p_button_name=>'RESET_USER'
,p_button_static_id=>'reset_user_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15311900452417330)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18726720390644748)
,p_button_name=>'RESET_DEPT'
,p_button_static_id=>'reset_dept_button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Refresh'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15398749774977378)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18236522770733909)
,p_button_name=>'UPLOAD_HAK_AKSES_USER'
,p_button_static_id=>'upload_button_user'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_confirm_message=>'Apakah Anda yakin ingin <b>mengunggah</b> file ini untuk diproses selanjutnya?'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15399487364976019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18726720390644748)
,p_button_name=>'UPLOAD_HAK_AKSES_DEPT'
,p_button_static_id=>'upload_button_dept'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Upload'
,p_button_position=>'CREATE'
,p_confirm_message=>'Apakah Anda yakin ingin <b>mengunggah</b> file ini untuk diproses selanjutnya?'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15310934188417320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18236522770733909)
,p_button_name=>'DOWNLOAD_TEMPLATE_USER'
,p_button_static_id=>'download_template_button_user'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Template'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''USER'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-layout-nav-left-header-header'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15311025398417321)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18726720390644748)
,p_button_name=>'DOWNLOAD_TEMPLATE_DEPT'
,p_button_static_id=>'download_template_button_dept'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padBottom'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Template'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P21_FILE IS NULL AND :P21_HAK_AKSES = ''DEPT'' AND',
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-layout-nav-left-header-header'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15311133810417322)
,p_branch_name=>'Go back to Page 9 (Master Hak Akses)'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P21_STATUS'
,p_branch_condition_text=>'SUCCESS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15310376381417315)
,p_name=>'P21_HAK_AKSES'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18235126602753051)
,p_name=>'P21_FILE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18234767890753077)
,p_prompt=>'Upload a File'
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(',
'         APEX_ACL.HAS_USER_ROLE (',
'                     p_application_id  => :APP_ID,',
'                     p_user_name       => :APP_USER,',
'                     p_role_static_id  => ''ADMINISTRATOR'')',
')'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-file-excel-o'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', 'Supported formats XLSX',
  'dropzone_title', 'Drag or Drop to Upload Files',
  'max_file_size', '5100',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18722097939665225)
,p_name=>'P21_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18234767890753077)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18722119403665226)
,p_name=>'P21_LOADED_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18234767890753077)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15311161201417323)
,p_name=>'Clear Cache (Page Load)'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15311334677417324)
,p_event_id=>wwv_flow_imp.id(15311161201417323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_FILE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15311596569417327)
,p_name=>'Set Null & Submit Page (Reset User)'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15311494531417326)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15311704052417328)
,p_event_id=>wwv_flow_imp.id(15311596569417327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_FILE,P21_STATUS,P21_LOADED_ROW_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    IF :P21_FILE IS NOT NULL THEN        ',
'        :P21_FILE := NULL; ',
'    END IF;',
'',
'    IF :P21_STATUS IS NOT NULL THEN        ',
'        :P21_STATUS := NULL; ',
'    END IF;',
'',
'    IF :P21_LOADED_ROW_COUNT IS NOT NULL THEN        ',
'        :P21_LOADED_ROW_COUNT := NULL; ',
'    END IF;',
'    ',
'    RETURN NULL;',
'END;',
''))
,p_attribute_07=>'P21_FILE,P21_STATUS,P21_LOADED_ROW_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15311767151417329)
,p_event_id=>wwv_flow_imp.id(15311596569417327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_build_option_id=>wwv_flow_imp.id(765356663646404556)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15312678336417338)
,p_event_id=>wwv_flow_imp.id(15311596569417327)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15311946585417331)
,p_name=>'Set Null & Submit Page (Reset Dept)'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15311900452417330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15312139646417332)
,p_event_id=>wwv_flow_imp.id(15311946585417331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_FILE,P21_STATUS,P21_LOADED_ROW_COUNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'    IF :P21_FILE IS NOT NULL THEN        ',
'        :P21_FILE := NULL;',
'    ELSE',
'        NULL;',
'    END IF;',
'',
'    IF :P21_STATUS IS NOT NULL THEN        ',
'        :P21_STATUS := NULL;',
'    ELSE',
'        NULL;',
'    END IF;',
'',
'    IF :P21_LOADED_ROW_COUNT IS NOT NULL THEN        ',
'        :P21_LOADED_ROW_COUNT := NULL; ',
'    ELSE',
'        NULL;',
'    END IF;',
'    ',
'    RETURN NULL;',
'END;',
''))
,p_attribute_07=>'P21_FILE,P21_STATUS,P21_LOADED_ROW_COUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15312219207417333)
,p_event_id=>wwv_flow_imp.id(15311946585417331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15312318149417334)
,p_name=>'Download File Dept'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15311025398417321)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15312402665417335)
,p_event_id=>wwv_flow_imp.id(15312318149417334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DOWNLOAD'
,p_attribute_01=>'N'
,p_attribute_03=>'ATTACHMENT'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    blob_content, ',
'    -- :P21_HAK_AKSES || '' - Master Hak Akses Upload - '' || ',
'    -- (SELECT COALESCE(MAX(USER_ROLE), ''DEFAULT'') ',
'    --  FROM APX_BF_USER',
'    --  WHERE UPPER(USERNAME) = UPPER(:APP_USER)',
'    -- ) || ''.xlsm'' as filename, ',
'    ''ATI'' || '' - Master Hak Akses Upload - '' || UPPER(:P21_HAK_AKSES) || ''.xlsm'' as filename, ',
'    mime_type',
'    -- , dbms_lob.getlength(blob_content) as file_size,',
'    -- last_updated',
'FROM ',
'    apex_application_files',
'WHERE ',
'    filename = ''ATI - Master Hak Akses Upload Dept.xlsm'''))
,p_attribute_06=>'P21_HAK_AKSES'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15312519193417336)
,p_name=>'Download File User'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15310934188417320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15312570329417337)
,p_event_id=>wwv_flow_imp.id(15312519193417336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DOWNLOAD'
,p_attribute_01=>'N'
,p_attribute_03=>'ATTACHMENT'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    blob_content, ',
'    -- :P21_HAK_AKSES || '' - Master Hak Akses Upload - '' || ',
'    -- (SELECT COALESCE(MAX(USER_ROLE), ''DEFAULT'') ',
'    --  FROM APX_BF_USER',
'    --  WHERE UPPER(USERNAME) = UPPER(:APP_USER)',
'    -- ) || ''.xlsm'' as filename, ',
'    ''ATI'' || '' - Master Hak Akses Upload - '' || UPPER(:P21_HAK_AKSES) || ''.xlsm'' as filename, ',
'    mime_type',
'    -- , dbms_lob.getlength(blob_content) as file_size,',
'    -- last_updated',
'FROM ',
'    apex_application_files',
'WHERE ',
'    filename = ''ATI - Master Hak Akses Upload User.xlsm'''))
,p_attribute_06=>'P21_HAK_AKSES'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15310468773417316)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload Master Hak Akses User'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_access_rights_id    NUMBER;',
'    v_user_access_id      NUMBER;',
'    l_error_count         NUMBER := 0;',
'    l_original_filename   VARCHAR2(255);',
'    l_row_num             NUMBER := 0;',
'    l_success_count       NUMBER := 0;',
'    ',
'    l_username_exists     NUMBER;',
'    l_title_exists        NUMBER;',
'    l_user_access_exists  NUMBER;',
'',
'    TYPE t_combination_type IS TABLE OF VARCHAR2(1000) INDEX BY VARCHAR2(1000);',
'    l_combination_list t_combination_type;',
'',
'BEGIN',
'    SELECT filename',
'    INTO l_original_filename ',
'    FROM apex_application_temp_files',
'    WHERE name = :P21_FILE;',
'',
'    FOR r IN (',
'        SELECT ',
'            p.col001 AS title,',
'            p.col002 AS username,',
'            ROW_NUMBER() OVER (ORDER BY 1) AS row_num',
'        FROM apex_application_temp_files f',
'        CROSS JOIN TABLE(APEX_DATA_PARSER.PARSE(',
'            p_content        => f.blob_content,',
'            p_file_name      => f.name,',
'            p_skip_rows      => 1',
'        )) p',
'        WHERE f.name = :P21_FILE',
'    ) LOOP',
'        ',
'        l_row_num := r.row_num;',
'        ',
'        IF r.title IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': TITLE tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        IF r.username IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': USERNAME tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        DECLARE',
'            l_combination_key VARCHAR2(1000);',
'        BEGIN',
'            l_combination_key := UPPER(r.title) || ''|'' || UPPER(r.username);',
'            ',
'            IF l_combination_list.EXISTS(l_combination_key) THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan USERNAME "'' || r.username || ''" duplikat dalam file yang sama'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                l_combination_list(l_combination_key) := l_row_num;',
'            END IF;',
'        END;',
'',
'        SELECT COUNT(*)',
'        INTO l_username_exists',
'        FROM APPS.FND_USER ',
'        WHERE 1=1 ',
'        AND USER_ID > 1090',
'        AND UPPER(USER_NAME) = UPPER(r.username);',
'        ',
'        IF l_username_exists = 0 THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': USERNAME "'' || r.username || ''" tidak ditemukan dalam sistem'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_title_exists',
'            FROM APX_BF_ACCESS_RIGHTS',
'            WHERE UPPER(TITLE) = UPPER(r.title);',
'            ',
'            IF l_title_exists = 0 THEN',
'                SELECT NVL(MAX(ID), 0) + 1 INTO v_access_rights_id FROM APX_BF_ACCESS_RIGHTS;',
'                ',
'                INSERT INTO APX_BF_ACCESS_RIGHTS (ID, TITLE)',
'                VALUES (v_access_rights_id, UPPER(r.title));',
'            ELSE',
'                SELECT ID INTO v_access_rights_id',
'                FROM APX_BF_ACCESS_RIGHTS',
'                WHERE UPPER(TITLE) = UPPER(r.title)',
'                AND ROWNUM = 1;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Gagal mendapatkan ID untuk TITLE "'' || r.title || ''"'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_user_access_exists',
'            FROM APX_BF_USER_ACCESS',
'            WHERE UPPER(USERNAME) = UPPER(r.username)',
'            AND APX_ACCESS_RIGHTS_ID = v_access_rights_id;',
'            ',
'            IF l_user_access_exists = 0 THEN',
'                SELECT NVL(MAX(ID), 0) + 1 INTO v_user_access_id FROM APX_BF_USER_ACCESS;',
'                ',
'                INSERT INTO APX_BF_USER_ACCESS (ID, USERNAME, APX_ACCESS_RIGHTS_ID)',
'                VALUES (v_user_access_id, UPPER(r.username), v_access_rights_id);',
'                ',
'                l_success_count := l_success_count + 1;',
'            ELSE',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi USERNAME "'' || r.username || ''" dan TITLE "'' || r.title || ''" sudah ada di database'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'    END LOOP;',
'',
'    IF l_error_count = 0 THEN',
'        :P21_STATUS := ''SUCCESS'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        apex_application.g_print_success_message := ''Process Upload Master Hak Akses (User) berhasil. '' || l_success_count || '' baris data berhasil diproses.'';',
'    ELSE',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        IF l_success_count > 0 THEN',
'            apex_application.g_print_success_message := l_success_count || '' baris data berhasil diproses, namun terdapat '' || l_error_count || '' error.'';',
'        ELSE',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Process 1 gagal. '' || l_error_count || '' error ditemukan.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error Process 1: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := 0;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15398749774977378)
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
,p_internal_uid=>3405625399831525
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12582637580665404)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload Master Hak Akses User (edited)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_access_rights_id    NUMBER;',
'    -- v_user_access_id      NUMBER;',
'    l_error_count         NUMBER := 0;',
'    l_original_filename   VARCHAR2(255);',
'    l_row_num             NUMBER := 0;',
'    l_success_count       NUMBER := 0;',
'    ',
'    l_username_exists     NUMBER;',
'    l_title_exists        NUMBER;',
'    l_user_access_exists  NUMBER;',
'',
'    TYPE t_combination_type IS TABLE OF VARCHAR2(1000) INDEX BY VARCHAR2(1000);',
'    l_combination_list t_combination_type;',
'',
'BEGIN',
'    SELECT filename',
'    INTO l_original_filename ',
'    FROM apex_application_temp_files',
'    WHERE name = :P21_FILE;',
'',
'    FOR r IN (',
'        SELECT ',
'            p.col001 AS title,',
'            p.col002 AS username,',
'            ROW_NUMBER() OVER (ORDER BY 1) AS row_num',
'        FROM apex_application_temp_files f',
'        CROSS JOIN TABLE(APEX_DATA_PARSER.PARSE(',
'            p_content        => f.blob_content,',
'            p_file_name      => f.name,',
'            p_skip_rows      => 1',
'        )) p',
'        WHERE f.name = :P21_FILE',
'    ) LOOP',
'        ',
'        l_row_num := r.row_num;',
'        ',
'        IF r.title IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': TITLE tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        IF r.username IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': USERNAME tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        DECLARE',
'            l_combination_key VARCHAR2(1000);',
'        BEGIN',
'            l_combination_key := UPPER(r.title) || ''|'' || UPPER(r.username);',
'            ',
'            IF l_combination_list.EXISTS(l_combination_key) THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan USERNAME "'' || r.username || ''" duplikat dalam file yang sama'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                l_combination_list(l_combination_key) := l_row_num;',
'            END IF;',
'        END;',
'',
'        SELECT COUNT(*)',
'        INTO l_username_exists',
'        FROM APPS.FND_USER ',
'        WHERE 1=1 ',
'        AND USER_ID > 1090',
'        AND UPPER(USER_NAME) = UPPER(r.username);',
'        ',
'        IF l_username_exists = 0 THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': USERNAME "'' || r.username || ''" tidak ditemukan dalam sistem'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_title_exists',
'            FROM APX_BF_ACCESS_RIGHTS',
'            WHERE UPPER(TITLE) = UPPER(r.title);',
'            ',
'            IF l_title_exists = 0 THEN',
'                SELECT NVL(MAX(ID), 0) + 1 INTO v_access_rights_id FROM APX_BF_ACCESS_RIGHTS;',
'                ',
'                INSERT INTO APX_BF_ACCESS_RIGHTS (ID, TITLE)',
'                VALUES (v_access_rights_id, UPPER(r.title));',
'            ELSE',
'                SELECT ID INTO v_access_rights_id',
'                FROM APX_BF_ACCESS_RIGHTS',
'                WHERE UPPER(TITLE) = UPPER(r.title)',
'                AND ROWNUM = 1;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Gagal mendapatkan ID untuk TITLE "'' || r.title || ''"'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_user_access_exists',
'            FROM APX_BF_USER_ACCESS',
'            WHERE UPPER(USERNAME) = UPPER(r.username)',
'            AND APX_ACCESS_RIGHTS_ID = v_access_rights_id;',
'            ',
'            IF l_user_access_exists = 0 THEN',
'                -- SELECT NVL(MAX(ID), 0) + 1 INTO v_user_access_id FROM APX_BF_USER_ACCESS;',
'                ',
'                INSERT INTO APX_BF_USER_ACCESS (USERNAME, APX_ACCESS_RIGHTS_ID)',
'                VALUES (UPPER(r.username), v_access_rights_id);',
'                ',
'                l_success_count := l_success_count + 1;',
'            ELSE',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi USERNAME "'' || r.username || ''" dan TITLE "'' || r.title || ''" sudah ada di database'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'    END LOOP;',
'',
'    IF l_error_count = 0 THEN',
'        :P21_STATUS := ''SUCCESS'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        apex_application.g_print_success_message := ''Process Upload Master Hak Akses (User) berhasil. '' || l_success_count || '' baris data berhasil diproses.'';',
'    ELSE',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        IF l_success_count > 0 THEN',
'            apex_application.g_print_success_message := l_success_count || '' baris data berhasil diproses, namun terdapat '' || l_error_count || '' error.'';',
'        ELSE',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Process 1 gagal. '' || l_error_count || '' error ditemukan.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error Process 1: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := 0;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15398749774977378)
,p_internal_uid=>12582637580665404
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15310554765417317)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload Master Hak Akses Dept'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_access_rights_id    NUMBER;',
'    v_access_list_id      NUMBER;',
'    l_error_count         NUMBER := 0;',
'    l_original_filename   VARCHAR2(255);',
'    l_row_num             NUMBER := 0;',
'    l_success_count       NUMBER := 0;',
'    ',
'    l_dept_exists         NUMBER;',
'    l_title_exists        NUMBER;',
'    l_access_list_exists  NUMBER;',
'',
'    TYPE t_combination_type IS TABLE OF VARCHAR2(1000) INDEX BY VARCHAR2(1000);',
'    l_combination_list t_combination_type;',
'',
'BEGIN',
'    SELECT filename',
'    INTO l_original_filename ',
'    FROM apex_application_temp_files',
'    WHERE name = :P21_FILE;',
'',
'    FOR r IN (',
'        SELECT ',
'            p.col001 AS title,',
'            p.col002 AS dept_name,',
'            ROW_NUMBER() OVER (ORDER BY 1) AS row_num',
'        FROM apex_application_temp_files f',
'        CROSS JOIN TABLE(APEX_DATA_PARSER.PARSE(',
'            p_content        => f.blob_content,',
'            p_file_name      => f.name,',
'            p_skip_rows      => 1',
'        )) p',
'        WHERE f.name = :P21_FILE',
'    ) LOOP',
'        ',
'        l_row_num := r.row_num;',
'        ',
'        IF r.title IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': TITLE tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        IF r.dept_name IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': DEPT_NAME tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        DECLARE',
'            l_combination_key VARCHAR2(1000);',
'        BEGIN',
'            l_combination_key := UPPER(r.title) || ''|'' || UPPER(r.dept_name);',
'            ',
'            IF l_combination_list.EXISTS(l_combination_key) THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan DEPT_NAME "'' || r.dept_name || ''" duplikat dalam file yang sama'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                l_combination_list(l_combination_key) := l_row_num;',
'            END IF;',
'        END;',
'',
'        SELECT COUNT(*)',
'        INTO l_dept_exists',
'        FROM (',
'            select distinct dept_name from APX_BF_BUDGET_MONITOR_HDR ',
'            UNION ',
'            SELECT ''ADM'' AS dept_name FROM DUAL ',
'            UNION ',
'            SELECT ''INV'' AS dept_name FROM DUAL',
'        ) ',
'        WHERE UPPER(dept_name) = UPPER(r.dept_name);',
'        ',
'        IF l_dept_exists = 0 THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': DEPT_NAME "'' || r.dept_name || ''" tidak valid'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_title_exists',
'            FROM APX_BF_ACCESS_RIGHTS',
'            WHERE UPPER(TITLE) = UPPER(r.title);',
'            ',
'            IF l_title_exists = 0 THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': TITLE "'' || r.title || ''" belum terdaftar. Harus diupload melalui Process 1 terlebih dahulu.'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                SELECT ID INTO v_access_rights_id',
'                FROM APX_BF_ACCESS_RIGHTS',
'                WHERE UPPER(TITLE) = UPPER(r.title)',
'                AND ROWNUM = 1;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': TITLE "'' || r.title || ''" tidak ditemukan. Harus diupload melalui Process 1 terlebih dahulu.'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_access_list_exists',
'            FROM APX_BF_ACCESS_RIGHTS_LISTS',
'            WHERE APX_ACCESS_RIGHTS_ID = v_access_rights_id',
'            AND UPPER(DEPT_NAME) = UPPER(r.dept_name);',
'            ',
'            IF l_access_list_exists = 0 THEN',
'                SELECT NVL(MAX(ID), 0) + 1 INTO v_access_list_id FROM APX_BF_ACCESS_RIGHTS_LISTS;',
'                ',
'                INSERT INTO APX_BF_ACCESS_RIGHTS_LISTS (ID, APX_ACCESS_RIGHTS_ID, DEPT_NAME)',
'                VALUES (v_access_list_id, v_access_rights_id, UPPER(r.dept_name));',
'                ',
'                l_success_count := l_success_count + 1;',
'            ELSE',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan DEPT_NAME "'' || r.dept_name || ''" sudah ada'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'    END LOOP;',
'',
'    IF l_error_count = 0 THEN',
'        :P21_STATUS := ''SUCCESS'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        apex_application.g_print_success_message := ''Process Upload Master Hak Akses (Department) berhasil. '' || l_success_count || '' baris data berhasil diproses.'';',
'    ELSE',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        IF l_success_count > 0 THEN',
'            apex_application.g_print_success_message := l_success_count || '' baris data berhasil diproses, namun terdapat '' || l_error_count || '' error.'';',
'        ELSE',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Process Upload Master Hak Akses (Department) gagal. '' || l_error_count || '' error ditemukan.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error Process Upload Master Hak Akses (Department): '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := 0;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15399487364976019)
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
,p_internal_uid=>3405711391831526
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12582710082665405)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload Master Hak Akses Dept (edited)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_access_rights_id    NUMBER;',
'    -- v_access_list_id      NUMBER;',
'    l_error_count         NUMBER := 0;',
'    l_original_filename   VARCHAR2(255);',
'    l_row_num             NUMBER := 0;',
'    l_success_count       NUMBER := 0;',
'    ',
'    l_dept_exists         NUMBER;',
'    l_title_exists        NUMBER;',
'    l_access_list_exists  NUMBER;',
'',
'    TYPE t_combination_type IS TABLE OF VARCHAR2(1000) INDEX BY VARCHAR2(1000);',
'    l_combination_list t_combination_type;',
'',
'BEGIN',
'    SELECT filename',
'    INTO l_original_filename ',
'    FROM apex_application_temp_files',
'    WHERE name = :P21_FILE;',
'',
'    FOR r IN (',
'        SELECT ',
'            p.col001 AS title,',
'            p.col002 AS dept_name,',
'            ROW_NUMBER() OVER (ORDER BY 1) AS row_num',
'        FROM apex_application_temp_files f',
'        CROSS JOIN TABLE(APEX_DATA_PARSER.PARSE(',
'            p_content        => f.blob_content,',
'            p_file_name      => f.name,',
'            p_skip_rows      => 1',
'        )) p',
'        WHERE f.name = :P21_FILE',
'    ) LOOP',
'        ',
'        l_row_num := r.row_num;',
'        ',
'        IF r.title IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': TITLE tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        IF r.dept_name IS NULL THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': DEPT_NAME tidak boleh kosong'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        DECLARE',
'            l_combination_key VARCHAR2(1000);',
'        BEGIN',
'            l_combination_key := UPPER(r.title) || ''|'' || UPPER(r.dept_name);',
'            ',
'            IF l_combination_list.EXISTS(l_combination_key) THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan DEPT_NAME "'' || r.dept_name || ''" duplikat dalam file yang sama'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                l_combination_list(l_combination_key) := l_row_num;',
'            END IF;',
'        END;',
'',
'        SELECT COUNT(*)',
'        INTO l_dept_exists',
'        FROM (',
'            select distinct dept_name from APX_BF_BUDGET_MONITOR_HDR ',
'            UNION ',
'            SELECT ''ADM'' AS dept_name FROM DUAL ',
'            UNION ',
'            SELECT ''INV'' AS dept_name FROM DUAL',
'        ) ',
'        WHERE UPPER(dept_name) = UPPER(r.dept_name);',
'        ',
'        IF l_dept_exists = 0 THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Error pada baris '' || l_row_num || '': DEPT_NAME "'' || r.dept_name || ''" tidak valid'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            l_error_count := l_error_count + 1;',
'            CONTINUE;',
'        END IF;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_title_exists',
'            FROM APX_BF_ACCESS_RIGHTS',
'            WHERE UPPER(TITLE) = UPPER(r.title);',
'            ',
'            IF l_title_exists = 0 THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': TITLE "'' || r.title || ''" belum terdaftar. Harus diupload melalui Process 1 terlebih dahulu.'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            ELSE',
'                SELECT ID INTO v_access_rights_id',
'                FROM APX_BF_ACCESS_RIGHTS',
'                WHERE UPPER(TITLE) = UPPER(r.title)',
'                AND ROWNUM = 1;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': TITLE "'' || r.title || ''" tidak ditemukan. Harus diupload melalui Process 1 terlebih dahulu.'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_access_list_exists',
'            FROM APX_BF_ACCESS_RIGHTS_LISTS',
'            WHERE APX_ACCESS_RIGHTS_ID = v_access_rights_id',
'            AND UPPER(DEPT_NAME) = UPPER(r.dept_name);',
'            ',
'            IF l_access_list_exists = 0 THEN',
'                -- SELECT NVL(MAX(ID), 0) + 1 INTO v_access_list_id FROM APX_BF_ACCESS_RIGHTS_LISTS;',
'                ',
'                INSERT INTO APX_BF_ACCESS_RIGHTS_LISTS (APX_ACCESS_RIGHTS_ID, DEPT_NAME)',
'                VALUES (v_access_rights_id, UPPER(r.dept_name));',
'                ',
'                l_success_count := l_success_count + 1;',
'            ELSE',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': Kombinasi TITLE "'' || r.title || ''" dan DEPT_NAME "'' || r.dept_name || ''" sudah ada'',',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'            END IF;',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                APEX_ERROR.ADD_ERROR(',
'                    p_message => ''Error pada baris '' || l_row_num || '': '' || SQLERRM,',
'                    p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'                );',
'                l_error_count := l_error_count + 1;',
'                CONTINUE;',
'        END;',
'',
'    END LOOP;',
'',
'    IF l_error_count = 0 THEN',
'        :P21_STATUS := ''SUCCESS'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        apex_application.g_print_success_message := ''Process Upload Master Hak Akses (Department) berhasil. '' || l_success_count || '' baris data berhasil diproses.'';',
'    ELSE',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := l_success_count;',
'        ',
'        IF l_success_count > 0 THEN',
'            apex_application.g_print_success_message := l_success_count || '' baris data berhasil diproses, namun terdapat '' || l_error_count || '' error.'';',
'        ELSE',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Process Upload Master Hak Akses (Department) gagal. '' || l_error_count || '' error ditemukan.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'        END IF;',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error Process Upload Master Hak Akses (Department): '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        :P21_STATUS := ''FAILED'';',
'        :P21_LOADED_ROW_COUNT := 0;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15399487364976019)
,p_internal_uid=>12582710082665405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15311407815417325)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'Tidak dapat clear cache.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>3406564441831534
);
wwv_flow_imp.component_end;
end;
/
