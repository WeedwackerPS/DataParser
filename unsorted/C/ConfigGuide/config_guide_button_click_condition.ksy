types:
  config_guide_button_click_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: button_path
        type: aux_types::string
        if: has_field_button_path
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: page_type
        type: enum__guide_page_type
        if: has_field_page_type
      - id: type
        type: enum__guide_button_click
        if: has_field_type
      - id: value
        type: f4
        if: has_field_value
      - id: special
        type: enum__guide_widget_special_type
        if: has_field_special
      - id: special_index
        type: aux_types::vlq_base128_le_s
        if: has_field_special_index
    instances:
      has_field_button_path: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_context_name: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_page_type: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_type: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_value: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_special: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_special_index: # Field №6
        value: (bit_field & 0b1000000) != 0
