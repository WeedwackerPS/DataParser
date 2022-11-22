types:
  config_keyboard_layout_item:
    seq:
      - id: bit_field
        type: u1
      - id: key_code_friendly_name
        type: dict_of__enum__config_key_code_aux_types__string
        if: has_field_key_code_friendly_name
    instances:
      has_field_key_code_friendly_name: # Field №0
        value: (bit_field & 0b1) != 0
