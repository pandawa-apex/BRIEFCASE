prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Detail Budget Monitoring'
,p_alias=>'DETAIL-BUDGET-MONITORING'
,p_step_title=>'Detail Budget Monitoring'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$(''#P7_DEPARTMENT_VALUE'').attr(''title'', $(''#P7_DEPARTMENT_VALUE'').text());'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-rds-selected{',
'    background-color: darkgray;',
'    padding: 0px 10px 0px 10px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'.a-IRR-header, .u-tC{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'.t-Report-report {',
'    width: 100%;',
'    border-collapse: collapse;',
'    overflow: hidden;',
'}',
'',
'.t-Report-report td,',
'.t-Report-report th {',
'    border: 1px solid #ddd;',
'    padding: 8px;',
'    text-align: center;',
'}',
'',
'.t-Report-report th {',
'    background-color: #f2f2f2;',
'    font-weight: bold;',
'    border-bottom: 2px solid #bbb;',
'}',
'',
'.t-Report-report th:last-child,',
'.t-Report-report td:last-child {',
'    position: sticky;',
'    right: 0;',
'    background: #fff;',
'    z-index: 2;',
'    box-shadow: -1px 0 0 #ddd; ',
'}',
'.t-Report-report th:last-child {',
'    background: #f2f2f2;',
'}',
'',
'.t-Report-report tr:nth-child(even) {',
'    background-color: #f9f9f9;',
'}',
'',
'.t-Report-report tr:hover {',
'    background-color: #f1f1f1;',
'}',
'',
'.t-Report-report thead tr {',
'    border-bottom: 2px solid #bbb;',
'}',
'',
'.t-Report-report tbody tr {',
'    border-bottom: 1px solid #ddd;',
'}',
'',
'.t-Report-report thead th {',
'    border-bottom: 2px solid #777 !important;',
'    position: relative;',
'}',
'',
'.t-Report-report tbody tr:first-child td {',
'    border-top: 1px solid #ddd;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#rows_counter {',
'    font-weight: bold;',
'    font-size: 16px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'td[role="gridcell"].u-tS {',
'    position: relative;',
'    max-width: 329px;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'td[role="gridcell"].u-tS:hover {',
'    overflow: visible;',
'    white-space: normal;',
'    word-break: break-word;',
'    background-color: white;',
'    z-index: 1000;',
'    position: relative;',
'    box-shadow: 0 0 10px rgba(0,0,0,0.2);',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#line_number_col_HDR, #line_number_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#cost_center_col_HDR, #cost_center_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#budget_category_col_HDR, #budget_category_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#activity_col_HDR, #activity_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#coa_col_HDR, #coa_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#location_col_HDR, #location_sum_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#original_amount_col_HDR, #sum_original_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#commitment_col_HDR, #sum_commitment_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#final_amount_col_HDR, #sum_final_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#actual_amount_col_HDR, #sum_actual_amount_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#fund_available_col_HDR, #sum_fund_available_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'#period_col_HDR{',
'    font-size: 14px;',
'    font-weight: bold;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#budget_header{',
'    background-color: #94949466;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#sum_original_amount_region{',
'    background-color: #94949466;',
'    width: 100%; ',
'    height: auto;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_SUM_ORIGINAL_AMOUNT_VALUE_DISPLAY {',
'    text-align: right;',
'    display: inline-block;',
'    width: 100%;',
'    padding-right: 5px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'#budget_lines{',
'    background-color: #94949466;',
'}',
'',
'/* #budget_lines_ig_ig{',
'    background-color: #94949466;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_SUM_ORIGINAL_AMOUNT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #767474;',
'}',
'',
'#P7_SUM_ORIGINAL_AMOUNT_DISPLAY{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_SUM_ORIGINAL_AMOUNT_VALUE_DISPLAY{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    padding-top: 15px;',
'    padding-bottom: 15px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#delete_row {',
'    color: #ddd;',
'    border-color: #ddd;',
'}',
'',
'#delete_row .t-Icon{',
'    color: #ddd;',
'}',
'',
'#delete_row:hover {',
'    background-color: #312d2a;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#delete_row_1 {',
'    color: #ddd;',
'    border-color: #ddd;',
'}',
'',
'#delete_row_1 .t-Icon{',
'    color: #ddd;',
'}',
'',
'#delete_row_1:hover {',
'    background-color: #312d2a;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#refresh_row {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    color: #ddd;',
'    border-color: #ddd;',
'}',
'',
'#refresh_row .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'    color: #ddd ;',
'}',
'',
'#refresh_row:hover .t-Icon {',
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
'/* ----------------------------------------------------------------------- */',
'',
'#refresh_row_3_pt {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    color: #ddd;',
'    border-color: #ddd;',
'}',
'',
'#refresh_row_3_pt .t-Icon {',
'    animation: none;',
'    transition: transform 0.3s ease;',
'    color: #ddd ;',
'}',
'',
'#refresh_row_3_pt:hover .t-Icon {',
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
'/* ----------------------------------------------------------------------- */',
'',
'#P7_TOTAL_ROWS_T_1{',
'    font-weight: bold;',
'    border-style:double;',
'    position: relative;',
'    display: flex;',
'    padding: 0px;',
'    /* padding-top: 17px;',
'    padding-bottom: 17px; */',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'#P7_TOTAL_ROWS_T_1{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_TOTAL_ROWS_T{',
'    font-weight: bold;',
'    border-style:double;',
'    position: relative;',
'    display: flex;',
'    padding: 0px;',
'    /* padding-top: 17px;',
'    padding-bottom: 17px; */',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'#P7_TOTAL_ROWS_T{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'/* ------------------ */',
'',
'#row_counts {',
'    font-weight: bold;',
'    font-size: 16px;',
'}',
'',
'#row_counts_new {',
'    font-weight: bold;',
'    font-size: 16px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'/* -Menu COLUMNS- */',
'/* #budget_lines_ig_ig_toolbar_0{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_ig_toolbar_5{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_ig_toolbar_5_6{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_ig_toolbar_5_6i{',
'    display: none !important;',
'} */',
'',
'.apex_disabled {',
'    pointer-events: none;',
'    opacity: 0.5;',
'}',
'',
'/* -Menu COLUMNS- */',
'/* #budget_lines_ig_non_rokok_ig_toolbar_0{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_non_rokok_ig_toolbar_5{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_non_rokok_ig_toolbar_5_6{',
'    display: none !important;',
'}',
'',
'#budget_lines_ig_non_rokok_ig_toolbar_5_6i{',
'    display: none !important;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#record_history {',
'    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);',
'    transition: box-shadow 0.3s ease;',
'}',
'',
'#record_history:hover {',
'    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#select-all-checkbox {',
'    cursor: pointer;',
'    width: 15px;',
'    height: 15px;',
'    border: 1px solid black;',
'}',
'',
'.select-row-checkbox {',
'    display: inline-block;',
'    width: 10px;',
'    height: 10px;',
'    border: 1px solid black;',
'    cursor: pointer;',
'    text-align: center;',
'    vertical-align: middle;',
'    font-size: 14px;',
'    line-height: 14px;',
'    font-family: Arial, sans-serif;',
'}',
'',
'.select-row-checkbox.checked::after {',
'    content: "\2713";',
'    color: #000000;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'/* Button */',
'#back_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-color: #000000;',
'    color: #000000;',
'    background-color: transparent;',
'}',
'',
'#back_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#back_button:hover {',
'    background-color: #bfbfbf;',
'}',
'',
'#back_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'',
'#back_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#back_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#draft_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'}',
'',
'#draft_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#draft_button:hover {',
'    background-color: #716352;',
'}',
'',
'#draft_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'',
'#draft_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#draft_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#review_button:hover {',
'    background-color: green;',
'}',
'',
'#review_button:hover .fa-check-circle-o {',
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
'/* ----------------------------------------------------------------------- */',
'',
'#transaction_source{',
'    text-align: center;',
'}',
'',
'#transaction_type{',
'    text-align: center;',
'}',
'',
'#trading_partner{',
'    text-align: center;',
'}',
'',
'#P7_POSTED_TO_PERIOD_NAME_VALUE_DISPLAY_DISPLAY{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'.popup-lov-column {',
'    width: 100%;',
'    padding-right: 35px; ',
'    border: 1px solid #ccc; ',
'    border-radius: 4px; ',
'    appearance: none;',
'    -moz-appearance: none;',
'    -webkit-appearance: none;',
'    background-color: #fff;',
'}',
'',
'.popup-lov-column::after {',
'     content: ''''; ',
'    position: absolute;',
'    right: 0; ',
'    top: 50%;',
'    transform: translateY(-45%);',
'    width: 25px;',
'    height: calc(100% - 2px); ',
'    border-left: 1px solid #ccc; ',
'    background-color: #f0f0f0; ',
'    pointer-events: none;',
'    background-image: url("data:image/svg+xml;utf8,<svg xmlns=''http://www.w3.org/2000/svg'' width=''12'' height=''12'' viewBox=''0 0 10 10''><polygon points=''0,0 10,0 5,5'' style=''fill:%23666;'' /></svg>");',
'    background-repeat: no-repeat;',
'    background-position: center;',
'    background-size: 10px;',
'}',
'',
'#budget_lines_ig_ig_toolbar_m1{',
'    display: none;',
'}',
'',
'#budget_lines_ig_non_rokok_ig_toolbar_m1{',
'    display: none;',
'}',
'',
'.t-Report-report {',
'    width: 100%;',
'    border-collapse: collapse;',
'    overflow: hidden;',
'}',
'',
'.t-Report-report th, ',
'.t-Report-report td {',
'    border: 1px solid #ddd;',
'    padding: 8px;',
'    text-align: center;',
'}',
'',
'.t-Report-report th {',
'    background-color: #f2f2f2;',
'    font-weight: bold;',
'}',
'',
'.t-Report-report th:last-child,',
'.t-Report-report td:last-child {',
'    position: sticky;',
'    right: 0;',
'    background: #fff;',
'    z-index: 2;',
'    box-shadow: -1px 0 0 #ddd; ',
'}',
'',
'#select_all {',
'    position: sticky;',
'    top: 0;',
'    background: #fff;',
'    z-index: 3;',
'}',
'',
'.t-Report-report tr:nth-child(even) {',
'    background-color: #f9f9f9;',
'}',
'',
'.t-Report-report tr:hover {',
'    background-color: #f1f1f1;',
'}',
'',
'#R5333890877820423_ig_toolbar_m1 {',
'    display: none;',
'}',
'',
'#R5108554853434237_ig_toolbar_m1 {',
'    display: none;',
'}',
'',
'#budget_lines_ig_ig_toolbar_actions_button{',
'    display: none;',
'}',
'',
'#budget_lines_ig_non_rokok_ig_toolbar_actions_button{',
'    display: none;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_BATCH_NUMBER_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    /* color: #767474; */',
'    color: #121212;',
'    /* border-style: inherit; */',
'}',
'',
'#P7_BATCH_NUMBER{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'',
'#P7_BATCH_NUMBER_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_LATEST_VERSION_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_LATEST_VERSION{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_LATEST_VERSION_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_COMPANY_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_COMPANY{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_COMPANY_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_YEAR_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_YEAR{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_YEAR_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_DEPARTMENT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_DEPARTMENT{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'/* #P7_DEPARTMENT_VALUE {',
'    font-weight: bold;',
'    border-style: double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    min-width: 0;',
'} */',
'',
'#P7_DEPARTMENT_VALUE {',
'    font-weight: bold;',
'    border-style: double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    min-width: 0;',
'    display: block;',
'    width: 100%;',
'}',
'',
'#P7_DEPARTMENT_VALUE:hover {',
'    overflow: visible;',
'    white-space: normal;',
'    z-index: 1000;',
'    background-color: #dbd5d5;',
'}',
'',
'#P7_DEPARTMENT_VALUE.show-full-text {',
'    overflow: visible;',
'    white-space: normal;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_BUDGET_TYPE_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_BUDGET_TYPE{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_BUDGET_TYPE_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_STATUS_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_STATUS{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_STATUS_VALUE{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P7_LAST_UPDATED_BY_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #121212;',
'    border-style: inherit;',
'}',
'',
'#P7_LAST_UPDATED_BY{',
'    border-style:initial;',
'    border-color: #adaaaa;',
'}',
'',
'#P7_LAST_UPDATED_BY_VALUE{',
'    font-weight: bold;',
'    border-style:double;',
'    background-color: #dbd5d5;',
'    position: relative;',
'    display: flex;',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'    font-size: 16px;',
'    color: #070606;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#TOTAL_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#TOTAL_NON_ROKOK_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#COA_COL{',
'    pointer-events: none !important;',
'    background-color: #f0f0f0 !important;',
'    color: #888888;',
'    display: none;',
'    opacity: 0.8 !important; ',
'}',
'',
'/* #COA_COL {',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    user-select: none;',
'    -webkit-user-select: none;',
'    -moz-user-select: none;',
'    -ms-user-select: none;',
'}',
'',
'#COA_COL .u-selector {',
'    display: none !important;',
'}',
'',
'#COA_COL:focus, ',
'#COA_COL:active {',
'    outline: none;',
'    background-color: #f0f0f0 !important;',
'    box-shadow: none !important;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#COA_NON_ROKOK_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'/* #COA_NON_ROKOK_COL {',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    user-select: none;',
'    -webkit-user-select: none;',
'    -moz-user-select: none;',
'    -ms-user-select: none;',
'}',
'',
'#COA_NON_ROKOK_COL .u-selector {',
'    display: none !important;',
'}',
'',
'#COA_NON_ROKOK_COL:focus, ',
'#COA_NON_ROKOK_COL:active {',
'    outline: none;',
'    background-color: #f0f0f0 !important;',
'    box-shadow: none !important;',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'/* #COST_CENTER_COL{',
'    pointer-events: none !important;',
'    background-color: #f0f0f0 !important;',
'    color: #888888;',
'    display: none;',
'    opacity: 0.8 !important; ',
'} */',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#src_account_desc_col{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#COA_DESC_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#ELIM_RULE_ID_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#ELIM_RULE_ID_2_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#SRC_CONCATENATED_SEGMENT_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#T1_ACCOUNT_DESC{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#T2_ACCOUNT_DESC{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#LINE_SOURCE{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#TP_LE_CODE_COL{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'#LINE_SOURCE {',
'    white-space: nowrap;',
'    text-overflow: ellipsis;',
'    overflow: hidden; ',
'    max-width: 200px;',
'}',
'',
'#SOURCE_LE_CODE{',
'    pointer-events: none;',
'    background-color: #f0f0f0;',
'    color: #888888;',
'    display: none;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#cancel_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background-color: #ddd;',
'    color: #312d2a;',
'}',
'',
'#cancel_button .t-Icon {',
'    opacity: 0;',
'    transform: translateX(-10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#cancel_button:hover {',
'    background-color: rgb(161, 56, 56);',
'    color: #ddd;',
'}',
'',
'#cancel_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateX(0); ',
'}',
'',
'#cancel_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#cancel_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'button#canceled_button {',
'    pointer-events: none; ',
'    opacity: 0.5; ',
'    background-color: #d3d3d3;',
'    color: #DC3545;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#submit_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background-color: #ddd;',
'    color: #312d2a;',
'}',
'',
'#submit_button .t-Icon {',
'    opacity: 0;',
'    transform: translateX(-10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#submit_button:hover {',
'    background-color: green;',
'    color: #ddd;',
'}',
'',
'#submit_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateX(0); ',
'}',
'',
'#submit_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#submit_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'button#submitted_button {',
'    pointer-events: none; ',
'    opacity: 0.5; ',
'    background-color: #d3d3d3;',
'    color: green;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#allocate_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background-color: #ddd;',
'    color: #312d2a;',
'}',
'',
'#allocate_button .t-Icon {',
'    opacity: 0;',
'    transform: translateX(-10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#allocate_button:hover {',
'    background-color: green;',
'    color: #ddd;',
'}',
'',
'#allocate_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateX(0); ',
'}',
'',
'#allocate_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#allocate_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#addendum_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    background-color: #ddd;',
'    color: #312d2a;',
'}',
'',
'#addendum_button .t-Icon {',
'    opacity: 0;',
'    transform: translateX(-10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#addendum_button:hover {',
'    background-color: green;',
'    color: #ddd;',
'}',
'',
'#addendum_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateX(0); ',
'}',
'',
'#addendum_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#addendum_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#record_history_button {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-color: #ddd;',
'    color: #ddd;',
'}',
'',
'#record_history_button .t-Icon {',
'    opacity: 0;',
'    transform: scale(0);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#record_history_button:hover {',
'    background-color: #59524d;',
'    color: #ddd;',
'}',
'',
'#record_history_button:hover .t-Icon {',
'    opacity: 1;',
'    transform: scale(1);',
'}',
'',
'#record_history_button .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#record_history_button:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'.popup-lov-column {',
'    width: 100%;',
'    padding-right: 35px; ',
'    border: 1px solid #ccc; ',
'    border-radius: 4px; ',
'    appearance: none;',
'    -moz-appearance: none;',
'    -webkit-appearance: none;',
'    background-color: #fff;',
'}',
'',
'.popup-lov-column::after {',
'     content: ''''; ',
'    position: absolute;',
'    right: 0; ',
'    top: 50%;',
'    transform: translateY(-45%);',
'    width: 25px;',
'    height: calc(100% - 2px); ',
'    border-left: 1px solid #ccc; ',
'    background-color: #f0f0f0; ',
'    pointer-events: none;',
'    background-image: url("data:image/svg+xml;utf8,<svg xmlns=''http://www.w3.org/2000/svg'' width=''12'' height=''12'' viewBox=''0 0 10 10''><polygon points=''0,0 10,0 5,5'' style=''fill:%23666;'' /></svg>");',
'    background-repeat: no-repeat;',
'    background-position: center;',
'    background-size: 10px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#button_sync {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    /* background-color: #ddd;',
'    color: #312d2a; */',
'}',
'',
'#button_sync .t-Icon {',
'    opacity: 0;',
'    transform: translateX(-10px);',
'    transition: opacity 0.3s ease, transform 0.3s ease;',
'}',
'',
'#button_sync:hover {',
'    /* background-color: green; */',
'    color: #ddd;',
'}',
'',
'#button_sync:hover .t-Icon {',
'    opacity: 1;',
'    transform: translateX(0); ',
'    animation: spin 1s linear infinite;',
'}',
'',
'#button_sync .t-Button-label {',
'    margin-left: -25px;',
'    transition: margin-left 0.3s ease, opacity 0.3s ease;',
'}',
'',
'#button_sync:hover .t-Button-label {',
'    margin-left: 0px;',
'}',
'',
'@keyframes spin {',
'    0% { transform: translateX(0) rotate(0deg); }',
'    100% { transform: translateX(0) rotate(360deg); }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14740365237342293)
,p_plug_name=>'Row(s) Counter'
,p_region_name=>'rows_counter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_plug_display_column=>11
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_count NUMBER;',
'',
'BEGIN',
'    SELECT COUNT(l.ID)',
'    INTO l_count',
'    FROM XTD_BRF_BUDGET_MKT_MOTR_V v',
'    JOIN APX_BF_BUDGET_MONITOR_HDR h ON (',
'        v.COMPANY = h.COMPANY_NAME',
'        AND v.YEAR = h.YEAR',
'        AND v.BUDGET_TYPE = h.BUDGET_TYPE',
'        AND v.DEPARTMENT = h.DEPT_NAME',
'    )',
'    JOIN APX_BF_BUDGET_MONITOR_LNS l ON (',
'        h.ID = l.HEADER_ID',
'        AND v.COA = l.COA',
'        AND v.ACTIVITY = l.ACTIVITY',
'        AND v.LOCATION = l.LOCATION',
'        AND v.COST_CENTER = l.COST_CENTER',
'        AND v.BUDGET_CATEGORY = l.BUDGET_CATEGORY',
'        AND v.PERIOD = TO_NUMBER(l.PERIOD)',
'        -- AND v.ORIGINAL_AMOUNT = l.ORIGINAL_AMOUNT',
'        -- AND v.FINAL_AMOUNT = l.FINAL_AMOUNT',
'    )',
'    WHERE h.ID = :P7_HEADER_ID',
'    AND l.HEADER_ID = :P7_HEADER_ID;',
'',
'    HTP.PRINT(''Row Counts: '' || l_count);',
'',
'    EXCEPTION',
'        WHEN OTHERS THEN ',
'            NULL;',
'    ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22390095894946693)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--stickToBottom:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>100
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765808413254971972)
,p_plug_name=>'Detail Budget Header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765809747720971986)
,p_plug_name=>'Sum Original Amount Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765809894443971987)
,p_plug_name=>'Sum Original Amount'
,p_parent_plug_id=>wwv_flow_imp.id(765809747720971986)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765810142170971990)
,p_plug_name=>'Detail Budget Lines'
,p_region_name=>'budget_lines'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>130
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14444329935943629)
,p_plug_name=>'Budget Monitoring Lines MA'
,p_region_name=>'monitoring_lines_ma_copy'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(14231710651324337)
,p_use_local_sync_table=>true
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    l.ID,',
'    v.COMPANY,',
'    v.YEAR,',
'    TRIM(v.COST_CENTER) AS COST_CENTER,',
'    v.DEPARTMENT,',
'    v.BUDGET_TYPE,',
'    TRIM(v.BUDGET_CATEGORY) AS BUDGET_CATEGORY,',
'    v.ACTIVITY,',
'    v.COA,',
'    v.PRODUCT,',
'    v.DESCRIPTION,',
'    v.QTY,',
'    v.UOM,',
'    v.PRICE_UOM,',
'    v.ORIGINAL_AMOUNT,',
'    v.LOCATION,',
'    v.PERIOD,',
'    v.COMMITMENT_AMOUNT,',
'    v.ACTUAL_AMMOUNT AS ACTUAL_AMOUNT,',
'    v.FUND_AVAILABLE,',
'    v.FINAL_AMOUNT,',
'    h.ID AS HEADER_ID',
'FROM XTD_BRF_BUDGET_MKT_MOTR_V v',
'JOIN APX_BF_BUDGET_MONITOR_HDR h ON (',
'    v.COMPANY = h.COMPANY_NAME',
'    AND v.YEAR = h.YEAR',
'    AND v.BUDGET_TYPE = h.BUDGET_TYPE',
'    AND v.DEPARTMENT = h.DEPT_NAME',
')',
'JOIN APX_BF_BUDGET_MONITOR_LNS l ON (',
'    h.ID = l.HEADER_ID',
'    AND v.COA = l.COA',
'    AND v.ACTIVITY = l.ACTIVITY',
'    AND v.LOCATION = l.LOCATION',
'    AND TRIM(v.COST_CENTER) = TRIM(l.COST_CENTER)',
'    AND v.BUDGET_CATEGORY = l.BUDGET_CATEGORY',
'    AND v.PERIOD = TO_NUMBER(l.PERIOD)',
'    -- AND v.ORIGINAL_AMOUNT = l.ORIGINAL_AMOUNT',
'    -- AND v.FINAL_AMOUNT = l.FINAL_AMOUNT',
')',
'WHERE h.ID = :P7_HEADER_ID',
'AND l.HEADER_ID = :P7_HEADER_ID'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14738055284364620)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MANUEL'
,p_internal_uid=>2833211910778829
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738216632364621)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14740268931342292)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>20
,p_column_identifier=>'V'
,p_column_label=>'Header ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738343029364622)
,p_db_column_name=>'COMPANY'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738347318364623)
,p_db_column_name=>'YEAR'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738506420364624)
,p_db_column_name=>'COST_CENTER'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Cost Center'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738641958364625)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738703073364626)
,p_db_column_name=>'BUDGET_TYPE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Budget Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738773719364627)
,p_db_column_name=>'BUDGET_CATEGORY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Budget Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738900681364628)
,p_db_column_name=>'ACTIVITY'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14738960800364629)
,p_db_column_name=>'COA'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'COA'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739115383364630)
,p_db_column_name=>'PRODUCT'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739179970364631)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739328218364632)
,p_db_column_name=>'QTY'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739345778364633)
,p_db_column_name=>'UOM'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739462522364634)
,p_db_column_name=>'PRICE_UOM'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Price/UOM'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739684770364636)
,p_db_column_name=>'LOCATION'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739550622364635)
,p_db_column_name=>'ORIGINAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'O'
,p_column_label=>'Original Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739863589364638)
,p_db_column_name=>'COMMITMENT_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Commitment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739987785364639)
,p_db_column_name=>'ACTUAL_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Actual Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14740069939364640)
,p_db_column_name=>'FUND_AVAILABLE'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Fund Available'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14740212738364641)
,p_db_column_name=>'FINAL_AMOUNT'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Final Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14739842137364637)
,p_db_column_name=>'PERIOD'
,p_display_order=>230
,p_column_identifier=>'Q'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14776609124656545)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28718'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:HEADER_ID:COMPANY:YEAR:COST_CENTER:DEPARTMENT:BUDGET_TYPE:BUDGET_CATEGORY:ACTIVITY:COA:PRODUCT:LOCATION:DESCRIPTION:QTY:UOM:PRICE_UOM:ORIGINAL_AMOUNT:COMMITMENT_AMOUNT:ACTUAL_AMOUNT:FUND_AVAILABLE:FINAL_AMOUNT:PERIOD'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(14444409915943630)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(14125796404582301)
,p_page_plug_id=>wwv_flow_imp.id(14444329935943629)
,p_value_type=>'ITEM'
,p_value=>'P7_COMPANY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16807863699589298)
,p_plug_name=>'Region Display Selector'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16808013431589299)
,p_plug_name=>'Budget Monitoring Lines Non MA [Summary]'
,p_title=>'Summary'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(14231710651324337)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    MIN(LINK_KEY) AS LINK_KEY,',
'    MIN(ID) AS ID,',
'    COA,',
'    AVG(PRICE) AS PRICE,',
'    ACTIVITY,',
'    LOCATION,',
'    MIN(HEADER_ID) AS HEADER_ID,',
'    SUM(COMMITMENT) AS SUM_OF_COMMITMENT,',
'    LISTAGG(CREATED_BY, ''; '') WITHIN GROUP (ORDER BY CREATED_BY) AS CREATED_BY,',
'    LISTAGG(UPDATED_BY, ''; '') WITHIN GROUP (ORDER BY UPDATED_BY) AS UPDATED_BY,',
'    MIN(VERSION_NO) AS VERSION_NO,',
'    COST_CENTER,',
'    MIN(LINE_NUMBER) AS LINE_NUMBER,',
'    LISTAGG(LINE_SOURCE, ''; '') WITHIN GROUP (ORDER BY LINE_SOURCE) AS LINE_SOURCE,',
'    MIN(COMPANY_NAME) AS COMPANY_NAME,',
'    MAX(CREATED_DATE) AS CREATED_DATE,',
'    SUM(FINAL_AMOUNT) AS SUM_OF_FINAL_AMOUNT,',
'    LISTAGG(REJECT_NOTES, ''; '') WITHIN GROUP (ORDER BY REJECT_NOTES) AS REJECT_NOTES,',
'    MAX(UPDATED_DATE) AS UPDATED_DATE,',
'    SUM(ACTUAL_AMOUNT) AS SUM_OF_ACTUAL_AMOUNT,',
'    SUM(FUND_AVAILABLE) AS SUM_OF_FUND_AVAILABLE,',
'    BUDGET_CATEGORY,',
'    SUM(ORIGINAL_AMOUNT) AS SUM_OF_ORIGINAL_AMOUNT,',
'    LISTAGG(TRX_COMMITMENT_NUMBER, ''; '') WITHIN GROUP (ORDER BY TRX_COMMITMENT_NUMBER) AS TRX_COMMITMENT_NUMBER,',
'    LISTAGG(TRX_ACTUAL_NUMBER, ''; '') WITHIN GROUP (ORDER BY TRX_ACTUAL_NUMBER) AS TRX_ACTUAL_NUMBER,',
'    LISTAGG(TRX_ACTIVITY, ''; '') WITHIN GROUP (ORDER BY TRX_ACTIVITY) AS TRX_ACTIVITY,',
'    LISTAGG(REV_COA, ''; '') WITHIN GROUP (ORDER BY REV_COA) AS REV_COA,',
'    LISTAGG(REV_PRODUCT, ''; '') WITHIN GROUP (ORDER BY REV_PRODUCT) AS REV_PRODUCT',
'FROM (',
'    SELECT ',
'        NVL(TO_CHAR(REST.ID), ''REST_'' || ROWNUM) AS LINK_KEY, ',
'        REST.ID,',
'        REST.COA,',
'        REST.PRICE,',
'        REST.ACTIVITY,',
'        REST.LOCATION,',
'        REST.HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        REST.CREATED_BY,',
'        REST.UPDATED_BY,',
'        REST.VERSION_NO,',
'        REST.COST_CENTER,',
'        REST.LINE_NUMBER,',
'        REST.LINE_SOURCE,',
'        REST.COMPANY_NAME,',
'        REST.CREATED_DATE,',
'        REST.FINAL_AMOUNT,',
'        REST.REJECT_NOTES,',
'        REST.UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) + NVL(REV.AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((REST.FINAL_AMOUNT - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) - NVL(REV.AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        REST.BUDGET_CATEGORY,',
'        NVL((',
'            SELECT MAX(orig.ORIGINAL_AMOUNT)',
'            FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'            WHERE orig.COST_CENTER     = REST.COST_CENTER',
'            AND orig.BUDGET_CATEGORY = REST.BUDGET_CATEGORY',
'            AND orig.ACTIVITY        = REST.ACTIVITY',
'            AND orig.COA             = REST.COA',
'            AND orig.PERIOD          = REST.PERIOD',
'            AND orig.VERSION_NO      = 0',
'            AND ROWNUM = 1',
'        ), REST.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        REV.CATEGORY AS REV_COA,',
'        REV.PRODUCT AS REV_PRODUCT',
'    FROM #APEX$SOURCE_DATA# REST',
'    JOIN APX_BF_BUDGET_MONITOR_HDR H',
'            on H.ID = :P7_HEADER_ID',
'    LEFT JOIN APX_BF_COMM_ACT_SUM_1_V CA',
'    ON REST.ACTIVITY = TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1))',
'        AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = H.DEPT_NAME',
'        AND SUBSTR(CA.PERIOD, 1, 3) = SUBSTR(REST.PERIOD, 1, 3)',
'        AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'    LEFT JOIN APX_BF_REVENUE_COGS_AMT_V REV',
'        ON  REGEXP_SUBSTR(REST.PRODUCT, ''^\d+'') = REV.PRODUCT',
'            AND REST.BUDGET_CATEGORY = REV.CATEGORY',
'            AND TRIM(REV.PERIOD) = TRIM(REST.PERIOD)',
'    WHERE REST.HEADER_ID = :P7_HEADER_ID',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''UNB_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Unbudgeted''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''INV_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Inventory''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
'    UNION ALL',
'',
'    SELECT ',
'        ''ADM_'' || ROWNUM AS LINK_KEY,',
'        NULL ID,',
'        NULL COA,',
'        NULL PRICE,',
'        TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'        NULL LOCATION,',
'        NULL HEADER_ID,',
'        NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'        NULL CREATED_BY,',
'        NULL UPDATED_BY,',
'        NULL VERSION_NO,',
'        NULL COST_CENTER,',
'        CASE ',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END LINE_NUMBER,',
'        NULL LINE_SOURCE,',
'        NULL COMPANY_NAME,',
'        NULL CREATED_DATE,',
'        0 FINAL_AMOUNT,',
'        NULL REJECT_NOTES,',
'        NULL UPDATED_DATE,',
'        NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'        NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'        NULL BUDGET_CATEGORY,',
'        0 ORIGINAL_AMOUNT,',
'        CA.TRX_COMMITMENT_NUMBER,',
'        CA.TRX_ACTUAL_NUMBER,',
'        ca.activity as TRX_ACTIVITY,',
'        NULL AS REV_COA,',
'        NULL AS REV_PRODUCT',
'    FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'    WHERE 1=1',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''FA Administratif''',
'    AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'            SELECT ',
'            DEPT_NAME',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID',
'    )',
'    AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
') subquery',
'WHERE (COST_CENTER IS NOT NULL OR ACTIVITY = ''Unbudgeted'' OR ACTIVITY = ''Inventory'' OR ACTIVITY = ''FA Administratif'')',
'    AND (BUDGET_CATEGORY IS NOT NULL OR ACTIVITY = ''Unbudgeted'' OR ACTIVITY = ''Inventory'' OR ACTIVITY = ''FA Administratif'')',
'    AND (ACTIVITY IS NOT NULL OR ACTIVITY = ''Unbudgeted'' OR ACTIVITY = ''Inventory'' OR ACTIVITY = ''FA Administratif'')',
'    AND (COA IS NOT NULL OR ACTIVITY = ''Unbudgeted'' OR ACTIVITY = ''Inventory'' OR ACTIVITY = ''FA Administratif'')',
'    AND (LOCATION IS NOT NULL OR ACTIVITY = ''Unbudgeted'' OR ACTIVITY = ''Inventory'' OR ACTIVITY = ''FA Administratif'')',
'GROUP BY ',
'    COST_CENTER, ',
'    BUDGET_CATEGORY, ',
'    ACTIVITY, ',
'    COA, ',
'    LOCATION'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_HEADER_ID,P7_YEAR_VALUE'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Summary'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808179885589301)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808313421589302)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808382617589303)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808493735589304)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808546514589305)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808652433589306)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808808560589307)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16808903867589308)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809008773589309)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809057958589310)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809161446589311)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809279742589312)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'price_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809414739589313)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'COA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'coa_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809558988589315)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'activity_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809655888589316)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'location_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16809907931589318)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'cost_center_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810265467589322)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'budget_category_sum_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810490061589324)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810562970589325)
,p_name=>'TRX_COMMITMENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_COMMITMENT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810722252589326)
,p_name=>'TRX_ACTUAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTUAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810764488589327)
,p_name=>'TRX_ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16810872996589328)
,p_name=>'REV_COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811041054589329)
,p_name=>'REV_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811046563589330)
,p_name=>'SUM_OF_COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_COMMITMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_commitment_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811222623589331)
,p_name=>'SUM_OF_FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_final_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811342987589332)
,p_name=>'SUM_OF_ACTUAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_ACTUAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_actual_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811392202589333)
,p_name=>'SUM_OF_FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_fund_available_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(16811508078589334)
,p_name=>'SUM_OF_ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_OF_ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FM999G999G999G999G999'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'sum_original_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(16808130690589300)
,p_internal_uid=>4903287317003509
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(17179320851861225)
,p_interactive_grid_id=>wwv_flow_imp.id(16808130690589300)
,p_static_id=>'52745'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17179473212861223)
,p_report_id=>wwv_flow_imp.id(17179320851861225)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17179963849861210)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(16808179885589301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17180901011861203)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(16808313421589302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17181773184861198)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(16808382617589303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17182711847861192)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(16808493735589304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17183628457861186)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(16808546514589305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17184357195861181)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(16808652433589306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17185248971861175)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(16808808560589307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17186240139861170)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(16808903867589308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17187064702861164)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(16809008773589309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17187945591861159)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(16809057958589310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17188942541861153)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(16809161446589311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17189772241861148)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(16809279742589312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17190678049861142)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(16809414739589313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>246
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17192502906861129)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(16809558988589315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17193425847861123)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(16809655888589316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17195186129861112)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(16809907931589318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17198830193861090)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(16810265467589322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17200485247861075)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(16810490061589324)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17201400683861069)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(16810562970589325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17202255808861062)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(16810722252589326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17203154088861056)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(16810764488589327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17204080307861051)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(16810872996589328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17204950833861045)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(16811041054589329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17206789204856255)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(16811046563589330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17207726937856250)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(16811222623589331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17208622664856246)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(16811342987589332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17209490742856241)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(16811392202589333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17210369424856235)
,p_view_id=>wwv_flow_imp.id(17179473212861223)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(16811508078589334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>183
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22391968764946711)
,p_plug_name=>'Budget Monitoring Lines MA'
,p_region_name=>'monitoring_lines_ma'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(14231710651324337)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COMPANY,',
'    YEAR,',
'    COST_CENTER,',
'    DEPARTMENT,',
'    BUDGET_TYPE,',
'    BUDGET_CATEGORY,',
'    ACTIVITY,',
'    COA,',
'    PRODUCT,',
'    DESCRIPTION,',
'    QTY,',
'    UOM,',
'    PRICE_UOM,',
'    ORIGINAL_AMOUNT,',
'    LOCATION,',
'    PERIOD,',
'    COMMITMENT_AMOUNT,',
'    ACTUAL_AMMOUNT AS ACTUAL_AMOUNT,',
'    FINAL_AMOUNT',
'FROM XTD_BRF_BUDGET_MKT_MOTR_V',
'WHERE DEPARTMENT = :P7_DEPARTMENT_VALUE'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908046882769423)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908181237769424)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908321118769425)
,p_name=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dept Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908366204769426)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'User Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908454101769427)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dept Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908584811769428)
,p_name=>'ATTRIBUTE1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908661218769429)
,p_name=>'ATTRIBUTE2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908753152769430)
,p_name=>'ATTRIBUTE3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE3'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute3'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21908890081769431)
,p_name=>'ATTRIBUTE4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE4'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute4'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909000961769432)
,p_name=>'ATTRIBUTE5'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTRIBUTE5'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Attribute5'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909050337769433)
,p_name=>'COMPANY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Company Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909224353769434)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909290658769435)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909353197769436)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909498569769437)
,p_name=>'DEPT_DATE_TO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_DATE_TO'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dept Date To'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909638326769438)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21909699971769439)
,p_name=>'DEPT_DATE_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_DATE_FROM'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dept Date From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22392135349946713)
,p_internal_uid=>8511252453677226
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(24471024585918785)
,p_interactive_grid_id=>wwv_flow_imp.id(22392135349946713)
,p_static_id=>'105902'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24471262363918784)
,p_report_id=>wwv_flow_imp.id(24471024585918785)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14172830642331943)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(21908046882769423)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14173691511331942)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(21908181237769424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14174611869331940)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(21908321118769425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14175493897331938)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(21908366204769426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14176344140331936)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(21908454101769427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14177303383331933)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(21908584811769428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14178155101331929)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(21908661218769429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14179103079331924)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(21908753152769430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14180037793331920)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(21908890081769431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14180875452331917)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(21909000961769432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14181782549331913)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(21909050337769433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14182721353331910)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(21909224353769434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14183543797331908)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(21909290658769435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14184534928331906)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(21909353197769436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14185387782331903)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(21909498569769437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14186254670331901)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(21909638326769438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14187166444331899)
,p_view_id=>wwv_flow_imp.id(24471262363918784)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(21909699971769439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(21909816171769440)
,p_page_id=>7
,p_web_src_param_id=>wwv_flow_imp.id(14125796404582301)
,p_page_plug_id=>wwv_flow_imp.id(22391968764946711)
,p_value_type=>'ITEM'
,p_value=>'P7_COMPANY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29550199636924611)
,p_plug_name=>'Budget Monitoring Lines Non MA'
,p_title=>'Detail'
,p_region_name=>'monitoring_lines_non_ma'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(14231710651324337)
,p_use_local_sync_table=>true
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'SELECT ',
'              -- Use ID if exists, otherwise generate surrogate for linking',
'       NVL(TO_CHAR(REST.ID), ''REST_'' || ROWNUM) AS LINK_KEY, ',
'       REST.ID,',
'       REST.COA,',
'       REST.PRICE,',
'       REST.PERIOD,',
'       REST.ACTIVITY,',
'       REST.LOCATION,',
'       REST.HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       REST.CREATED_BY,',
'       REST.UPDATED_BY,',
'       REST.VERSION_NO,',
'       REST.COST_CENTER,',
'       REST.LINE_NUMBER,',
'       REST.LINE_SOURCE,',
'       REST.COMPANY_NAME,',
'       REST.CREATED_DATE,',
'       REST.FINAL_AMOUNT,',
'       REST.REJECT_NOTES,',
'       REST.UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) + NVL(REV.AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((REST.FINAL_AMOUNT - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) - NVL(REV.AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       REST.BUDGET_CATEGORY,',
'       NVL((',
'           SELECT MAX(orig.ORIGINAL_AMOUNT)',
'             FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'            WHERE orig.COST_CENTER     = REST.COST_CENTER',
'              AND orig.BUDGET_CATEGORY = REST.BUDGET_CATEGORY',
'              AND orig.ACTIVITY        = REST.ACTIVITY',
'              AND orig.COA             = REST.COA',
'              AND orig.PERIOD          = REST.PERIOD',
'              AND orig.VERSION_NO      = 0',
'              AND ROWNUM = 1',
'       ), REST.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       REV.CATEGORY AS REV_COA,',
'       REV.PRODUCT AS REV_PRODUCT',
'  FROM #APEX$SOURCE_DATA# REST',
'  JOIN APX_BF_BUDGET_MONITOR_HDR H',
'         on H.ID = :P7_HEADER_ID',
'  LEFT JOIN APX_BF_COMM_ACT_SUM_1_V CA',
'  ON REST.ACTIVITY = TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1))--UPPER(TRIM(REST.ACTIVITY)) = UPPER(TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)))',
'--  AND UPPER(TRIM(REGEXP_REPLACE(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2), ''[^A-Z0-9]'', '''')))',
'--      = UPPER(TRIM(REGEXP_REPLACE(H.DEPT_NAME, ''[^A-Z0-9]'', '''')))',
'     AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = H.DEPT_NAME',
'     AND SUBSTR(CA.PERIOD, 1, 3) = SUBSTR(REST.PERIOD, 1, 3)',
'     AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
' LEFT JOIN APX_BF_REVENUE_COGS_AMT_V REV',
'    ON  REGEXP_SUBSTR(REST.PRODUCT, ''^\d+'') = REV.PRODUCT',
'        AND REST.BUDGET_CATEGORY = REV.CATEGORY',
'        AND TRIM(REV.PERIOD) = TRIM(REST.PERIOD)',
' WHERE REST.HEADER_ID = :P7_HEADER_ID',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''UNB_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Unbudgeted''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''INV_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''Inventory''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
'',
' UNION ALL',
'',
' SELECT ',
'        -- Generate a unique link key for unbudgeted rows',
'       ''ADM_'' || ROWNUM AS LINK_KEY,',
'       NULL ID,',
'       NULL COA,',
'       NULL PRICE,',
'       CA.PERIOD AS PERIOD,',
'       TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) AS ACTIVITY,',
'       NULL LOCATION,',
'       NULL HEADER_ID,',
'       NVL(CA.TOTAL_COMMITMENT, 0) AS COMMITMENT,',
'       NULL CREATED_BY,',
'       NULL UPDATED_BY,',
'       NULL VERSION_NO,',
'       NULL COST_CENTER,',
'       CASE ',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JAN'' THEN 1',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''FEB'' THEN 2',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAR'' THEN 3',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''APR'' THEN 4',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''MAY'' THEN 5',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUN'' THEN 6',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''JUL'' THEN 7',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''AUG'' THEN 8',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''SEP'' THEN 9',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''OCT'' THEN 10',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''NOV'' THEN 11',
'           WHEN SUBSTR(CA.PERIOD, 1, 3) = ''DEC'' THEN 12',
'           ELSE 0',
'       END LINE_NUMBER,',
'       NULL LINE_SOURCE,',
'       NULL COMPANY_NAME,',
'       NULL CREATED_DATE,',
'       0 FINAL_AMOUNT,',
'       NULL REJECT_NOTES,',
'       NULL UPDATED_DATE,',
'       NVL(CA.TOTAL_ACTUAL_AMOUNT, 0) AS ACTUAL_AMOUNT,',
'       NVL((0 - NVL(CA.TOTAL_COMMITMENT, 0) - NVL(CA.TOTAL_ACTUAL_AMOUNT, 0)), 0) AS FUND_AVAILABLE,',
'       NULL BUDGET_CATEGORY,',
'       0 ORIGINAL_AMOUNT,',
'       CA.TRX_COMMITMENT_NUMBER,',
'       CA.TRX_ACTUAL_NUMBER,',
'       ca.activity as TRX_ACTIVITY,',
'       NULL AS REV_COA,',
'       NULL AS REV_PRODUCT',
'  FROM APX_BF_COMM_ACT_SUM_1_V CA ',
'  WHERE 1=1',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 1)) = ''FA Administratif''',
'   AND TRIM(REGEXP_SUBSTR(CA.ACTIVITY, ''[^|]+'', 1, 2)) = (',
'        SELECT ',
'        DEPT_NAME',
'    FROM ',
'        APX_BF_BUDGET_MONITOR_HDR',
'    WHERE',
'        ID = :P7_HEADER_ID',
'   )',
'   AND SUBSTR(CA.PERIOD, -2) = SUBSTR(:P7_YEAR_VALUE, -2)',
' ORDER BY LINE_NUMBER ASC',
'  )',
' ORDER BY ',
'    ACTIVITY,',
'    TO_NUMBER(',
'        CASE ',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JAN'' THEN 1',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''FEB'' THEN 2',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''MAR'' THEN 3',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''APR'' THEN 4',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''MAY'' THEN 5',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JUN'' THEN 6',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''JUL'' THEN 7',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''AUG'' THEN 8',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''SEP'' THEN 9',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''OCT'' THEN 10',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''NOV'' THEN 11',
'            WHEN SUBSTR(PERIOD, 1, 3) = ''DEC'' THEN 12',
'            ELSE 0',
'        END',
'    ),',
'    SUBSTR(PERIOD, -2)  -- ensures proper year order (e.g., 24, 25, 26)'))
,p_source_post_processing=>'SQL'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_HEADER_ID,P7_YEAR_VALUE'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    v_department := :P7_DEPARTMENT_VALUE;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detail'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249265809571892)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'COA'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'coa_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249352730571893)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'price_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249509383571894)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'period_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249593886571895)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'activity_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249697546571896)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'location_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249762391571897)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249855177571898)
,p_name=>'COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMITMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ACTIVITY_TRX,P5_ACTUAL_TRX,P5_COMMITMENT_TRX,P5_PERIOD_TRX,P5_REV_COA:\&TRX_ACTIVITY.\,,&TRX_COMMITMENT_NUMBER.,&PERIOD.,'
,p_link_text=>'&COMMITMENT.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'commitment_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14249961133571899)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250080727571900)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'cost_center_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250196843571901)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250287480571902)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'line_source_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250438607571903)
,p_name=>'COMPANY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPANY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250452409571904)
,p_name=>'FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'final_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250603140571905)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'reject_notes_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250696829571906)
,p_name=>'ACTUAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ACTUAL_TRX,P5_COMMITMENT_TRX,P5_PERIOD_TRX,P5_ACTIVITY_TRX,P5_REV_COA,P5_REV_PRODUCT,P5_ACTIVITY_REV,P5_REV_CATEGORY:&TRX_ACTUAL_NUMBER.,,&PERIOD.,\&TRX_ACTIVITY.\,&REV_COA.,&REV_PRODUCT.,&ACTIVITY.,&BUDGET_CATEG'
||'ORY.'
,p_link_text=>'&ACTUAL_AMOUNT.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'actual_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250761246571907)
,p_name=>'FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'fund_available_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250854990571908)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'budget_category_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14250959520571909)
,p_name=>'ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'original_amount_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14251167950571911)
,p_name=>'LINK_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_KEY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14251335100571912)
,p_name=>'TRX_COMMITMENT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_COMMITMENT_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14251375672571913)
,p_name=>'TRX_ACTUAL_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTUAL_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14251453675571914)
,p_name=>'TRX_ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRX_ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14253330885571932)
,p_name=>'REV_COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14253420181571933)
,p_name=>'REV_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REV_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29550366496924613)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'id_col'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29551131607924621)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29551242611924622)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29551894964924628)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(29552127257924631)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(29550260593924612)
,p_internal_uid=>7849636480417910
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        if ( columnDef.property === "COST_CENTER" ) {',
'                            text = model.getValue( recordMeta.record, "COST_CENTER" );',
'                        } else if ( columnDef.property === "BUDGET_CATEGORY" ) {',
'                            text = model.getValue( recordMeta.record, "BUDGET_CATEGORY" );',
'                        } else if ( columnDef.property === "ACTIVITY" ) {',
'                            text = model.getValue( recordMeta.record, "ACTIVITY" );',
'                        } else if ( columnDef.property === "COA" ) {',
'                            text = model.getValue( recordMeta.record, "COA" );',
'                        } else if ( columnDef.property === "LOCATION" ) {',
'                            text = model.getValue( recordMeta.record, "LOCATION" );',
'                        } else if ( columnDef.property === "ORIGINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ORIGINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FINAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "FINAL_AMOUNT" );',
'                        } else if ( columnDef.property === "COMMITMENT" ) {',
'                            text = model.getValue( recordMeta.record, "COMMITMENT" );',
'                        } else if ( columnDef.property === "ACTUAL_AMOUNT" ) {',
'                            text = model.getValue( recordMeta.record, "ACTUAL_AMOUNT" );',
'                        } else if ( columnDef.property === "FUND_AVAILABLE" ) {',
'                            text = model.getValue( recordMeta.record, "FUND_AVAILABLE" );',
'                        } else if ( columnDef.property === "PERIOD" ) {',
'                            text = model.getValue( recordMeta.record, "PERIOD" );',
'                        }',
'                    }',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(29620461389562017)
,p_interactive_grid_id=>wwv_flow_imp.id(29550260593924612)
,p_static_id=>'79199'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(29620715467562017)
,p_report_id=>wwv_flow_imp.id(29620461389562017)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14255055704528245)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(14249265809571892)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>247
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14255944329528242)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(14249352730571893)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.8333
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14256872824528240)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(14249509383571894)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14257802202528237)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(14249593886571895)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>224
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14258741374528235)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(14249697546571896)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14259621544528232)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(14249762391571897)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14260455667528229)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(14249855177571898)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14261410267528227)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(14249961133571899)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14262317924528224)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(14250080727571900)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14263175155528221)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(14250196843571901)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109.8333
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14264048154528219)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(14250287480571902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14265012595528217)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(14250438607571903)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135.8333
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14265890643528214)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(14250452409571904)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14266788849528211)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(14250603140571905)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14267731469528209)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(14250696829571906)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14268602684528206)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(14250761246571907)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14269484041528204)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(14250854990571908)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14270349085528201)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(14250959520571909)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14271325713528198)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(14251167950571911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14272185913528196)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(14251335100571912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14273121119528193)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(14251375672571913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14274005666528191)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(14251453675571914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14987201472531372)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(14253330885571932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14988051872531368)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(14253420181571933)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29621219625562015)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(29550366496924613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29628291185561986)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(29551131607924621)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29629166612561982)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(29551242611924622)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29634615012561961)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(29551894964924628)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(29637285077561951)
,p_view_id=>wwv_flow_imp.id(29620715467562017)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(29552127257924631)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.562
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765853036790570164)
,p_plug_name=>'Budget Lines'
,p_parent_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ROW_NUMBER() OVER (ORDER BY m.ID) AS LINE_NUMBER,',
'    m.ID,',
'    m.HEADER_ID,',
'    m.VERSION_NO,',
'    m.COST_CENTER,',
'    m.BUDGET_CATEGORY,',
'    m.ACTIVITY,',
'    m.COA,',
'    m.LOCATION,',
'    ',
'    NVL((',
'        SELECT MAX(orig.ORIGINAL_AMOUNT)',
'        FROM APX_BF_BUDGET_MONITOR_LNS_V orig',
'        WHERE orig.COST_CENTER = m.COST_CENTER',
'          AND orig.BUDGET_CATEGORY = m.BUDGET_CATEGORY',
'          AND orig.ACTIVITY = m.ACTIVITY',
'          AND orig.COA = m.COA',
'          AND orig.PERIOD = m.PERIOD',
'          AND orig.VERSION_NO = 0',
'          AND ROWNUM = 1',
'    ), m.ORIGINAL_AMOUNT) AS ORIGINAL_AMOUNT,',
'',
'    -- Ambil dari view jika ada',
'    NVL(v.COMMITMENT, m.COMMITMENT) AS COMMITMENT,',
'    COALESCE(a.FINAL_AMOUNT, m.FINAL_AMOUNT) AS FINAL_AMOUNT,',
'',
'    -- Ambil dari view jika ada',
'    NVL(v.ACTUAL_AMOUNT, m.ACTUAL_USAGE) AS ACTUAL_USAGE,',
'',
'    -- Perhitungan manual Fund Available',
'    (',
'        COALESCE(a.FINAL_AMOUNT, m.FINAL_AMOUNT)',
'        - NVL(v.COMMITMENT, m.COMMITMENT)',
'        - NVL(v.ACTUAL_AMOUNT, m.ACTUAL_USAGE)',
'    ) AS FUND_AVAILABLE,',
'',
'    SUBSTR(m.PERIOD, 1, 3) || ''-'' || SUBSTR(m.PERIOD, -2) AS PERIOD,',
'    m.REJECT_NOTES,',
'    m.UPDATED_DATE,',
'    m.UPDATED_BY,',
'    m.CREATED_DATE,',
'    m.CREATED_BY,',
'    m.LINE_SOURCE,',
'    m.ACTIVITY_CODE',
'',
'FROM ',
'    APX_BF_BUDGET_MONITOR_LNS_V m',
'',
'LEFT JOIN ',
'    APX_BF_BUDGET_ALLOCATE a ON m.HEADER_ID = a.HEADER_ID',
'                            AND m.COST_CENTER = a.COST_CENTER',
'                            AND m.BUDGET_CATEGORY = a.BUDGET_CATEGORY',
'                            AND m.ACTIVITY = a.ACTIVITY',
'                            AND m.COA = a.COA',
'                            AND m.PERIOD = a.PERIOD_ORIGINAL',
'',
'LEFT JOIN ',
'    APX_BF_BUDGET_ENTRY_LNS l ON m.HEADER_ID = l.HEADER_ID',
'                            AND m.COST_CENTER = l.COST_CENTER',
'                            AND m.BUDGET_CATEGORY = a.BUDGET_CATEGORY',
'                            AND m.ACTIVITY = l.ACTIVITY',
'                            AND m.COA = l.COA',
'                            AND m.PERIOD = l.PERIOD',
'',
'-- JOIN ke View yang menampilkan nilai Commitment dan Actual',
'LEFT JOIN ',
'    XTD_BRF_BUDGET_MON_V v ON v.ACTIVITY = m.ACTIVITY_CODE',
'',
'WHERE ',
'    m.HEADER_ID = :P7_HEADER_ID',
'    AND m.VERSION_NO = (',
'        SELECT MAX(VERSION_NO) ',
'        FROM APX_BF_BUDGET_MONITOR_LNS_V ',
'        WHERE HEADER_ID = :P7_HEADER_ID',
'    )',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Budget Lines'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_required_patch=>wwv_flow_imp.id(765356663646404556)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622661901944536758)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622662145867536761)
,p_name=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Version No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622662252239536762)
,p_name=>'ACTIVITY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622662699967536766)
,p_name=>'COA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Coa'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622663115477536771)
,p_name=>'REJECT_NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REJECT_NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reject Notes'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622664715956536787)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622664888375536788)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622664955155536789)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Updated Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622665020840536790)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622665389951536793)
,p_name=>'LINE_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Line Source'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622666285985536802)
,p_name=>'LINE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Number'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622666323986536803)
,p_name=>'HEADER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HEADER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Header Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622666426591536804)
,p_name=>'COST_CENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COST_CENTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622666605526536805)
,p_name=>'BUDGET_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUDGET_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Budget Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622666625251536806)
,p_name=>'ACTIVITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Activity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712272714705757)
,p_name=>'LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712325118705758)
,p_name=>'ORIGINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Original Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712444207705759)
,p_name=>'COMMITMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMITMENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commitment'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712517204705760)
,p_name=>'FINAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FINAL_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Final Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712664362705761)
,p_name=>'ACTUAL_USAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_USAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Actual Usage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712731374705762)
,p_name=>'FUND_AVAILABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUND_AVAILABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Fund Available'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(622712885243705763)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(622661783311536757)
,p_internal_uid=>593340277184116101
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(622668114077574019)
,p_interactive_grid_id=>wwv_flow_imp.id(622661783311536757)
,p_static_id=>'5933467'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(622668309052574019)
,p_report_id=>wwv_flow_imp.id(622668114077574019)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622668841976574028)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(622661901944536758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622671506245574038)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(622662145867536761)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622672438911574041)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(622662252239536762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622676061825574051)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(622662699967536766)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622680572647574067)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(622663115477536771)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622694894255574114)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(622664715956536787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622695708650574117)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(622664888375536788)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622696661715574121)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(622664955155536789)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622697537145574124)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(622665020840536790)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622700290668574132)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(622665389951536793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622718259417706129)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(622666285985536802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622719136521706137)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(622666323986536803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622720068525706141)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(622666426591536804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622720944571706144)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(622666605526536805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622721892260706148)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(622666625251536806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622722728631706152)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(622712272714705757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622723662301706155)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(622712325118705758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622724601176706159)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(622712444207705759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622725437927706162)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(622712517204705760)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622726356703706166)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(622712664362705761)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622727295918706169)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(622712731374705762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(622728097706706172)
,p_view_id=>wwv_flow_imp.id(622668309052574019)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(622712885243705763)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(765850844318350393)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(765357212082404578)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14251803840571917)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(765850844318350393)
,p_button_name=>'LAST_SYNC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Last refresh: &P7_LAST_SYNC_TIME.'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    begin',
'        SELECT ',
'            DEPT_NAME into v_department',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID;',
'        ',
'        exception when others then null;',
'    end;',
'    ',
'    IF v_department IS NOT NULL and :P7_LAST_SYNC_TIME is not null AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'apex_disabled'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22390222974946694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22390095894946693)
,p_button_name=>'Back'
,p_button_static_id=>'back_button'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:7,6::'
,p_icon_css_classes=>'fa-arrow-circle-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14251644029571916)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(765850844318350393)
,p_button_name=>'BUTTON_SYNC'
,p_button_static_id=>'button_sync'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Refresh'
,p_button_position=>'NEXT'
,p_show_processing=>'Y'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_department VARCHAR2(100);',
'BEGIN',
'    begin',
'        SELECT ',
'            DEPT_NAME into v_department',
'        FROM ',
'            APX_BF_BUDGET_MONITOR_HDR',
'        WHERE',
'            ID = :P7_HEADER_ID;',
'        ',
'        exception when others then null;',
'    end;',
'    ',
'    IF v_department IS NOT NULL AND v_department NOT LIKE ''%Marketing%Activity%'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE; ',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14251863929571918)
,p_name=>'P7_LAST_SYNC_TIME'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765807732498971966)
,p_name=>'P7_HEADER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765807869681971967)
,p_name=>'P7_COMPANY_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808006545971968)
,p_name=>'P7_LEDGER_ID'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808042890971969)
,p_name=>'P7_CHART_OF_ACCOUNTS_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808130600971970)
,p_name=>'P7_TEXT_COLOR'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808296371971971)
,p_name=>'P7_BACKGROUND_COLOR'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808506779971973)
,p_name=>'P7_BATCH_NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808576905971974)
,p_name=>'P7_BUDGET_TYPE_VALUE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BUDGET_TYPE',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808685263971975)
,p_name=>'P7_BUDGET_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_prompt=>'Budget Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808727076971976)
,p_name=>'P7_DEPARTMENT_VALUE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    DEPT_NAME',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808874738971977)
,p_name=>'P7_DEPARTMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765808946737971978)
,p_name=>'P7_YEAR_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    YEAR',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809024274971979)
,p_name=>'P7_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809182059971980)
,p_name=>'P7_COMPANY_VALUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COMPANY_NAME',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
'And BATCH_NO = :P7_BATCH_NUMBER_VALUE',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809311620971981)
,p_name=>'P7_COMPANY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_prompt=>'Company'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809336647971982)
,p_name=>'P7_LATEST_VERSION_VALUE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    LATEST_VERSION',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809433349971983)
,p_name=>'P7_LATEST_VERSION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_prompt=>'Latest Version'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809588470971984)
,p_name=>'P7_BATCH_NUMBER_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(765808413254971972)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    BATCH_NO',
'FROM ',
'    APX_BF_BUDGET_MONITOR_HDR',
'WHERE',
'    ID = :P7_HEADER_ID',
';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809709890971985)
,p_name=>'P7_SEGMENT_ACCOUNT_V'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765809973703971988)
,p_name=>'P7_SUM_ORIGINAL_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(765809894443971987)
,p_prompt=>'Total Budget'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765810052909971989)
,p_name=>'P7_SUM_ORIGINAL_AMOUNT_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(765809894443971987)
,p_prompt=>'&P7_SUM_ORIGINAL_AMOUNT.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(765810299587971991)
,p_name=>'P7_DELETE_SELECTED_ROWS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(765810142170971990)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14252077613571920)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Synchronize Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 10/20/2025 3:47:25 AM (QP5 v5.362) */',
'DECLARE',
'    v_dept_name    APX_BF_BUDGET_MONITOR_HDR.DEPT_NAME%TYPE;',
'    v_header_id    NUMBER := :P7_HEADER_ID;',
'    v_year_value   VARCHAR2 (50);',
'    v_count        NUMBER;',
'BEGIN',
'    -------------------------------------------------------------------------',
'    -- STEP 0: Get department name',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        SELECT DEPT_NAME, YEAR',
'          INTO v_dept_name, v_year_value',
'          FROM APX_BF_BUDGET_MONITOR_HDR',
'         WHERE ID = v_header_id;',
'',
'        apex_debug.MESSAGE (',
'            ''Step 0: Department name fetched successfully: %s | Year: %s'',',
'            v_dept_name,',
'            v_year_value);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 0: No department found for HEADER_ID = %s'',',
'                v_header_id);',
'            RAISE;',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 0: Error fetching department name: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 1: Mark existing records in main table as ''Sync''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        UPDATE APX_BF_COMM_ACT_AMT',
'           SET SYNC_STATUS = ''Sync''',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 1: Updated main table to Sync: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 1: Error updating Sync status: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 2: Clean up old staging data',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        DELETE APX_BF_COMM_ACT_AMT_STG',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 2: Deleted old staging data: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 2: Error deleting old staging data: %s'',',
'                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 3: Insert new data into staging table',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        INSERT INTO APX_BF_COMM_ACT_AMT_STG (COMPANY,',
'                                             SOURCE,',
'                                             SOURCE_STATUS,',
'                                             ACTIVITY,',
'                                             COMMITMENT,',
'                                             ACTUAL_AMOUNT,',
'                                             PERIOD,',
'                                             PR_QUANTITY,',
'                                             PO_QUANTITY,',
'                                             RECEIPT_QUANTITY,',
'                                             INVOICED_QUANTITY,',
'                                             PR_COMMITMENT,',
'                                             PO_COMMITMENT,',
'                                             RCV_ACTUAL,',
'                                             INVOICE_ACTUAL,',
'                                             GL_MANUAL_ACTUAL,',
'                                             AR_INVOICE_ACTUAL,',
'                                             AR_MISC_ACTUAL,',
'                                             INVENTORY_ACTUAL,',
'                                             PR_NUMBER,',
'                                             PO_NUMBER,',
'                                             RCV_NUMBER,',
'                                             INVOICE_NUMBER,',
'                                             INVENTORY_NUMBER,',
'                                             JOURNAL_NAME,',
'                                             JOURNAL_BATCH,',
'                                             JOURNAL_LINE_DESC,',
'                                             AR_INVOICE_NUM,',
'                                             AR_MISC_RECEIPT,',
'                                             REQ_HEADER_ID,',
'                                             REQ_LINE_ID,',
'                                             REQ_DISTRIBUTION_ID,',
'                                             PO_HEADER_ID,',
'                                             PO_LINE_ID,',
'                                             PO_DISTRIBUTION_ID,',
'                                             PO_STATUS,',
'                                             RCV_ID,',
'                                             TRANSACTION_ID,',
'                                             INVOICE_ID,',
'                                             INVOICE_LINE_NUM,',
'                                             INVOICE_DISTRIBUTION_ID,',
'                                             JE_HEADER_ID,',
'                                             INVENTORY_TRX_ID,',
'                                             INV_ACTUAL_COST,',
'                                             INV_QUANTITY,',
'                                             INV_TRX_NUMBER,',
'                                             INV_DESC,',
'                                             INV_TRX_TYPE,',
'                                             INV_SOURCE_NAME,',
'                                             AR_TRX_NUMBER,',
'                                             AR_UNIT_PRICE,',
'                                             AR_UNIT_QUANTITY,',
'                                             AR_TOTAL_AMOUNT,',
'                                             AR_MISC_TRX_ID,',
'                                             AR_MISC_STATUS,',
'                                             AR_MISC_COMMENT,',
'                                             FA_DEPRN_AMOUNT,',
'                                             FA_ASSET_ID,',
'                                             FA_DISTRIBUTION_ID,',
'                                             FA_INVOICE_ID,',
'                                             FA_ITEM_DESC,',
'                                             OPM_ADJ_ID,',
'                                             OPM_ADJUST_QTY,',
'                                             OPM_ADJUST_COST,',
'                                             OPM_COST_TYPE_ID,',
'                                             OPM_DESCRIPTION,',
'                                             OPM_ITEM,',
'                                             OPM_PERIOD,',
'                                             LAST_SYNCHRONIZED,',
'                                             DEPT_NAME_SYNC,',
'                                             SYNC_STATUS)',
'            SELECT base.company,',
'                   base.source,',
'                   base.source_status,',
'                   base.activity,',
'                   base.commitment,',
'                   base.actual_amount,',
'                   base.period,',
'                   base.pr_quantity,',
'                   base.po_quantity,',
'                   base.receipt_quantity,',
'                   base.invoiced_quantity,',
'                   base.pr_commitment,',
'                   base.po_commitment,',
'                   base.rcv_actual,',
'                   base.invoice_actual,',
'                   base.gl_manual_actual,',
'                   base.ar_invoice_actual,',
'                   base.ar_misc_actual,',
'                   base.inventory_actual,',
'                   base.pr_number,',
'                   base.po_number,',
'                   base.rcv_number,',
'                   base.invoice_number,',
'                   base.inventory_number,',
'                   base.journal_name,',
'                   base.journal_batch,',
'                   base.journal_line_desc,',
'                   base.ar_invoice_num,',
'                   base.ar_misc_receipt,',
'                   base.req_header_id,',
'                   base.req_line_id,',
'                   base.req_distribution_id,',
'                   base.po_header_id,',
'                   base.po_line_id,',
'                   base.po_distribution_id,',
'                   base.po_status,',
'                   base.rcv_id,',
'                   base.transaction_id,',
'                   base.invoice_id,',
'                   base.invoice_line_num,',
'                   base.invoice_distribution_id,',
'                   base.je_header_id,',
'                   base.inventory_trx_id,',
'                   base.inv_actual_cost,',
'                   base.inv_quantity,',
'                   base.inv_trx_number,',
'                   base.inv_desc,',
'                   base.inv_trx_type,',
'                   base.inv_source_name,',
'                   base.ar_trx_number,',
'                   base.ar_unit_price,',
'                   base.ar_unit_quantity,',
'                   base.ar_total_amount,',
'                   base.ar_misc_trx_id,',
'                   base.ar_misc_status,',
'                   base.ar_misc_comment,',
'                   base.fa_deprn_amount,',
'                   base.fa_asset_id,',
'                   base.fa_distribution_id,',
'                   base.fa_invoice_id,',
'                   base.fa_item_desc,',
'                   base.opm_adj_id,',
'                   base.opm_adjust_qty,',
'                   base.opm_adjust_cost,',
'                   base.opm_cost_type_id,',
'                   base.opm_description,',
'                   base.opm_item,',
'                   base.opm_period,',
'                   SYSTIMESTAMP,',
'                   TRIM (REGEXP_SUBSTR (base.ACTIVITY,',
'                                        ''[^|]+'',',
'                                        1,',
'                                        2))    AS dept_name_sync,',
'                   ''Ready''',
'              FROM apps.xtd_bf_comm_act_amt_v base',
'             WHERE     UPPER (TRIM (REGEXP_SUBSTR (base.ACTIVITY,',
'                                                   ''[^|]+'',',
'                                                   1,',
'                                                   2))) =',
'                       UPPER (TRIM (v_dept_name))',
'                   AND SUBSTR (base.PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        v_count := SQL%ROWCOUNT;',
'        apex_debug.MESSAGE (',
'            ''Step 3: Inserted into STG: %s row(s) for dept %s, period %s'',',
'            v_count,',
'            v_dept_name,',
'            v_year_value);',
'',
'        IF v_count = 0',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 3 WARNING: No data found for dept=%s period=%s'',',
'                v_dept_name,',
'                v_year_value);',
'        END IF;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 3 ERROR: Insert into STG failed: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 4: Delete old main data marked as ''Sync''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        DELETE APX_BF_COMM_ACT_AMT',
'         WHERE     SYNC_STATUS = ''Sync''',
'               AND DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 4: Deleted old main table data: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 4: Error deleting old main data: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 5: Insert from staging to main table',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        INSERT INTO APX_BF_COMM_ACT_AMT (COMPANY,',
'                                         SOURCE,',
'                                         SOURCE_STATUS,',
'                                         ACTIVITY,',
'                                         COMMITMENT,',
'                                         ACTUAL_AMOUNT,',
'                                         PERIOD,',
'                                         PR_QUANTITY,',
'                                         PO_QUANTITY,',
'                                         RECEIPT_QUANTITY,',
'                                         INVOICED_QUANTITY,',
'                                         PR_COMMITMENT,',
'                                         PO_COMMITMENT,',
'                                         RCV_ACTUAL,',
'                                         INVOICE_ACTUAL,',
'                                         GL_MANUAL_ACTUAL,',
'                                         AR_INVOICE_ACTUAL,',
'                                         AR_MISC_ACTUAL,',
'                                         INVENTORY_ACTUAL,',
'                                         PR_NUMBER,',
'                                         PO_NUMBER,',
'                                         RCV_NUMBER,',
'                                         INVOICE_NUMBER,',
'                                         INVENTORY_NUMBER,',
'                                         JOURNAL_NAME,',
'                                         JOURNAL_BATCH,',
'                                         JOURNAL_LINE_DESC,',
'                                         AR_INVOICE_NUM,',
'                                         AR_MISC_RECEIPT,',
'                                         REQ_HEADER_ID,',
'                                         REQ_LINE_ID,',
'                                         REQ_DISTRIBUTION_ID,',
'                                         PO_HEADER_ID,',
'                                         PO_LINE_ID,',
'                                         PO_DISTRIBUTION_ID,',
'                                         PO_STATUS,',
'                                         RCV_ID,',
'                                         TRANSACTION_ID,',
'                                         INVOICE_ID,',
'                                         INVOICE_LINE_NUM,',
'                                         INVOICE_DISTRIBUTION_ID,',
'                                         JE_HEADER_ID,',
'                                         INVENTORY_TRX_ID,',
'                                         INV_ACTUAL_COST,',
'                                         INV_QUANTITY,',
'                                         INV_TRX_NUMBER,',
'                                         INV_DESC,',
'                                         INV_TRX_TYPE,',
'                                         INV_SOURCE_NAME,',
'                                         AR_TRX_NUMBER,',
'                                         AR_UNIT_PRICE,',
'                                         AR_UNIT_QUANTITY,',
'                                         AR_TOTAL_AMOUNT,',
'                                         AR_MISC_TRX_ID,',
'                                         AR_MISC_STATUS,',
'                                         AR_MISC_COMMENT,',
'                                         FA_DEPRN_AMOUNT,',
'                                         FA_ASSET_ID,',
'                                         FA_DISTRIBUTION_ID,',
'                                         FA_INVOICE_ID,',
'                                         FA_ITEM_DESC,',
'                                         OPM_ADJ_ID,',
'                                         OPM_ADJUST_QTY,',
'                                         OPM_ADJUST_COST,',
'                                         OPM_COST_TYPE_ID,',
'                                         OPM_DESCRIPTION,',
'                                         OPM_ITEM,',
'                                         OPM_PERIOD,',
'                                         LAST_SYNCHRONIZED,',
'                                         DEPT_NAME_SYNC,',
'                                         STAGE_ID_SYNC,',
'                                         SYNC_STATUS)',
'            SELECT base.company,',
'                   base.source,',
'                   base.source_status,',
'                   base.activity,',
'                   base.commitment,',
'                   base.actual_amount,',
'                   base.period,',
'                   base.pr_quantity,',
'                   base.po_quantity,',
'                   base.receipt_quantity,',
'                   base.invoiced_quantity,',
'                   base.pr_commitment,',
'                   base.po_commitment,',
'                   base.rcv_actual,',
'                   base.invoice_actual,',
'                   base.gl_manual_actual,',
'                   base.ar_invoice_actual,',
'                   base.ar_misc_actual,',
'                   base.inventory_actual,',
'                   base.pr_number,',
'                   base.po_number,',
'                   base.rcv_number,',
'                   base.invoice_number,',
'                   base.inventory_number,',
'                   base.journal_name,',
'                   base.journal_batch,',
'                   base.journal_line_desc,',
'                   base.ar_invoice_num,',
'                   base.ar_misc_receipt,',
'                   base.req_header_id,',
'                   base.req_line_id,',
'                   base.req_distribution_id,',
'                   base.po_header_id,',
'                   base.po_line_id,',
'                   base.po_distribution_id,',
'                   base.po_status,',
'                   base.rcv_id,',
'                   base.transaction_id,',
'                   base.invoice_id,',
'                   base.invoice_line_num,',
'                   base.invoice_distribution_id,',
'                   base.je_header_id,',
'                   base.inventory_trx_id,',
'                   base.inv_actual_cost,',
'                   base.inv_quantity,',
'                   base.inv_trx_number,',
'                   base.inv_desc,',
'                   base.inv_trx_type,',
'                   base.inv_source_name,',
'                   base.ar_trx_number,',
'                   base.ar_unit_price,',
'                   base.ar_unit_quantity,',
'                   base.ar_total_amount,',
'                   base.ar_misc_trx_id,',
'                   base.ar_misc_status,',
'                   base.ar_misc_comment,',
'                   base.fa_deprn_amount,',
'                   base.fa_asset_id,',
'                   base.fa_distribution_id,',
'                   base.fa_invoice_id,',
'                   base.fa_item_desc,',
'                   base.opm_adj_id,',
'                   base.opm_adjust_qty,',
'                   base.opm_adjust_cost,',
'                   base.opm_cost_type_id,',
'                   base.opm_description,',
'                   base.opm_item,',
'                   base.opm_period,',
'                   SYSTIMESTAMP,',
'                   base.dept_name_sync,',
'                   base.id,',
'                   ''Done''',
'              FROM APX_BF_COMM_ACT_AMT_STG base',
'             WHERE     base.dept_name_sync = v_dept_name',
'                   AND SUBSTR (base.PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        v_count := SQL%ROWCOUNT;',
'        apex_debug.MESSAGE (''Step 5: Inserted into MAIN: %s row(s)'', v_count);',
'',
'        IF v_count = 0',
'        THEN',
'            apex_debug.MESSAGE (',
'                ''Step 5 WARNING: No data inserted into main for dept=%s period=%s'',',
'                v_dept_name,',
'                v_year_value);',
'        END IF;',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 5 ERROR: Insert into main failed: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    -------------------------------------------------------------------------',
'    -- STEP 6: Update staging to ''Done''',
'    -------------------------------------------------------------------------',
'    BEGIN',
'        UPDATE APX_BF_COMM_ACT_AMT_STG',
'           SET SYNC_STATUS = ''Done''',
'         WHERE     DEPT_NAME_SYNC = v_dept_name',
'               AND SUBSTR (PERIOD, -2) = SUBSTR (v_year_value, -2);',
'',
'        apex_debug.MESSAGE (''Step 6: Updated staging to Done: %s row(s)'',',
'                            SQL%ROWCOUNT);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            apex_debug.MESSAGE (''Step 6: Error updating staging status: %s'',',
'                                SQLERRM);',
'            RAISE;',
'    END;',
'',
'    COMMIT;',
'    apex_debug.MESSAGE (',
'        ''Synchronization completed successfully for dept=%s, period=%s'',',
'        v_dept_name,',
'        v_year_value);',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        ROLLBACK;',
'        apex_debug.MESSAGE (''Unexpected error: %s'', SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Refresh not succcessful'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14251644029571916)
,p_process_success_message=>'Refresh Done'
,p_internal_uid=>2347234239986129
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29721337638134420)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Value Total Budget'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'     TO_CHAR(SUM(REST.FINAL_AMOUNT), ''999G999G999G999G999'') AS FORMATTED_DEBET',
'           INTO',
'           :P7_SUM_ORIGINAL_AMOUNT_VALUE',
'      FROM APX_BF_BUDGET_MONITOR_LNS REST',
'    --   LEFT JOIN APX_BF_DELTA_COMM_ACT_AMT_V CA',
'      LEFT JOIN APX_BF_COMM_ACT_SUM_V CA ',
'        ON REST.ACTIVITY = CA.ACTIVITY',
'       AND REST.PERIOD   = SUBSTR(CA.PERIOD, 1, 3) || ''-26''',
'    WHERE REST.HEADER_ID = :P7_HEADER_ID;',
'',
'    EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>8020713524627718
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14251981340571919)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Sync Time'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT ',
'        NVL2(MAX(LAST_SYNCHRONIZED),',
'             TO_CHAR(MAX(LAST_SYNCHRONIZED), ''DD-MON-YYYY HH24:MI:SS'') || '' WIB'',',
'             NULL) AS LAST_SYNC_TIME',
'    INTO :P7_LAST_SYNC_TIME',
'    FROM APX_BF_COMM_ACT_AMT',
'    WHERE DEPT_NAME_SYNC = (',
'              SELECT DEPT_NAME',
'              FROM APX_BF_BUDGET_MONITOR_HDR',
'              WHERE ID = :P7_HEADER_ID',
'          )',
'      AND SUBSTR(PERIOD, -2) = SUBSTR((SELECT ',
'                                YEAR',
'                            FROM ',
'                                APX_BF_BUDGET_MONITOR_HDR',
'                            WHERE',
'                                ID = :P7_HEADER_ID), -2)',
'      AND STAGE_ID_SYNC IS NOT NULL;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P7_LAST_SYNC_TIME := NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>2347137966986128
);
wwv_flow_imp.component_end;
end;
/
