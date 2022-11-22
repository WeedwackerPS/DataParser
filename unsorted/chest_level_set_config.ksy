types:
  chest_level_set_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: zone_min_level
        type: aux_types::vlq_base128_le_u
        if: has_field_zone_min_level
      - id: chest_level
        type: aux_types::vlq_base128_le_u
        if: has_field_chest_level
    instances:
      has_field_zone_min_level: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_chest_level: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
