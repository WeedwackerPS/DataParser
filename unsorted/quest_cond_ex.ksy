types:
  quest_cond_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__quest_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
