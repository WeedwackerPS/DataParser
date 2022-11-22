types:
  animator_parameters:
    seq:
      - id: bit_field
        type: u1
      - id: floats
        type: array_of__animator_float__length_u
        if: has_field_floats
      - id: ints
        type: array_of__animator_int__length_u
        if: has_field_ints
      - id: bools
        type: array_of__animator_bool__length_u
        if: has_field_bools
      - id: triggers
        type: array_of__animator_trigger__length_u
        if: has_field_triggers
    instances:
      has_field_floats: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_ints: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_bools: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_triggers: # Field №3
        value: (bit_field & 0b1000) != 0
