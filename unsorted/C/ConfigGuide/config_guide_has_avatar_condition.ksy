types:
  config_guide_has_avatar_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: type
        type: enum__guide_has_avatar_type
        if: has_field_type
      - id: con_type
        type: enum__guide_has_avatar_con_type
        if: has_field_con_type
      - id: value
        type: f4
        if: has_field_value
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_con_type: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_value: # Field №2
        value: (bit_field & 0b100) != 0
