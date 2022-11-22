types:
  config_guide_avatar_state_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: state
        type: enum__guide_avatar_state
        if: has_field_state
    instances:
      has_field_state: # Field №0
        value: (bit_field & 0b1) != 0
