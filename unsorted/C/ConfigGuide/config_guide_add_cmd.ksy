types:
  config_guide_add_cmd:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: cmd_type
        type: enum__guide_cmd_type
        if: has_field_cmd_type
      - id: para_value
        type: f4
        if: has_field_para_value
    instances:
      has_field_cmd_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_para_value: # Field №1
        value: (bit_field & 0b10) != 0
