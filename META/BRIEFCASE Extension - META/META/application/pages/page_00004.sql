prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.5'
,p_default_workspace_id=>1389747021320061
,p_default_application_id=>107
,p_default_id_offset=>776066518237927778
,p_default_owner=>'EXT'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'View Budget Entry TBL'
,p_alias=>'VIEW-BUDGET-ENTRY-TBL'
,p_step_title=>'View Budget Entry TBL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'CHESAR.BUDIPRAKOSO@LIMAMAIL.NET'
,p_last_upd_yyyymmddhh24miss=>'20250731104838'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1512487451020178779)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1512217835781912044)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(1512102224192911700)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(1512280299297912149)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1512488147476178781)
,p_plug_name=>'View Budget Entry TBL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1512195688984912037)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HDR_ID,',
'       BATCH_NO,',
'       VERSION_NO,',
'       COMPANY_NAME,',
'       YEAR,',
'       DEPT_NAME,',
'       BUDGET_TYPE,',
'       AMOUNT_TYPE,',
'       STATUS,',
'       FILE_NAME,',
'       REJECT_NOTES,',
'       HDR_CREATED_DATE,',
'       HDR_CREATED_BY,',
'       HDR_UPDATED_DATE,',
'       HDR_UPDATED_BY,',
'       LEDGER_ID,',
'       CHART_OF_ACCOUNTS_ID,',
'       SEGMENT_ACCOUNT,',
'       HDR_COST_CENTER,',
'       SHORT_NAME,',
'       BUDGET_COMPILE_ID,',
'       SOURCE,',
'       LNS_ID,',
'       HEADER_ID,',
'       BUDGET_CATEGORY,',
'       ACTIVITY,',
'       COA,',
'       COA_DESC,',
'       LOCATION,',
'       PRODUCT,',
'       UOM,',
'       QUANTITY,',
'       PRICE,',
'       TOTAL,',
'       PERIOD,',
'       LNS_REJECT_NOTES,',
'       LNS_CREATED_DATE,',
'       LNS_CREATED_BY,',
'       LNS_UPDATED_DATE,',
'       LNS_UPDATED_BY,',
'       LINE_DESCRIPTION,',
'       LNS_COST_CENTER,',
'       LINE_SOURCE,',
'       FILENAME_BATCH,',
'       STATUS_BATCH,',
'       FLAG_BATCH,',
'       BATCH_ID',
'  from APX_BUDGET_ENTRY_FULL_TBL',
'  where BATCH_ID = :P4_BATCH_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'View Budget Entry TBL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1512488328665178781)
,p_name=>'View Budget Entry TBL'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CHESAR.BUDIPRAKOSO@LIMAMAIL.NET'
,p_internal_uid=>143086299211227211
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512488694814178786)
,p_db_column_name=>'HDR_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Hdr Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512489013201178786)
,p_db_column_name=>'BATCH_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Batch No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512489417754178787)
,p_db_column_name=>'VERSION_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Version No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512489775616178787)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512490148663178787)
,p_db_column_name=>'YEAR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512490579331178788)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512490968028178788)
,p_db_column_name=>'BUDGET_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Budget Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512491399321178789)
,p_db_column_name=>'AMOUNT_TYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Amount Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512491800964178789)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512492176559178789)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512492559555178789)
,p_db_column_name=>'REJECT_NOTES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Reject Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512492997164178790)
,p_db_column_name=>'HDR_CREATED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Hdr Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512493335857178790)
,p_db_column_name=>'HDR_CREATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Hdr Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512493817737178790)
,p_db_column_name=>'HDR_UPDATED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Hdr Updated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512494183851178791)
,p_db_column_name=>'HDR_UPDATED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Hdr Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512494620896178791)
,p_db_column_name=>'LEDGER_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Ledger Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512494965547178791)
,p_db_column_name=>'CHART_OF_ACCOUNTS_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Chart Of Accounts Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512495424911178792)
,p_db_column_name=>'SEGMENT_ACCOUNT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Segment Account'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512495777114178792)
,p_db_column_name=>'HDR_COST_CENTER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Hdr Cost Center'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512496208101178792)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512496567638178793)
,p_db_column_name=>'BUDGET_COMPILE_ID'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Budget Compile Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512496976046178793)
,p_db_column_name=>'SOURCE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512497377512178793)
,p_db_column_name=>'LNS_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Lns Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512497826170178794)
,p_db_column_name=>'HEADER_ID'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Header Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512498132039178794)
,p_db_column_name=>'BUDGET_CATEGORY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Budget Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512498605901178794)
,p_db_column_name=>'ACTIVITY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512499004291178795)
,p_db_column_name=>'COA'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Coa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512499406761178795)
,p_db_column_name=>'COA_DESC'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Coa Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512499743912178795)
,p_db_column_name=>'LOCATION'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512500201062178796)
,p_db_column_name=>'PRODUCT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512500534936178796)
,p_db_column_name=>'UOM'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Uom'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512500952795178796)
,p_db_column_name=>'QUANTITY'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512501348993178797)
,p_db_column_name=>'PRICE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512501807489178797)
,p_db_column_name=>'TOTAL'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512502159915178798)
,p_db_column_name=>'PERIOD'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512502598813178798)
,p_db_column_name=>'LNS_REJECT_NOTES'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Lns Reject Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512502957921178798)
,p_db_column_name=>'LNS_CREATED_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Lns Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512503371639178799)
,p_db_column_name=>'LNS_CREATED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Lns Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512503763656178799)
,p_db_column_name=>'LNS_UPDATED_DATE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Lns Updated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512504152546178799)
,p_db_column_name=>'LNS_UPDATED_BY'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Lns Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512504590941178800)
,p_db_column_name=>'LINE_DESCRIPTION'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Line Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512504933254178800)
,p_db_column_name=>'LNS_COST_CENTER'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Lns Cost Center'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512505360403178800)
,p_db_column_name=>'LINE_SOURCE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Line Source'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512505794449178800)
,p_db_column_name=>'FILENAME_BATCH'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Filename Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512506137266178801)
,p_db_column_name=>'STATUS_BATCH'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Status Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512506549654178801)
,p_db_column_name=>'FLAG_BATCH'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Flag Batch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1512507005377178802)
,p_db_column_name=>'BATCH_ID'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Batch Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1369405442890977884)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5933390'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'HDR_ID:BATCH_NO:VERSION_NO:COMPANY_NAME:YEAR:DEPT_NAME:BUDGET_TYPE:AMOUNT_TYPE:STATUS:FILE_NAME:REJECT_NOTES:HDR_CREATED_DATE:HDR_CREATED_BY:HDR_UPDATED_DATE:HDR_UPDATED_BY:LEDGER_ID:CHART_OF_ACCOUNTS_ID:SEGMENT_ACCOUNT:HDR_COST_CENTER:SHORT_NAME:BUD'
||'GET_COMPILE_ID:SOURCE:LNS_ID:HEADER_ID:BUDGET_CATEGORY:ACTIVITY:COA:COA_DESC:LOCATION:PRODUCT:UOM:QUANTITY:PRICE:TOTAL:PERIOD:LNS_REJECT_NOTES:LNS_CREATED_DATE:LNS_CREATED_BY:LNS_UPDATED_DATE:LNS_UPDATED_BY:LINE_DESCRIPTION:LNS_COST_CENTER:LINE_SOURC'
||'E:FILENAME_BATCH:STATUS_BATCH:FLAG_BATCH:BATCH_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1512434852482000203)
,p_name=>'P4_FILENAME'
,p_item_sequence=>10
,p_prompt=>'Filename Upload'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(1512276161722912126)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1512434995793000204)
,p_name=>'P4_BATCH_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
