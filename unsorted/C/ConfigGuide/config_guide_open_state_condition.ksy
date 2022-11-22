types:
  config_guide_open_state_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: open_state
        type: enum__guide_open_state_type
        if: has_field_open_state
      - id: value
        type: u1
        if: has_field_value
    instances:
      has_field_open_state: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
