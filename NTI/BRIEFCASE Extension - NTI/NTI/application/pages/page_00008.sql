prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'View MA Briefcase'
,p_alias=>'VIEW-MA-BRIEFCASE'
,p_step_title=>'View MA Briefcase'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#company_col,',
'#year_col,',
'#cost_center_col,',
'#batch_num_col,',
'#version_col,',
'#department_col,',
'#budget_type_col,',
'#budget_category_col,',
'#task_col,',
'#coa_col,',
'#activity_col,',
'#product_col,',
'#description_col,',
'#qty_col,',
'#uom_col,',
'#price_uom_col,',
'#original_amount_col,',
'#final_amount_col,',
'#location_col,',
'#period_col {',
'    font-size: 14px;',
'    /* font-weight: 1000; */',
'    font-weight: bold;',
'}',
'',
'',
'#P8_YEAR_TEXT_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P8_YEAR_TEXT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P8_YEAR{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}',
'',
'/* ----------------------------------------------------------------------- */',
'',
'#P8_PERIOD_TEXT_DISPLAY{',
'    font-weight: bold;',
'    border-style: double;',
'}',
'',
'#P8_PERIOD_TEXT_LABEL{',
'    position: relative;',
'    display: flex;',
'    padding-top: 20px;',
'    font-size: 16px;',
'    font-weight: bold;',
'    color: #000000;',
'    border-style: inherit;',
'}',
'',
'#P8_PERIOD{',
'    padding-top: 17px;',
'    padding-bottom: 17px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28016621187777533)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(762619250600988102)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(619925254532163355)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(762695407549988140)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(762579795960987796)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(762757871065988245)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(772099504345523018)
,p_plug_name=>'List Detail Marketing'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>90
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(619888635925120018)
,p_plug_name=>'View MA Briefcase'
,p_region_name=>'view_budget_marketing'
,p_parent_plug_id=>wwv_flow_imp.id(772099504345523018)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(762683059047988136)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM APPS.XTD_BRF_BUDGET_MKT_V',
'WHERE (:P8_PERIOD IS NULL OR PERIOD = :P8_PERIOD)',
'AND (:P8_YEAR IS NULL OR YEAR = :P8_YEAR)',
'-- WHERE period = NVL(:P8_PERIOD, ''All'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(26615355698248921)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CHESAR'
,p_internal_uid=>7692147706159001
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26615454211248922)
,p_db_column_name=>'COMPANY'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Company'
,p_column_type=>'STRING'
,p_static_id=>'company_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26615557443248923)
,p_db_column_name=>'YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_static_id=>'year_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26615671341248924)
,p_db_column_name=>'COST_CENTER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cost Center'
,p_column_type=>'STRING'
,p_static_id=>'cost_center_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26615945800248927)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_static_id=>'department_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616058186248928)
,p_db_column_name=>'BUDGET_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Budget Type'
,p_column_type=>'STRING'
,p_static_id=>'budget_type_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616110165248929)
,p_db_column_name=>'BUDGET_CATEGORY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Budget Category'
,p_column_type=>'STRING'
,p_static_id=>'budget_category_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28016904966777535)
,p_db_column_name=>'COA'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'CoA'
,p_column_type=>'STRING'
,p_static_id=>'coa_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28016941165777536)
,p_db_column_name=>'ACTIVITY'
,p_display_order=>110
,p_column_identifier=>'U'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
,p_static_id=>'activity_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616446521248932)
,p_db_column_name=>'PRODUCT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_static_id=>'product_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616600343248933)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_static_id=>'description_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616629706248934)
,p_db_column_name=>'QTY'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FM999G999G999G999G999'
,p_static_id=>'qty_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616743436248935)
,p_db_column_name=>'UOM'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'UoM'
,p_column_type=>'STRING'
,p_static_id=>'uom_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616877277248936)
,p_db_column_name=>'PRICE_UOM'
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>'Price/UoM'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FM999G999G999G999G999'
,p_static_id=>'price_uom_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26616983786248937)
,p_db_column_name=>'ORIGINAL_AMOUNT'
,p_display_order=>180
,p_column_identifier=>'P'
,p_column_label=>'Original Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FM999G999G999G999G999'
,p_static_id=>'original_amount_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26617266694248940)
,p_db_column_name=>'FINAL_AMOUNT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Final Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FM999G999G999G999G999'
,p_static_id=>'final_amount_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26617020276248938)
,p_db_column_name=>'LOCATION'
,p_display_order=>200
,p_column_identifier=>'Q'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_static_id=>'location_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19087004037259222)
,p_db_column_name=>'PERIOD'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_static_id=>'period_col'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26627168205207025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'77040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPANY:YEAR:COST_CENTER:DEPARTMENT:BUDGET_TYPE:BUDGET_CATEGORY:COA:ACTIVITY:PRODUCT:DESCRIPTION:QTY:UOM:PRICE_UOM:ORIGINAL_AMOUNT:LOCATION:FINAL_AMOUNT:PERIOD:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(619888786528120019)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(28016621187777533)
,p_button_name=>'Find'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(762756307229988239)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(619888278351120014)
,p_name=>'P8_PERIOD_TEXT'
,p_item_sequence=>10
,p_prompt=>'Period'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(619888314746120015)
,p_name=>'P8_YEAR_TEXT'
,p_item_sequence=>40
,p_prompt=>'Year'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(619888447421120016)
,p_name=>'P8_PERIOD'
,p_item_sequence=>20
,p_placeholder=>'--Select Period.--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select distinct period from APPS.XTD_BRF_BUDGET_MKT_V'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Clear --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(619888524513120017)
,p_name=>'P8_YEAR'
,p_item_sequence=>50
,p_placeholder=>'--Select Year.--'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select distinct year from APPS.XTD_BRF_BUDGET_MKT_V'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Clear --'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(762753733490988222)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp.component_end;
end;
/
