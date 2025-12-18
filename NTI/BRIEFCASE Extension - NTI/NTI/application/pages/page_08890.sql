prompt --application/pages/page_08890
begin
--   Manifest
--     PAGE: 08890
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
 p_id=>8890
,p_name=>'Forgot Password'
,p_alias=>'FORGOT-PASSWORD'
,p_step_title=>'Forgot Password'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="lines">',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'  <div class="line"></div>',
'</div>',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function generateMathQuestion() {',
'    const operations = [''+'', ''-'', ''*''];',
'    const operation = operations[Math.floor(Math.random() * operations.length)];',
'    ',
'    let num1, num2, result;',
'    ',
'    switch(operation) {',
'        case ''+'':',
'            num1 = Math.floor(Math.random() * 10) + 1;',
'            num2 = Math.floor(Math.random() * 10) + 1;',
'            result = num1 + num2;',
'            break;',
'        case ''-'':',
'            num1 = Math.floor(Math.random() * 15) + 5;',
'            num2 = Math.floor(Math.random() * 5) + 1;',
'            result = num1 - num2;',
'            break;',
'        case ''*'':',
'            num1 = Math.floor(Math.random() * 5) + 1;',
'            num2 = Math.floor(Math.random() * 5) + 1;',
'            result = num1 * num2;',
'            break;',
'    }',
'    ',
'    const question = `${num1} ${operation} ${num2}`;',
'    ',
'    document.getElementById(''math_question'').textContent = `What is ${question}?`;',
'    document.getElementById(''P8890_CAPTCHA_QUESTION'').value = question;',
'    document.getElementById(''P8890_CAPTCHA_RESULT'').value = result;',
'    document.getElementById(''P8890_CAPTCHA_ANSWER'').value = '''';',
'    ',
'    document.getElementById(''P8890_CAPTCHA_ANSWER'').classList.remove(''is-valid'', ''is-invalid'');',
'    disableSubmitButton();',
'    hideCaptchaError();',
'    ',
'    console.log(''Generated question:'', question, ''Result:'', result);',
'}',
'',
'function validateCaptchaRealTime() {',
'    const answerInput = document.getElementById(''P8890_CAPTCHA_ANSWER'');',
'    const userAnswer = parseInt(answerInput.value);',
'    const correctAnswer = parseInt(document.getElementById(''P8890_CAPTCHA_RESULT'').value);',
'    const submitButton = document.getElementById(''submit_button'');',
'    ',
'    answerInput.classList.remove(''is-valid'', ''is-invalid'');',
'    hideCaptchaError();',
'    ',
'    if (answerInput.value === '''') {',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    if (isNaN(userAnswer)) {',
'        answerInput.classList.add(''is-invalid'');',
'        showCaptchaError(''Please enter a valid number'');',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    if (userAnswer !== correctAnswer) {',
'        answerInput.classList.add(''is-invalid'');',
'        showCaptchaError(''Incorrect answer. Please try again.'');',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    answerInput.classList.add(''is-valid'');',
'    hideCaptchaError();',
'    enableSubmitButton();',
'    return true;',
'}',
'',
'function enableSubmitButton() {',
'    const submitButton = document.getElementById(''submit_button'');',
'    if (submitButton) {',
'        submitButton.disabled = false;',
'        submitButton.classList.remove(''btn-disabled'');',
'        submitButton.classList.add(''btn-enabled'');',
'        ',
'        const successMsg = document.getElementById(''captcha_success'');',
'        if (successMsg) {',
'            successMsg.style.display = ''block'';',
'        }',
'    }',
'}',
'',
'function disableSubmitButton() {',
'    const submitButton = document.getElementById(''submit_button'');',
'    if (submitButton) {',
'        submitButton.disabled = true;',
'        submitButton.classList.add(''btn-disabled'');',
'        submitButton.classList.remove(''btn-enabled'');',
'        ',
'        const successMsg = document.getElementById(''captcha_success'');',
'        if (successMsg) {',
'            successMsg.style.display = ''none'';',
'        }',
'    }',
'}',
'',
'function refreshCaptcha() {',
'    generateMathQuestion();',
'    const answerInput = document.getElementById(''P8890_CAPTCHA_ANSWER'');',
'    answerInput.focus();',
'    ',
'    apex.message.showPageSuccess(''New question generated!'');',
'}',
'',
'function validateCaptchaBeforeSubmit() {',
'    const answerInput = document.getElementById(''P8890_CAPTCHA_ANSWER'');',
'    const userAnswer = parseInt(answerInput.value);',
'    const correctAnswer = parseInt(document.getElementById(''P8890_CAPTCHA_RESULT'').value);',
'    ',
'    if (answerInput.value === '''') {',
'        answerInput.classList.add(''is-invalid'');',
'        showCaptchaError(''Please solve the math problem to continue'');',
'        answerInput.focus();',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    if (isNaN(userAnswer)) {',
'        answerInput.classList.add(''is-invalid'');',
'        showCaptchaError(''Please enter a valid number'');',
'        answerInput.focus();',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    if (userAnswer !== correctAnswer) {',
'        answerInput.classList.add(''is-invalid'');',
'        showCaptchaError(''Incorrect answer. Please try again.'');',
'        generateMathQuestion();',
'        answerInput.focus();',
'        disableSubmitButton();',
'        return false;',
'    }',
'    ',
'    return true;',
'}',
'',
'function handleSubmit() {',
'    if (validateCaptchaBeforeSubmit()) {',
'        apex.submit({',
'            request: ''SUBMIT'',',
'            showSpinner: true',
'        });',
'    }',
'}',
'',
'function showCaptchaError(message) {',
'    const errorElement = document.getElementById(''captcha_error'');',
'    if (errorElement) {',
'        errorElement.textContent = message;',
'        errorElement.style.display = ''block'';',
'    }',
'}',
'',
'function hideCaptchaError() {',
'    const errorElement = document.getElementById(''captcha_error'');',
'    if (errorElement) {',
'        errorElement.style.display = ''none'';',
'    }',
'}',
'',
'document.addEventListener(''DOMContentLoaded'', function() {',
'    generateMathQuestion();',
'    ',
'    document.getElementById(''P8890_CAPTCHA_ANSWER'').addEventListener(''input'', function() {',
'        if (this.value.length > 0) {',
'            validateCaptchaRealTime();',
'        } else {',
'            this.classList.remove(''is-valid'', ''is-invalid'');',
'            hideCaptchaError();',
'            disableSubmitButton();',
'        }',
'    });',
'    ',
'    setTimeout(() => {',
'        document.getElementById(''P8890_CAPTCHA_ANSWER'').focus();',
'    }, 1000);',
'    ',
'    disableSubmitButton();',
'});',
'',
'/* -------------------------------------------------------------------------------------------- */'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'$(''#P8890_EMAIL, #P8890_USER_NAME'').on(''input'', function() {',
'    var currentValue = $(this).val();',
'    $(this).val(currentValue.toUpperCase());',
'});',
'',
'$(''#P8890_EMAIL, #P8890_USER_NAME'').on(''paste'', function(e) {',
'    var pasteData = e.originalEvent.clipboardData.getData(''text'');',
'    e.preventDefault();',
'    $(this).val(pasteData.toUpperCase());',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.lines {',
'  position: absolute;',
'  top: 0;',
'  left: 0;',
'  right: 0;',
'  height: 100%;',
'  margin: auto;',
'  width: 90vw;',
'  display: flex;',
'  justify-content: space-between;',
'}',
'',
'.line {',
'  position: relative;',
'  width: 1px;',
'  height: 100%;',
'  overflow: hidden;',
'}',
'',
'.line::after {',
'  content: '''';',
'  display: block;',
'  position: absolute;',
'  height: 15vh;',
'  width: 100%;',
'  top: -50%;',
'  left: 0;',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #ffffff 75%, #ffffff 100%);',
'  animation: drop 7s 0s infinite;',
'  animation-fill-mode: forwards;',
'  animation-timing-function: cubic-bezier(0.4, 0.26, 0, 0.97);',
'}',
'',
'.line:nth-child(1)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #FF4500 75%, #FF4500 100%);',
'  animation-delay: 0.5s;',
'}',
'',
'.line:nth-child(2)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #32CD32 75%, #32CD32 100%);',
'  animation-delay: 1s;',
'}',
'',
'.line:nth-child(3)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #1E90FF 75%, #1E90FF 100%);',
'  animation-delay: 1.5s;',
'}',
'',
'.line:nth-child(4)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #FFD700 75%, #FFD700 100%);',
'  animation-delay: 2s;',
'}',
'',
'.line:nth-child(5)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #8A2BE2 75%, #8A2BE2 100%);',
'  animation-delay: 2.5s;',
'}',
'',
'.line:nth-child(6)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #20B2AA 75%, #20B2AA 100%);',
'  animation-delay: 3s;',
'}',
'',
'.line:nth-child(7)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #DC143C 75%, #DC143C 100%);',
'  animation-delay: 3.5s;',
'}',
'',
'.line:nth-child(8)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #00FA9A 75%, #00FA9A 100%);',
'  animation-delay: 4s;',
'}',
'',
'.line:nth-child(9)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #FF1493 75%, #FF1493 100%);',
'  animation-delay: 4.5s;',
'}',
'',
'.line:nth-child(10)::after {',
'  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, #00BFFF 75%, #00BFFF 100%);',
'  animation-delay: 5s;',
'}',
'',
'@keyframes drop {',
'  0% {',
'    top: -50%;',
'  }',
'  100% {',
'    top: 110%;',
'  }',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P8890_EMAIL,',
'#P8890_USER_NAME {',
'    text-transform: uppercase !important;',
'}',
'',
'#P8890_EMAIL::placeholder,',
'#P8890_USER_NAME::placeholder {',
'    text-transform: none !important;',
'    font-style: italic;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'.btn-disabled {',
'    opacity: 0.6 !important;',
'    cursor: not-allowed !important;',
'    background-color: #6c757d !important;',
'    border-color: #6c757d !important;',
'}',
'',
'.btn-enabled {',
'    opacity: 1 !important;',
'    cursor: pointer !important;',
'    background-color: #007bff !important;',
'    border-color: #007bff !important;',
'}',
'',
'.is-valid {',
'    border-color: #28a745 !important;',
'    box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25) !important;',
'}',
'',
'.is-invalid {',
'    border-color: #dc3545 !important;',
'    box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25) !important;',
'}',
'',
'.required-field::after {',
'    content: " *";',
'    color: #dc3545;',
'}',
'',
'.captcha-success {',
'    color: #28a745;',
'    font-size: 14px;',
'    font-weight: 500;',
'    padding: 12px 15px;',
'    background-color: #d4edda;',
'    border: 1px solid #c3e6cb;',
'    border-radius: 6px;',
'    margin-top: 15px;',
'    display: none;',
'    text-align: center;',
'}',
'',
'.captcha-success i {',
'    margin-right: 8px;',
'    font-size: 16px;',
'}',
'',
'.a-Form-error {',
'    color: #dc3545;',
'    font-size: 14px;',
'    font-weight: 500;',
'    padding: 12px 15px;',
'    background-color: #f8d7da;',
'    border: 1px solid #f5c6cb;',
'    border-radius: 6px;',
'    margin-top: 15px;',
'    text-align: center;',
'}',
'',
'.a-Form-error i {',
'    margin-right: 8px;',
'    font-size: 16px;',
'}',
'',
'.captcha-container {',
'    background: #f8f9fa;',
'    padding: 25px;',
'    border-radius: 10px;',
'    border: 2px solid #e9ecef;',
'    margin: 20px 0;',
'    box-shadow: 0 2px 10px rgba(0,0,0,0.08);',
'}',
'',
'#math_question {',
'    font-size: 18px;',
'    font-weight: bold;',
'    margin: 15px 0;',
'    padding: 20px;',
'    background: white;',
'    border-radius: 8px;',
'    text-align: center;',
'    border: 2px dashed #dee2e6;',
'    color: #495057;',
'    box-shadow: 0 2px 5px rgba(0,0,0,0.05);',
'}',
'',
'#math_question i {',
'    margin-right: 10px;',
'    color: #007bff;',
'}',
'',
'#P8890_CAPTCHA_ANSWER {',
'    text-align: center;',
'    font-size: 16px;',
'    padding: 12px 40px 12px 20px;',
'    border: 2px solid #ced4da;',
'    border-radius: 8px;',
'    width: 180px;',
'    transition: all 0.3s ease;',
'    font-weight: bold;',
'    background-color: white;',
'}',
'',
'#P8890_CAPTCHA_ANSWER:focus {',
'    outline: none;',
'    border-color: #007bff;',
'    box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);',
'}',
'',
'.captcha-refresh-btn {',
'    background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);',
'    color: white;',
'    border: none;',
'    padding: 12px 20px;',
'    border-radius: 8px;',
'    font-size: 14px;',
'    font-weight: 600;',
'    cursor: pointer;',
'    transition: all 0.3s ease;',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    box-shadow: 0 3px 8px rgba(0,123,255,0.3);',
'}',
'',
'.captcha-refresh-btn:hover {',
'    background: linear-gradient(135deg, #0056b3 0%, #004085 100%);',
'    transform: translateY(-2px);',
'    box-shadow: 0 5px 15px rgba(0,123,255,0.4);',
'}',
'',
'.captcha-refresh-btn:active {',
'    transform: translateY(0);',
'    box-shadow: 0 2px 5px rgba(0,123,255,0.3);',
'}',
'',
'.captcha-refresh-btn i {',
'    transition: transform 0.5s ease;',
'}',
'',
'.captcha-refresh-btn:hover i {',
'    transform: rotate(180deg);',
'}',
'',
'@keyframes spin {',
'    0% { transform: rotate(0deg); }',
'    100% { transform: rotate(360deg); }',
'}',
'',
'.fa-spin-custom {',
'    animation: spin 1s linear infinite;',
'}',
'',
'/* -------------------------------------------------------------------------------------------- */',
'',
'#P8890_EMAIL,',
'#P8890_USER_NAME {',
'    text-transform: uppercase !important;',
'}',
'',
'#P8890_EMAIL::placeholder,',
'#P8890_USER_NAME::placeholder {',
'    text-transform: none !important;',
'    font-style: italic;',
'}',
'',
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
'        right: 12px;',
'        top: 50%;',
'        font-weight: bold;',
'        color: #00dbde;',
'        z-index: 2;',
'        padding-top: 17px;',
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
'body, .t-PageBody, .t-PageBody--login {',
'    background: linear-gradient(135deg, #1a272e 0%, #111 100%) !important;',
'    background-attachment: fixed !important;',
'    background-size: cover !important;',
'    background-repeat: no-repeat !important;',
'    min-height: 100vh !important;',
'    height: auto !important;',
'    margin: 0 !important;',
'    padding: 0 !important;',
'    font-family: Arial, sans-serif !important;',
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
'#R49059355448817798 {',
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
'#R49059355448817798_heading {',
'    font-size: 2rem;',
'    margin: 15px 0 0;',
'    background: linear-gradient(45deg, #00dbde, #fc00ff, #00dbde, #fc00ff);',
'    -webkit-background-clip: text;',
'    background-clip: text;',
'    -webkit-text-fill-color: transparent;',
'    color: transparent;',
'    font-weight: 700;',
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
'/* #R22671543207717323{',
'    border-radius: 15px;',
'    background: rgba(255, 255, 255, 0.1);',
'    backdrop-filter: blur(10px);',
'    border: 1px solid rgba(255, 255, 255, 0.2);',
'    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);',
'    overflow: hidden;',
'} */',
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
'    color: #00dbde;',
'    transform: translateY(-2px);',
'}',
'',
'.lto43089750525996705_0 {',
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
''))
,p_step_template=>wwv_flow_imp.id(762599452515988057)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49059355448817798)
,p_plug_name=>'Forgot Password'
,p_icon_css_classes=>'fa-lock-password'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762677810149988135)
,p_plug_display_sequence=>10
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49060034351817805)
,p_plug_name=>'reCAPTCHA'
,p_parent_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>100
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col t-Form-fieldContainer--xlarge captcha-container" style="margin-bottom: 10px; padding-bottom: 0; background-color: #23222226; border-color: cornflowerblue;">',
'    <div class="t-Form-inputContainer col col-null">',
'        <div style="text-align: center; margin-bottom: 15px; padding: 0;">',
'            <span style="color: #fff; font-size: 14px; font-weight: bold;" class="required-field">',
'                <i class="fa fa-shield-alt" style="margin-right: 8px; color: #007bff;"></i>',
'                Security Verification',
'            </span>',
'        </div>',
'        ',
'        <div id="math_question" style="color: #fff; font-size: 16px; font-weight: bold; margin: 10px 0; padding: 15px; background: rgba(255, 255, 255, 0.1); border-radius: 5px; text-align: center; border: 1px solid rgba(255, 255, 255, 0.2);">',
'            <i class="fa fa-calculator" style="margin-right: 8px; color: #6c757d;"></i>',
'        </div>',
'        ',
'        <div style="text-align: center; margin: 15px 0;">',
'            <div style="position: relative; display: inline-block;">',
'                <input type="number" ',
'                       id="P8890_CAPTCHA_ANSWER" ',
'                       name="P8890_CAPTCHA_ANSWER" ',
'                       class="apex-item-text" ',
'                       placeholder="Enter the answer" ',
'                       autocomplete="off"',
'                       required',
'                       style="text-align: center; font-size: 16px; padding: 12px 12px 12px 20px; width: 180px;" />',
'                <i class="fa fa-keyboard" style="position: absolute; right: 15px; top: 50%; transform: translateY(-50%); color: #6c757d;"></i>',
'            </div>',
'        </div>',
'        ',
'        <div style="text-align: center; margin: 15px 0;">',
'            <button type="button" onclick="refreshCaptcha()" class="captcha-refresh-btn">',
'                <i class="fa fa-refresh"></i>',
'                New Question',
'            </button>',
'        </div>',
'        ',
'        <div id="captcha_success" class="captcha-success" style="display: none;">',
'            <i class="fa fa-check-circle"></i>',
'            CAPTCHA verified! You can now submit the form.',
'        </div>',
'        ',
'        <div id="captcha_error" class="a-Form-error" style="display: none; margin-top: 5px;">',
'            <i class="fa fa-exclamation-circle"></i>',
'            Please solve the math problem correctly',
'        </div>',
'        ',
'        <input type="hidden" id="P8890_CAPTCHA_QUESTION" name="P8890_CAPTCHA_QUESTION" />',
'        <input type="hidden" id="P8890_CAPTCHA_RESULT" name="P8890_CAPTCHA_RESULT" />',
'    </div>',
'</div>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26388764393100458)
,p_button_sequence=>30
,p_button_name=>'LOGIN'
,p_button_static_id=>'login_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(762756295583988238)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go back to Login Page'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:RP,9999,8890::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26389373494100424)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'submit_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(762756295583988238)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26398259103100313)
,p_branch_name=>'Go Back to Login Page 9999'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24802725232981729)
,p_name=>'P8890_RESET_LINK_SENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49060721040817740)
,p_name=>'P8890_USER_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_prompt=>'Username'
,p_placeholder=>'-- Submit your Username --'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(762753424971988214)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49060735972817741)
,p_name=>'P8890_EMAIL'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_prompt=>'Email'
,p_placeholder=>'-- Submit your E-mail --'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(762753424971988214)
,p_item_icon_css_classes=>'fa-envelope-o'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061376898817747)
,p_name=>'P8890_DATE_SUBMIT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061427076817748)
,p_name=>'P8890_LINK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061563099817749)
,p_name=>'P8890_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061694195817750)
,p_name=>'P8890_ROLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061794563817751)
,p_name=>'P8890_CAPTCHA_ANSWER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061920487817752)
,p_name=>'P8890_CAPTCHA_QUESTION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49061959347817753)
,p_name=>'P8890_CAPTCHA_RESULT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(49062043603817754)
,p_name=>'P8890_URL_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
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
 p_id=>wwv_flow_imp.id(49062247994817756)
