types:
  config_main_page_disable_info:
    seq:
      - id: bit_field
        type: u1
      - id: ui_disable_list
        type: array_of__enum__main_page_ui_disable_type__length_u
        if: has_field_ui_disable_list
      - id: enabled_input_event_list
        type: array_of__enum__input_event_type__length_u
        if: has_field_enabled_input_event_list
    instances:
      has_field_ui_disable_list: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_enabled_input_event_list: # Field №1
        value: (bit_field & 0b10) != 0
