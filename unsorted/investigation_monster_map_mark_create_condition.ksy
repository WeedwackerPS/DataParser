types:
  investigation_monster_map_mark_create_condition:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: condition_type
        type: enum__investigation_monster_map_mark_create_condition_type
        if: has_field_condition_type
      - id: condition_param
        type: aux_types::vlq_base128_le_u
        if: has_field_condition_param
    instances:
      has_field_condition_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_condition_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