,p_name=>'P8890_CAPTCHA_RESULT_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(49059355448817798)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(26393706142100330)
,p_validation_name=>'Check Email Registered'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_count NUMBER := 0;',
'    l_has_user_any_roles BOOLEAN := FALSE;',
'    l_result BOOLEAN := FALSE;',
'    l_username VARCHAR2(100);',
'BEGIN',
'    BEGIN',
'        SELECT COUNT(*), MAX(username)',
'        INTO l_count, l_username',
'        FROM APX_BF_USER ',
'        WHERE LOWER(EMAIL) = LOWER(:P8890_EMAIL)',
'        AND UPPER(USERNAME) = UPPER(:P8890_USER_NAME)',
'        AND status = ''Active'';',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            l_count := 0;',
'    END;',
'    ',
'    IF l_username IS NOT NULL THEN',
'        l_has_user_any_roles := APEX_ACL.HAS_USER_ANY_ROLES(',
'            p_application_id => :APP_ID,',
'            p_user_name => UPPER(l_username)',
'        );',
'    END IF;',
'    ',
'    :P8890_USER_NAME := l_username;',
'    ',
'    IF l_count >= 1 AND l_has_user_any_roles = FALSE THEN',
'        l_result := TRUE;',
'    ELSE',
'        l_result := FALSE;',
'    END IF;',
'    ',
'    RETURN l_result;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Email invalid / Email is not registered.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(24802407268981726)
,p_validation_name=>'Waiting 5 Minutes after last Submit'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_last_created_date TIMESTAMP;',
'BEGIN',
'    SELECT MAX(created_date)',
'    INTO v_last_created_date',
'    FROM APX_BF_PASSWORD_RESET where EMAIL = :P8890_EMAIL AND STATUS = ''REQUESTED'';',
'',
'    IF v_last_created_date IS NOT NULL AND ',
'       (SYSTIMESTAMP - v_last_created_date) < INTERVAL ''5'' MINUTE THEN',
'        RETURN FALSE;',
'    END IF;',
'',
'    RETURN TRUE;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Silahkan menunggu 5 menit dari submit terakhir. '
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26397294141100321)
,p_name=>'Clear Cache (Page Load)'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26397726129100318)
,p_event_id=>wwv_flow_imp.id(26397294141100321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function resetSessionPage() {',
'    sessionStorage.clear();',
'',
'    localStorage.clear();',
'',
'    window.location.reload(true); ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(26629437102618106)
,p_name=>'Disable Inspect'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(26629566839618107)
,p_event_id=>wwv_flow_imp.id(26629437102618106)
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
 p_id=>wwv_flow_imp.id(26394381517100327)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validate CAPTCHA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_user_answer     NUMBER;',
'    l_correct_answer  NUMBER;',
'    l_question        VARCHAR2(100);',
'BEGIN',
'    l_user_answer := TO_NUMBER(:P8890_CAPTCHA_ANSWER);',
'    l_correct_answer := TO_NUMBER(:P8890_CAPTCHA_RESULT);',
'    l_question := :P8890_CAPTCHA_QUESTION;',
'    ',
'    APEX_DEBUG.INFO(''CAPTCHA Validation - Question: '' || l_question || '', User Answer: '' || l_user_answer || '', Correct: '' || l_correct_answer);',
'    ',
'    IF l_user_answer != l_correct_answer THEN',
'        apex_error.add_error(',
'            p_message => ''Security verification failed. Please solve the math problem correctly.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'        :P8890_CAPTCHA_QUESTION := NULL;',
'        :P8890_CAPTCHA_RESULT := NULL;',
'    END IF;',
'    ',
'EXCEPTION',
'    WHEN VALUE_ERROR THEN',
'        apex_error.add_error(',
'            p_message => ''Invalid security verification. Please try again.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'    WHEN OTHERS THEN',
'        apex_error.add_error(',
'            p_message => ''Security verification error. Please try again.'',',
'            p_display_location => apex_error.c_inline_in_notification',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26394381517100327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26394726060100327)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_EXECUTION_CHAIN'
,p_process_name=>'Execution Chain'
,p_attribute_01=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_internal_uid=>26394726060100327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24802562045981727)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Forgot Password (edited)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_username       VARCHAR2(255);',
'    l_email          VARCHAR2(255);',
'    l_user_role      VARCHAR2(100);',
'    v_token          VARCHAR2(2000) := SYS_GUID();',
'    l_reset_link     VARCHAR2(2000);',
'    l_count          NUMBER := 0;',
'    v_placeholders   VARCHAR2(4000);',
'    l_token_expiry   TIMESTAMP WITH TIME ZONE;',
'    ',
'BEGIN',
'    l_username := :P8890_USER_NAME;',
'    l_email := :P8890_EMAIL;',
'',
'    BEGIN',
'        SELECT user_role ',
'        INTO l_user_role',
'        FROM apx_bf_user',
'        WHERE UPPER(username) = UPPER(l_username)',
'        AND LOWER(email) = LOWER(l_email)',
'        AND status = ''Active''',
'        AND ROWNUM = 1;',
'        ',
'        :P8890_ROLE := l_user_role;',
'        ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Kombinasi User dan Email tidak terdaftar dalam sistem atau status tidak aktif. Silakan gunakan fitur Get Password jika akun belum tersedia.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            RETURN;',
'    END;',
'',
'    -- l_token_expiry := FROM_TZ(CAST(SYSDATE AS TIMESTAMP), ''UTC'') AT TIME ZONE ''Asia/Jakarta'' + INTERVAL ''24'' HOUR;',
'    l_token_expiry := CURRENT_TIMESTAMP AT TIME ZONE ''Asia/Jakarta'' + INTERVAL ''24'' HOUR;',
'',
'    INSERT INTO APX_BF_PASSWORD_RESET (',
'        user_name, ',
'        email, ',
'        reset_token, ',
'        token_expiry,',
'        status',
'    ) VALUES (',
'        :P8890_USER_NAME,',
'        l_email,',
'        v_token,',
'        l_token_expiry,',
'        ''REQUESTED''',
'    );',
'',
'    l_reset_link := :P8890_URL_APP || apex_util.prepare_url(p_url => ''f?p=''',
'				|| :APP_ID',
'				|| '':8891:''',
'				|| ''0::NO::P8891_RESET_TOKEN,P8891_USER_NAME:''',
'				|| v_token',
'				|| '','' || :P8890_USER_NAME',
'				|| '''');',
'',
'    v_placeholders := ''{"USER_NAME": "'' || UPPER(:P8890_EMAIL) || ''", ''',
'                    || ''"DATE_SUBMIT": "'' || TO_CHAR(SYSTIMESTAMP AT TIME ZONE ''Asia/Jakarta'', ''DD-MON-YYYY HH24:MI'') || ''", ''',
'                    || ''"RESET_LINK": "'' || l_reset_link || ''"}'';',
'',
'    APEX_MAIL.SEND(',
'        p_to                 => l_email,',
'        -- p_to                 => ''manuelnicholasn@gmail.com'',',
'        p_bcc                => ''manuel.nicholas@limamail.net'',',
'        p_from               => ''noreply.briefcase@nusamail.net'',',
'        p_template_static_id => ''USER_RESET_PASSWORD'',',
'        p_placeholders       => v_placeholders',
'    );',
'',
'    APEX_MAIL.PUSH_QUEUE;',
'',
'    :P8890_RESET_LINK_SENT := ''Y'';',
'',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P8890_RESET_LINK_SENT := ''N'';',
'        IF SQLCODE = -20001 OR SQLCODE = -20004 THEN',
'            RAISE;',
'        ELSE',
'            RAISE_APPLICATION_ERROR(-20002, ''Terjadi kesalahan sistem: '' || SQLERRM);',
'        END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(26389373494100424)
,p_process_when=>'P8890_EMAIL'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'The password reset was successful requested and the email was sent.'
,p_internal_uid=>24802562045981727
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26393933876100329)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set date submit for email'
,p_process_sql_clob=>'SELECT TO_CHAR(SYSDATE, ''DD/MM/YYYY'') INTO :P8890_DATE_SUBMIT FROM DUAL;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>26393933876100329
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26395146085100327)
,p_process_sequence=>10
,p_parent_process_id=>wwv_flow_imp.id(26394726060100327)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Password + Send Email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_username VARCHAR2(100);',
'    l_email VARCHAR2(200);',
'    l_user_role VARCHAR2(100);',
'    l_random_password VARCHAR2(100);',
'    l_login_link VARCHAR2(500);',
'    l_from_email VARCHAR2(200);',
'    l_app_name VARCHAR2(100);',
'BEGIN',
'    l_username := :P8890_USER_NAME;',
'    l_email := :P8890_EMAIL;',
'    l_login_link := :P0_LOGIN_LINK;',
'    l_from_email := :P0_EMAIL_FROM;',
'    ',
'    SELECT application_name ',
'    INTO l_app_name',
'    FROM apex_applications ',
'    WHERE application_id = :APP_ID;',
'',
'    BEGIN',
'        SELECT user_role ',
'        INTO l_user_role',
'        FROM apx_bf_user',
'        WHERE UPPER(username) = UPPER(l_username)',
'        AND LOWER(email) = LOWER(l_email)',
'        AND status = ''Active''',
'        AND ROWNUM = 1;',
'        ',
'        :P8890_ROLE := l_user_role;',
'        ',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Kombinasi User dan Email tidak terdaftar dalam sistem atau status tidak aktif.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            RETURN;',
'    END;',
'    ',
'    DECLARE',
'        l_user_exists NUMBER;',
'    BEGIN',
'        SELECT COUNT(*)',
'        INTO l_user_exists',
'        FROM apex_workspace_apex_users',
'        WHERE UPPER(user_name) = UPPER(l_username);',
'        ',
'        IF l_user_exists > 0 THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''User sudah memiliki akun APEX. Silakan gunakan fitur lupa password jika perlu reset.'',',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'            RETURN;',
'        END IF;',
'    END;',
'    ',
'    l_random_password := generate_random_password;',
'    :P8890_PASSWORD := l_random_password;',
'    ',
'    APX_BF_USER_MGMT_PKG.create_user_job(',
'        p_username => l_username,',
'        p_email_user => l_email,',
'        p_password_first_time => l_random_password',
'    );',
'    ',
'    BEGIN',
'        APEX_MAIL.SEND(',
'            p_to => l_email,',
'            -- p_to => ''manuel.nicholas@kcsi-id.com'',',
'            p_from => l_from_email,',
'            p_bcc => ''manuel.nicholas@limamail.net'',',
'            p_template_static_id => ''USER_MANAGEMENT_GET_PASSWORD'',',
'            p_placeholders => ''{''|| ',
'                ''"APP_NAME":"'' || l_app_name || ''",''||',
'                ''"USERNAME":"'' || l_username || ''",''||',
'                ''"EMAIL":"'' || l_email || ''",''||',
'                ''"ROLE":"'' || l_user_role || ''",''||',
'                ''"STATUS":"Active",''||',
'                ''"PASSWORD":"'' || l_random_password || ''",''||',
'                ''"LOGIN_LINK":"'' || l_login_link || ''"''||',
'            ''}''',
'        );',
'        ',
'        APEX_MAIL.PUSH_QUEUE;',
'        ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            NULL;',
'    END;',
'    ',
'    apex_application.g_print_success_message := ''Akun berhasil dibuatkan password! Informasi login telah dikirim ke email: '' || l_email;',
'',
'    -- apex_util.submit_feedback(',
'    --     p_comment         => ''Akun berhasil dibuatkan password! Informasi login telah dikirim ke email: '' || l_email,',
'    --     p_type            => ''SUCCESS'',',
'    --     p_page_id         => :APP_PAGE_ID',
'    -- );',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Error: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(26389373494100424)
,p_internal_uid=>26395146085100327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26395561348100326)
,p_process_sequence=>20
,p_parent_process_id=>wwv_flow_imp.id(26394726060100327)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User Role'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_username VARCHAR2(100);',
'    l_user_role VARCHAR2(100);',
'    l_role_static_id VARCHAR2(100);',
'    l_user_exists NUMBER := 0;',
'    l_max_wait NUMBER := 10;',
'    l_wait_counter NUMBER := 0;',
'BEGIN',
'    l_username := :P8890_USER_NAME;',
'    l_user_role := :P8890_ROLE;',
'    ',
'    IF l_username IS NULL OR l_user_role IS NULL THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Username atau role tidak tersedia untuk assign role.'',',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        RETURN;',
'    END IF;',
'    ',
'    l_role_static_id := CASE UPPER(l_user_role)',
'        WHEN ''DEPARTMENT'' THEN ''DEPARTMENT''',
'        WHEN ''ADMINISTRATOR'' THEN ''ADMINISTRATOR'' ',
'        WHEN ''FPNA'' THEN ''FPNA''',
'        WHEN ''BOD'' THEN ''BOD''',
'        WHEN ''BUDGET FORECAST'' THEN ''BUDGET_FORECAST''',
'        WHEN ''CONTRIBUTOR'' THEN ''CONTRIBUTOR''',
'        WHEN ''READER'' THEN ''READER''',
'        ELSE UPPER(l_user_role)',
'    END;',
'    ',
'    FOR i IN 1..l_max_wait LOOP',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_user_exists',
'            FROM apex_workspace_apex_users',
'            WHERE user_name = UPPER(l_username);',
'            ',
'            EXIT WHEN l_user_exists > 0;',
'            ',
'            l_wait_counter := i;',
'            DBMS_SESSION.SLEEP(1);',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'    END LOOP;',
'    ',
'    IF l_user_exists = 0 THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''User '' || l_username || '' belum tersedia di sistem APEX setelah '' || l_wait_counter || '' detik. Role akan diassign manual nanti.'',',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        RETURN;',
'    END IF;',
'    ',
'    BEGIN',
'        APEX_ACL.ADD_USER_ROLE (',
'            p_application_id => :APP_ID,',
'            p_user_name      => UPPER(l_username),',
'            p_role_static_id => l_role_static_id',
'        );',
'        ',
'        apex_application.g_print_success_message := ''Role '' || l_user_role || '' berhasil diassign sebagai '' || l_role_static_id;',
'        ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Gagal assign role '' || l_role_static_id || '' ke user '' || l_username || '': '' || SQLERRM,',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'    END;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Terjadi kesalahan saat assign role: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(26389373494100424)
,p_required_patch=>wwv_flow_imp.id(762579247524987774)
,p_internal_uid=>26395561348100326
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(26395907951100325)
,p_process_sequence=>30
,p_parent_process_id=>wwv_flow_imp.id(26394726060100327)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User Role (2)'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_email VARCHAR2(100);',
'    l_username VARCHAR2(100);',
'    l_user_role VARCHAR2(100);',
'    l_role_static_id VARCHAR2(100);',
'    l_user_exists NUMBER := 0;',
'    l_max_wait NUMBER := 10;',
'    l_wait_counter NUMBER := 0;',
'',
'BEGIN',
'    l_username := :P8890_USER_NAME;',
'    l_user_role := :P8890_ROLE;',
'    l_email := :P8890_EMAIL;',
'    ',
'    IF l_username IS NULL OR l_user_role IS NULL THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Username atau role tidak tersedia untuk assign role.'',',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        RETURN;',
'    END IF;',
'    ',
'    l_role_static_id := CASE UPPER(l_user_role)',
'        WHEN ''DEPARTMENT'' THEN ''DEPARTMENT''',
'        WHEN ''ADMINISTRATOR'' THEN ''ADMINISTRATOR'' ',
'        WHEN ''FPNA'' THEN ''FPNA''',
'        WHEN ''BOD'' THEN ''BOD''',
'        WHEN ''BUDGET FORECAST'' THEN ''BUDGET_FORECAST''',
'        WHEN ''CONTRIBUTOR'' THEN ''CONTRIBUTOR''',
'        WHEN ''READER'' THEN ''READER''',
'        ELSE UPPER(l_user_role)',
'    END;',
'    ',
'    FOR i IN 1..l_max_wait LOOP',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO l_user_exists',
'            FROM apex_workspace_apex_users',
'            WHERE user_name = UPPER(l_username);',
'            ',
'            EXIT WHEN l_user_exists > 0;',
'            ',
'            l_wait_counter := i;',
'            DBMS_SESSION.SLEEP(1);',
'            ',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'    END LOOP;',
'    ',
'    IF l_user_exists = 0 THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''User '' || l_username || '' belum tersedia di sistem APEX setelah '' || l_wait_counter || '' detik. Role akan diassign manual nanti.'',',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'        RETURN;',
'    END IF;',
'    ',
'    BEGIN',
'        APEX_ACL.ADD_USER_ROLE (',
'            p_application_id => :APP_ID,',
'            p_user_name      => UPPER(l_username),',
'            p_role_static_id => l_role_static_id',
'        );',
'        ',
'        -- apex_application.g_print_success_message := ''Akun berhasil dibuatkan password!'' || chr(10) || ',
'        --                                            ''User berhasil diassign sebagai '' || l_role_static_id || ',
'        --                                            ''. Informasi login telah dikirim ke email: '' || l_email;',
'        ',
'        apex_application.g_print_success_message := ''Akun berhasil dibuatkan password! <br />'' || ',
'                                                   '' Informasi login telah dikirim ke email: <br />'' || l_email;',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_ERROR.ADD_ERROR(',
'                p_message => ''Gagal assign role '' || l_role_static_id || '' ke user '' || l_username || '': '' || SQLERRM,',
'                p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'            );',
'    END;',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Terjadi kesalahan saat assign role: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.C_INLINE_IN_NOTIFICATION',
'        );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(26389373494100424)
,p_internal_uid=>26395907951100325
);
wwv_flow_imp.component_end;
end;
/
