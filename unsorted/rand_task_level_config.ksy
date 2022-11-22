types:
  rand_task_level_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: min_zone_level
        type: aux_types::vlq_base128_le_u
        if: has_field_min_zone_level
      - id: max_zone_level
        type: aux_types::vlq_base128_le_u
        if: has_field_max_zone_level
      - id: revise_level
        type: aux_types::vlq_base128_le_u
        if: has_field_revise_level
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_min_zone_level: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_max_zone_level: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_revise_level: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
