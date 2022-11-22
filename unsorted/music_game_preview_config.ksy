types:
  music_game_preview_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: music_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_music_id_list
    instances:
      has_field_activity_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_music_id_list: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
