types:
  targetting_option:
    seq:
      - id: bit_field
        type: u1
      - id: range
        type: aux_types::dynamic_float
        if: has_field_range
    instances:
      has_field_range: # Field №0
        value: (bit_field & 0b1) != 0
