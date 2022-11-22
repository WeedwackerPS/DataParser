types:
  config_guide_can_get_personal_line_key_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: value
        type: u1
        if: has_field_value
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b1) != 0
