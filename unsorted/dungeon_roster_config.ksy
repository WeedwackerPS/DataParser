types:
  dungeon_roster_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: open_time_str
        type: aux_types::string
        if: has_field_open_time_str
      - id: cycle_time
        type: aux_types::vlq_base128_le_u
        if: has_field_cycle_time
      - id: cycle_type
        type: enum__dungeon_roster_cycle_type
        if: has_field_cycle_type
      - id: roster_pool
        type: array_of__dungeon_list__length_s
        if: has_field_roster_pool
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_open_time_str: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_cycle_time: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_cycle_type: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_roster_pool: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
