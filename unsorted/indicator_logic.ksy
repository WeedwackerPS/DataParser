types:
  indicator_logic:
    seq:
      - id: bit_field
        type: u1
      - id: i_operator
        type: enum__indicator_operator
        if: has_field_i_operator
      - id: i_conditions
        type: array_of__disp__indicator_condition__length_u
        if: has_field_i_conditions
    instances:
      has_field_i_operator: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_i_conditions: # Field №1
        value: (bit_field & 0b10) != 0
