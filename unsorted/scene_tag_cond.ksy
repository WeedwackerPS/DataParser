types:
  scene_tag_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: cond_type
        type: enum__scene_tag_cond_type
        if: has_field_cond_type
      - id: param1
        type: aux_types::vlq_base128_le_s
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_s
        if: has_field_param2
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
