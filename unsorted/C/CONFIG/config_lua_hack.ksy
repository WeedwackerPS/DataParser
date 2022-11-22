types:
  config_lua_hack:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: ui_lua_script_path
        type: aux_types::string
        if: has_field_ui_lua_script_path
      - id: enable_lua_patch
        type: u1
        if: has_field_enable_lua_patch
      - id: enable_all_context_lua_patch
        type: u1
        if: has_field_enable_all_context_lua_patch
      - id: ui_lua_patch_context_startup_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_startup_list
      - id: ui_lua_patch_context_setup_view_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_setup_view_list
      - id: ui_lua_patch_context_post_setup_view_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_post_setup_view_list
      - id: ui_lua_patch_context_set_active_enabled_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_set_active_enabled_list
      - id: ui_lua_patch_context_set_active_disabled_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_set_active_disabled_list
      - id: ui_lua_patch_context_destroy_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_destroy_list
      - id: ui_lua_patch_context_destroy_force_list
        type: array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_destroy_force_list
      - id: ui_lua_patch_context_button_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_button_map
      - id: ui_lua_patch_context_input_field_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_input_field_map
      - id: ui_lua_patch_context_drowdown_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_drowdown_map
      - id: ui_lua_patch_context_toggle_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_toggle_map
      - id: ui_lua_patch_context_slider_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_slider_map
      - id: ui_lua_patch_context_panel_map
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_ui_lua_patch_context_panel_map
    instances:
      has_field_ui_lua_script_path: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_enable_lua_patch: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_enable_all_context_lua_patch: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_ui_lua_patch_context_startup_list: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_ui_lua_patch_context_setup_view_list: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_ui_lua_patch_context_post_setup_view_list: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_ui_lua_patch_context_set_active_enabled_list: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_ui_lua_patch_context_set_active_disabled_list: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_ui_lua_patch_context_destroy_list: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_ui_lua_patch_context_destroy_force_list: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_ui_lua_patch_context_button_map: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_ui_lua_patch_context_input_field_map: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_ui_lua_patch_context_drowdown_map: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_ui_lua_patch_context_toggle_map: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_ui_lua_patch_context_slider_map: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_ui_lua_patch_context_panel_map: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
