types:
  quest_content_ex:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__quest_content_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
      - id: count
        type: aux_types::vlq_base128_le_u
        if: has_field_count
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_count: # Field №2
        value: (bit_field & 0b100) != 0
