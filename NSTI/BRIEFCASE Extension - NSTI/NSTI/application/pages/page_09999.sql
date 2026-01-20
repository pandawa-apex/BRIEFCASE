prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1643206756007669
,p_default_application_id=>104
,p_default_id_offset=>17112880843997265
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'BRIEFCASE EXTENSION - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="loading-progress" style="',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 3px;',
'    background: rgba(255,255,255,0.1);',
'    z-index: 9999;',
'    display: none;',
'">',
'    <div id="progress-bar" style="',
'        height: 100%;',
'        background: linear-gradient(90deg, #915EFF, #00dbde);',
'        width: 0%;',
'        transition: width 0.3s ease;',
'    "></div>',
'    <div id="progress-text" style="',
'        position: absolute;',
'        top: 10px;',
'        right: 20px;',
'        color: #fff;',
'        font-family: Arial, sans-serif;',
'        font-size: 14px;',
'    ">0%</div>',
'</div>',
'',
'<!-- ---------------------------------------------------------------------------------- -->',
'',
'<div>',
'',
'<div class="floating-elements">',
'      <div class="floating-element" style="transform: translate(8.45px, 3.64px);"></div>',
'      <div class="floating-element" style="transform: translate(4.1px, 0.5px);"></div>',
'      <div class="floating-element" style="transform: translate(-0.25px, -2.64px);"></div>',
'      <div class="floating-element" style="transform: translate(-4.6px, -5.78px);"></div>',
'  </div>',
'',
'<div class="cube-container">',
'      <div class="cube" id="interactive-cube" style="transform: rotateY(8.2deg) rotateX(1deg);">',
'          <div class="face front"><i class="fas fa-cube"></i></div>',
'          <div class="face back"><i class="fas fa-code"></i></div>',
'          <div class="face right"><i class="fas fa-magic"></i></div>',
'          <div class="face left"><i class="fas fa-rocket"></i></div>',
'          <div class="face top"><i class="fas fa-star"></i></div>',
'          <div class="face bottom"><i class="fas fa-heart"></i></div>',
'      </div>',
'  </div>',
'  ',
'</div>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{',
'  var passwordInput = document.getElementById(''P9999_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'  }',
'}',
'',
'// ----------------------------------------------------------------------------------',
'',
'function initCubeDragWithSmoothTransition() {',
'    const cube = document.getElementById(''interactive-cube'');',
'    const container = cube.parentElement;',
'    ',
'    let isDragging = false;',
'    let startX, startY;',
'    let rotationY = 8.2;',
'    let rotationX = 1;',
'    ',
'    let autoRotation = true;',
'    let animationId;',
'    // const rotationSpeed = 0.5;',
'    const rotationSpeed = 1;',
'    ',
'    startAutoRotation();',
'    ',
'    container.addEventListener(''mousedown'', startDrag);',
'    document.addEventListener(''mousemove'', drag);',
'    document.addEventListener(''mouseup'', endDrag);',
'    ',
'    container.addEventListener(''touchstart'', function(e) {',
'        startDrag(e.touches[0]);',
'    });',
'    document.addEventListener(''touchmove'', function(e) {',
'        drag(e.touches[0]);',
'    });',
'    document.addEventListener(''touchend'', endDrag);',
'    ',
'    function startDrag(e) {',
'        isDragging = true;',
'        startX = e.clientX;',
'        startY = e.clientY;',
'        container.style.cursor = ''grabbing'';',
'        ',
'        stopAutoRotation();',
'        ',
'        e.preventDefault();',
'    }',
'    ',
'    function drag(e) {',
'        if (!isDragging) return;',
'        ',
'        const currentX = e.clientX;',
'        const currentY = e.clientY;',
'        ',
'        const deltaX = currentX - startX;',
'        const deltaY = currentY - startY;',
'        ',
'        rotationY += deltaX * 0.5;',
'        rotationX -= deltaY * 0.5;',
'        ',
'        updateCubeRotation();',
'        ',
'        startX = currentX;',
'        startY = currentY;',
'        ',
'        e.preventDefault();',
'    }',
'    ',
'    function endDrag() {',
'        if (!isDragging) return;',
'        ',
'        isDragging = false;',
'        container.style.cursor = ''grab'';',
'        ',
'        startAutoRotation();',
'    }',
'    ',
'    function updateCubeRotation() {',
'        cube.style.transform = `rotateY(${rotationY}deg) rotateX(${rotationX}deg)`;',
'    }',
'    ',
'    function startAutoRotation() {',
'        if (autoRotation && !isDragging) {',
'            function animate() {',
'                rotationY += rotationSpeed * 0.3;',
'                rotationX += rotationSpeed * 0.2;',
'                ',
'                updateCubeRotation();',
'                animationId = requestAnimationFrame(animate);',
'            }',
'            animate();',
'        }',
'    }',
'    ',
'    function stopAutoRotation() {',
'        if (animationId) {',
'            cancelAnimationFrame(animationId);',
'            animationId = null;',
'        }',
'    }',
'    ',
'    container.addEventListener(''dblclick'', function() {',
'        rotationY = 8.2;',
'        rotationX = 1;',
'        updateCubeRotation();',
'    });',
'    ',
'    window.addEventListener(''beforeunload'', function() {',
'        stopAutoRotation();',
'    });',
'}',
'',
'document.addEventListener(''DOMContentLoaded'', function() {',
'    setTimeout(initCubeDragWithSmoothTransition, 100);',
'});',
'',
'// ----------------------------------------------------------------------------------',
'',
'// Loading Progress System',
'function initLoadingProgress() {',
'    const progressBar = document.getElementById(''progress-bar'');',
'    const progressText = document.getElementById(''progress-text'');',
'    const loadingProgress = document.getElementById(''loading-progress'');',
'    ',
'    let progress = 0;',
'    let simulatedProgress = 0;',
'    ',
'    loadingProgress.style.display = ''block'';',
'    ',
'    function simulateLoading() {',
'        const interval = setInterval(() => {',
'            if (progress >= 90) {',
'                clearInterval(interval);',
'                return;',
'            }',
'            ',
'            const increment = Math.random() * 10 + 5;',
'            simulatedProgress = Math.min(progress + increment, 90);',
'            ',
'            updateProgress(simulatedProgress);',
'        }, 200);',
'    }',
'    ',
'    function updateProgress(value) {',
'        progress = value;',
'        progressBar.style.width = progress + ''%'';',
'        progressText.textContent = Math.round(progress) + ''%'';',
'    }',
'    ',
'    window.addEventListener(''load'', function() {',
'        setTimeout(() => {',
'            updateProgress(100);',
'            ',
'            setTimeout(() => {',
'                loadingProgress.style.display = ''none'';',
'            }, 500);',
'        }, 300);',
'    });',
'    ',
'    if (document.readyState === ''loading'') {',
'        document.addEventListener(''DOMContentLoaded'', function() {',
'            updateProgress(30);',
'            simulateLoading();',
'        });',
'    } else {',
'        updateProgress(50);',
'        simulateLoading();',
'    }',
'    ',
'    setTimeout(() => {',
'        if (progress < 100) {',
'            updateProgress(100);',
'            setTimeout(() => {',
'                loadingProgress.style.display = ''none'';',
'            }, 500);',
'        }',
'    }, 5000);',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// initCubeDrag(); ',
'// initSimpleCubeDrag();',
'// initCubeDragWithSmoothTransition();',
'',
'initLoadingProgress();',
'document.addEventListener(''DOMContentLoaded'', function() {',
'    setTimeout(initCubeDragWithSmoothTransition, 100);',
'});'))
,p_css_file_urls=>'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-icon {',
'        position: absolute;',
'        right: 15px;',
'        top: 50%;',
'        /* transform: translateY(-50%); */',
'        color: #00dbde;',
'        z-index: 2;',
'        padding-top: 17px;',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'body, html {',
'    display: flex;',
'    text-align: center;',
'    justify-content: center;',
'    background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);',
'    align-items: center;',
'    height: 100vh;',
'    margin: 0;',
'    font-family: Arial, sans-serif;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* #welcome_region{',
'    background-color: transparent;',
'}',
'',
'.typewriter-container {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'}',
'',
'.typewriter-text {',
'    font-size: 2em;',
'    font-weight: bold;',
'    color: #6ec2c8;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    animation: typing 4s steps(30, end) forwards, blink-caret 0.5s step-end infinite;',
'    clip-path: inset(0 100% 0 0);',
'}',
'',
'@keyframes typing {',
'    from { ',
'        clip-path: inset(0 100% 0 0);',
'    }',
'    to { ',
'        clip-path: inset(0 0% 0 0);',
'    }',
'}',
'',
'@keyframes blink-caret {',
'    from, to { ',
'        border-color: transparent; ',
'    }',
'    50% { ',
'        border-color: #333; ',
'    }',
'} */',
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
'/* .field-icon {',
'        position: absolute;',
'        display: contents;',
'        right: 3vh;',
'        top: 50%;',
'        transform: translateY(-50%);',
'        cursor: pointer;',
'        color: #00dbde !important;',
'        z-index: 3;',
'    } */',
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
'/* #R775934893971820643{',
'    position: relative;',
'    border-radius: 8px;',
'    background-color: rgba(217, 217, 217, 0.45);',
'    color: #a78c8c;',
'} */',
'',
'/* #R775934893971820643 {',
'        position: relative;',
'        border-radius: 15px;',
'        background: rgba(255, 255, 255, 0.1);',
'        color: #fff;',
'        backdrop-filter: blur(10px);',
'        border: 1px solid rgba(255, 255, 255, 0.2);',
'        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'        overflow: hidden;',
'    } */',
'',
'.t-Login-region {',
'    position: relative;',
'    border-radius: 15px;',
'    background: rgba(255, 255, 255, 0.1);',
'    color: #fff;',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255, 255, 255, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* Button Styling */',
'    #login_button {',
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
'    #login_button:hover {',
'        transform: translateY(-3px);',
'        box-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'    }',
'',
'    #login_button-label {',
'        color: white;',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* #get_password{',
'    width: 100%;',
'    padding: 15px;',
'    border: none;',
'    color: #00dbde;',
'    flex-wrap: wrap;',
'    max-width: fit-content;',
'}',
'',
'#get_password:hover{',
'    color: white;',
'} */',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#get_password{',
'    width: 100%;',
'    padding: 15px 15px 0px 15px;',
'    border: none;',
'    color: #00dbde;',
'    flex-wrap: wrap;',
'    max-width: fit-content;',
'    background: none;',
'    transition: all 0.3s ease;',
'    text-shadow: 0 10px 20px rgba(0, 219, 222, 0.3);',
'    margin-top: 15px;',
'}',
'',
'#get_password:hover{',
'    /* color: white; */',
'    color: #e8d0ea',
'}',
'',
'#get_password:hover {',
'        transform: translateY(-3px);',
'        text-shadow: 0 15px 30px rgba(0, 219, 222, 0.4);',
'    }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#forgot_password_login{',
'    width: 100%;',
'    padding: 15px;',
'    border: none;',
'    color: #c3e3ec;',
'    flex-wrap: wrap;',
'    max-width: fit-content;',
'    background: none;',
'}',
'',
'#forgot_password_login:hover{',
'    color: white;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* 3D Background Elements */',
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
'/* 3D Cube */',
'    .cube-container {',
'        position: absolute;',
'        top: 20%;',
'        right: 10%;',
'        width: 150px;',
'        height: 150px;',
'        perspective: 1000px;',
'        z-index: 1;',
'        cursor: grab;',
'    }',
'',
'    .cube-container:active {',
'        cursor: grabbing;',
'    }',
'',
'    .cube {',
'        position: relative;',
'        width: 100%;',
'        height: 100%;',
'        transform-style: preserve-3d;',
'        animation: rotate 20s infinite linear;',
'        transition: transform 0.5s ease-out;',
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
'        font-size: 3rem;',
'        color: #00dbde;',
'        backdrop-filter: blur(5px);',
'        /* text-shadow: 0 0 10px rgba(0, 219, 222, 0.5); */',
'    }',
'',
'    .front { transform: translateZ(75px); }',
'    .back { transform: rotateY(180deg) translateZ(75px); }',
'    .right { transform: rotateY(90deg) translateZ(75px); }',
'    .left { transform: rotateY(-90deg) translateZ(75px); }',
'    .top { transform: rotateX(90deg) translateZ(75px); }',
'    .bottom { transform: rotateX(-90deg) translateZ(75px); }',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'/* Loading Progress Styles */',
'#loading-progress {',
'    position: fixed;',
'    top: 0;',
'    left: 0;',
'    width: 100%;',
'    height: 3px;',
'    background: rgba(255, 255, 255, 0.1);',
'    z-index: 9999;',
'    display: none;',
'}',
'',
'#progress-bar {',
'    height: 100%;',
'    background: linear-gradient(90deg, #915EFF, #00dbde);',
'    width: 0%;',
'    transition: width 0.3s ease;',
'    position: relative;',
'}',
'',
'#progress-text {',
'    position: absolute;',
'    top: 10px;',
'    right: 20px;',
'    color: #fff;',
'    font-family: Arial, sans-serif;',
'    font-size: 14px;',
'    font-weight: bold;',
'    text-shadow: 0 1px 2px rgba(0,0,0,0.5);',
'}',
'',
'#progress-bar.pulse {',
'    animation: pulse 1.5s ease-in-out infinite;',
'}',
'',
'@keyframes pulse {',
'    0% { opacity: 1; }',
'    50% { opacity: 0.7; }',
'    100% { opacity: 1; }',
'}'))
,p_step_template=>wwv_flow_imp.id(792773787475816787)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793047774815817908)
,p_plug_name=>'BRIEFCASE EXTENSION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(792852145109816865)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58191607649606269)
,p_plug_name=>'Welcome'
,p_region_name=>'welcome_region'
,p_parent_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(792857394007816866)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <!DOCTYPE html>',
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
'</html> -->',
'',
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Text Animation</title>',
'    <link rel="stylesheet" href="styles.css">',
'    <style>',
'        .typewriter-container {',
'            display: flex;',
'            justify-content: center;',
'            align-items: center;',
'            gap: 15px;',
'            width: 100%;',
'        }',
'        ',
'        .typewriter-text {',
'            font-size: 2em;',
'            font-weight: bold;',
'            color: #6ec2c8;',
'            white-space: nowrap;',
'            overflow: hidden;',
'            animation: typing 2s steps(30, end) forwards, blink-caret 0.5s step-end infinite;',
'            clip-path: inset(0 100% 0 0);',
'        }',
'        ',
'        .welcome-info-icon {',
'            display: flex;',
'            color: #00dbde;',
'            font-size: 1.5em;',
'            transition: all 0.3s ease;',
'            margin-left: 0;',
'            opacity: 0;',
'            animation: fadeInSlide 0.5s ease forwards;',
'            animation-delay: 2s;',
'        }',
'        ',
'        .welcome-info-icon:hover {',
'            color: #fc00ff;',
'            transform: scale(1.1);',
'        }',
'        ',
'        @keyframes typing {',
'            from { ',
'                clip-path: inset(0 100% 0 0);',
'            }',
'            to { ',
'                clip-path: inset(0 0% 0 0);',
'            }',
'        }',
'        ',
'        @keyframes blink-caret {',
'            from, to { ',
'                border-color: transparent; ',
'            }',
'            50% { ',
'                border-color: #333; ',
'            }',
'        }',
'        ',
'        @keyframes fadeInSlide {',
'            0% {',
'                opacity: 0;',
'                transform: translateX(-20px);',
'            }',
'            100% {',
'                opacity: 1;',
'                transform: translateX(0);',
'            }',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="typewriter-container">',
'        <div class="typewriter-text">',
'            Welcome!',
'        </div>',
'        ',
'        <a href="https://drive.google.com/file/d/1z5kRnqUQh2SOtg7EXVqHYCJ4tdAULLWs/view?usp=sharing" ',
'           target="_blank" ',
'           class="welcome-info-icon"',
'           title="User Guide">',
'            <i class="fa fa-info-circle-o"></i>',
'        </a>',
'    </div>',
'</body>',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(793049371838817953)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_button_name=>'LOGIN'
,p_button_static_id=>'login_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(792930630543816968)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50859136233553646)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_button_name=>'GET_PASSWORD'
,p_button_static_id=>'get_password'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(792930630543816968)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Didn''t have password? Get Password!'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8889:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(51258582039612368)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_button_name=>'FORGOT_PASSWORD'
,p_button_static_id=>'forgot_password_login'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(792930630543816968)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forgot Password?'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:8890:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793048161825817937)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(792927759931816944)
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
 p_id=>wwv_flow_imp.id(793048632018817943)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye-slash field-icon" style="color: black" aria-hidden="true" onClick="viewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(792927759931816944)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793048945024817948)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(793047774815817908)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(792927759931816944)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(50862077059553675)
,p_name=>'Disable Inspect'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(792753582484816504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(50862190236553676)
,p_event_id=>wwv_flow_imp.id(50862077059553675)
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
 p_id=>wwv_flow_imp.id(793051589917817986)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>142997653735961590
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(793052040208817987)
,p_page_process_id=>wwv_flow_imp.id(793051589917817986)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(793052556678817987)
,p_page_process_id=>wwv_flow_imp.id(793051589917817986)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793049643326817958)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>142995707144961562
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(793050146097817969)
,p_page_process_id=>wwv_flow_imp.id(793049643326817958)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(793050671207817985)
,p_page_process_id=>wwv_flow_imp.id(793049643326817958)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(793051190266817985)
,p_page_process_id=>wwv_flow_imp.id(793049643326817958)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793053501071817989)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>142999564889961593
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(793053128476817988)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>142999192294961592
);
wwv_flow_imp.component_end;
end;
/
