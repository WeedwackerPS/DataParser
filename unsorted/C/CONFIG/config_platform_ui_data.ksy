types:
  config_platform_ui_data:
    seq:
      - id: bit_field
        type: u1
      - id: base_canvans_action
        type: config_platform_ui_action
        if: has_field_base_canvans_action
      - id: base_page_action
        type: config_platform_ui_action
        if: has_field_base_page_action
      - id: context_actions
        type: dict_of__aux_types__string_config_platform_ui_action
        if: has_field_context_actions
    instances:
      has_field_base_canvans_action: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_base_page_action: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_context_actions: # Field №2
        value: (bit_field & 0b100) != 0
