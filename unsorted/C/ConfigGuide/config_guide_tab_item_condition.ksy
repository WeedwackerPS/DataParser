types:
  config_guide_tab_item_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: path
        type: aux_types::string
        if: has_field_path
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
      - id: page_type
        type: enum__guide_page_type
        if: has_field_page_type
      - id: is_select
        type: u1
        if: has_field_is_select
    instances:
      has_field_path: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_context_name: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_value: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_page_type: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_is_select: # Field №4
        value: (bit_field & 0b10000) != 0
