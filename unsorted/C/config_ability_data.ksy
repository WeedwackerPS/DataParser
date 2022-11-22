types:
  config_ability_data:
    seq:
      - id: bit_field
        type: u1
      - id: color_tag
        type: aux_types::string
        if: has_field_color_tag
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: msg
        type: aux_types::string
        if: has_field_msg
    instances:
      has_field_color_tag: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_msg: # Field №2
        value: (bit_field & 0b100) != 0
