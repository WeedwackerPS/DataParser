types:
  player_level_lock_excel_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: world_level
        type: aux_types::vlq_base128_le_u
        if: has_field_world_level
      - id: unlock_main_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_main_quest_id
      - id: unlock_player_level
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_player_level
      - id: player_level_upper_limit
        type: aux_types::vlq_base128_le_u
        if: has_field_player_level_upper_limit
      - id: unlock_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_desc
    instances:
      has_field_world_level: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_unlock_main_quest_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_unlock_player_level: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_player_level_upper_limit: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_unlock_desc: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
