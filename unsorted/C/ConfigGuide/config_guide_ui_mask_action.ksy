types:
  config_guide_ui_mask_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: widget_list
        type: array_of__config_guide_widget_content__length_u
        if: has_field_widget_list
      - id: top_info
        type: aux_types::string
        if: has_field_top_info
      - id: prefab_list
        type: array_of__aux_types__string__length_u
        if: has_field_prefab_list
      - id: click_to_close
        type: u1
        if: has_field_click_to_close
      - id: context_list_type
        type: enum__config_guide_context_list_type
        if: has_field_context_list_type
    instances:
      has_field_widget_list: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_top_info: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_prefab_list: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_click_to_close: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_context_list_type: # Field №4
        value: (bit_field & 0b10000) != 0
