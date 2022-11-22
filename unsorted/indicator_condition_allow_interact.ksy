types:
  indicator_condition_allow_interact:
    seq:
      - id: base
        type: indicator_condition
      - id: bit_field
        type: u1
      - id: allow_interact
        type: u1
        if: has_field_allow_interact
    instances:
      has_field_allow_interact: # Field №0
        value: (bit_field & 0b1) != 0
