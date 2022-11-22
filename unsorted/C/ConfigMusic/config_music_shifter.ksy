types:
  config_music_shifter:
    seq:
      - id: bit_field
        type: u1
      - id: target_song_id
        type: aux_types::vlq_base128_le_s
        if: has_field_target_song_id
      - id: root_condition_id
        type: aux_types::vlq_base128_le_s
        if: has_field_root_condition_id
    instances:
      has_field_target_song_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_root_condition_id: # Field №1
        value: (bit_field & 0b10) != 0
