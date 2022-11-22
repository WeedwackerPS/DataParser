types:
  config_guide_open_ui_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: enable
        type: u1
        if: has_field_enable
      - id: active_list
        type: array_of__aux_types__string__length_u
        if: has_field_active_list
      - id: page_type
        type: enum__guide_page_type
        if: has_field_page_type
    instances:
      has_field_context_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_enable: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_active_list: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_page_type: # Field №3
        value: (bit_field & 0b1000) != 0
