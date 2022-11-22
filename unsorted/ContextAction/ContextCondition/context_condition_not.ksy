types:
  context_condition_not:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: condition
        type: disp__context_condition
        if: has_field_condition
    instances:
      has_field_condition: # Field №0
        value: (bit_field & 0b1) != 0
