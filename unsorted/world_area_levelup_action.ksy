types:
  world_area_levelup_action:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__world_area_levelup_action_type
        if: has_field_type
      - id: param1_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param1_vec
      - id: param2_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param2_vec
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param1_vec: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param2_vec: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
