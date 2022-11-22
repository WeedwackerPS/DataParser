types:
  config_input_hint:
    seq:
      - id: bit_field
        type: u1
      - id: hint_info
        type: aux_types::string
        if: has_field_hint_info
      - id: action_info_list
        type: array_of__enum__input_action_type__length_u
        if: has_field_action_info_list
    instances:
      has_field_hint_info: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_action_info_list: # Field №1
        value: (bit_field & 0b10) != 0
