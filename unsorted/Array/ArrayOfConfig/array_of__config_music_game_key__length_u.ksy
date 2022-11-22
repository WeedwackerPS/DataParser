types:
  array_of__config_music_game_key__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_music_game_key
        repeat: expr
        repeat-expr: length.value
