prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>3032592141610074476
,p_default_application_id=>28888
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AHMADTECH'
);
end;
/
 
prompt APPLICATION 28888 - Plug-IN Palace
--
-- Application Export:
--   Application:     28888
--   Name:            Plug-IN Palace
--   Date and Time:   19:18 Tuesday August 6, 2024
--   Exported By:     FAROOQ.ORACLE47@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 8151464257063096400
--   Manifest End
--   Version:         24.1.2
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/blur_un_blur
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(8151464257063096400)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'BLUR_UN_BLUR'
,p_display_name=>'BLUR UN BLUR'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <style>',
'        .blur-text {',
'            font-size: #FONT_SIZE#px;',
'            filter: blur(5px);',
'            transition: filter 0.3s ease, color 0.3s ease, transform 0.3s ease;',
'            color: #OUTER_COLOR#; ',
'        }',
'        .blur-text:hover {',
'            filter: blur(0);',
'            color: #INNER_COLOR#;            ',
'        }',
'    </style>',
'</head>',
'<body>',
'    <div class="blur-text" id="text">',
'        #BLUR_TEXT#',
'    </div>',
'',
'    <script>',
'        document.addEventListener(''DOMContentLoaded'', () => {',
'            const textElement = document.getElementById(''text'');',
'',
'            textElement.addEventListener(''mouseover'', () => {',
'                textElement.style.filter = ''blur(0)'';',
'            });',
'',
'            textElement.addEventListener(''mouseout'', () => {',
'                textElement.style.filter = ''blur(5px)'';',
'            });',
'        });',
'    </script>',
'</body>',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15551409519903
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(8151464544055096421)
,p_plugin_id=>wwv_flow_imp.id(8151464257063096400)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'BLUR_TEXT'
,p_prompt=>'Blur Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(8151464928321096422)
,p_plugin_id=>wwv_flow_imp.id(8151464257063096400)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'INNER_COLOR'
,p_prompt=>'Inner Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(8151465352793096422)
,p_plugin_id=>wwv_flow_imp.id(8151464257063096400)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'OUTER_COLOR'
,p_prompt=>'Outer Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(22705094666719893951)
,p_plugin_id=>wwv_flow_imp.id(8151464257063096400)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'FONT_SIZE'
,p_prompt=>'Font Size'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_default_value=>'10'
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
