types:
  context_condition_or:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: conditions
        type: array_of__disp__context_condition__length_u
        if: has_field_conditions
    instances:
      has_field_conditions: # Field №0
        value: (bit_field & 0b1) != 0
